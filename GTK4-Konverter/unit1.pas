unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, SynEdit, FileUtil, process;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Load: TButton;
    Convert: TButton;
    BtnCopy: TButton;
    BtnClose: TButton;
    SynEdit1: TSynEdit;
    SynEdit2: TSynEdit;
    procedure BtnCloseClick(Sender: TObject);
    procedure BtnCopyClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ConvertClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure LoadClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

const
  HeaderPath = '/usr/include/gtk-4.0';
  HeaderDespPath = '/n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header';

procedure TForm1.FormCreate(Sender: TObject);
begin
  Width := Screen.Width - 1500;
  Left := 100;
  Height := Screen.Height - 100;
  SynEdit1.ReadOnly := True;
end;

procedure TForm1.LoadClick(Sender: TObject);
var
  slHeaderList: TStringList;
begin
  slHeaderList := FindAllFiles(HeaderPath, '*.h', True);

  SynEdit1.Lines := slHeaderList;

  slHeaderList.Free;
end;


procedure TForm1.BtnCopyClick(Sender: TObject);
var
  i: integer;
  sl: TStringList;
  path: string;

begin
  sl := TStringList.Create;
  for i := 0 to SynEdit1.Lines.Count - 1 do begin
    path := SynEdit1.Lines[i];
    sl.LoadFromFile(SynEdit1.Lines[i]);
    Delete(path, 1, Length(HeaderPath));
    path := HeaderDespPath + path;
    WriteLn(path);
    sl.SaveToFile(path);
  end;
  sl.Free;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  ForceDirectories('/home/tux/create_test');
  ForceDirectories('/home/tux/create_test/1/2/3');
//  CreateDir('/home/tux/create_test');
//  CreateDir('/home/tux/create_test/1/2/3');
  //  MkDir('/n4800/test/1/2/3');
end;

procedure TForm1.ConvertClick(Sender: TObject);
const
  READ_BYTES = 2048;
var
  myProcess: TProcess;
  ms: TMemoryStream;
  BytesRead: integer;
  n: longint;
begin
  ms := TMemoryStream.Create;
  BytesRead := 0;
  myProcess := TProcess.Create(nil);
  myProcess.CommandLine := '/usr/bin/h2pas';
  myProcess.Options := [poUsePipes, poStderrToOutPut];
  myProcess.Execute;
  while myProcess.Running do begin
    ms.SetSize(BytesRead + READ_BYTES);
    n := myProcess.Output.Read((ms.Memory + BytesRead)^, READ_BYTES);
    if n > 0 then begin
      Inc(BytesRead, n);
    end else begin
      Sleep(100);
    end;
  end;
  repeat
    ms.SetSize(BytesRead + READ_BYTES);
    n := myProcess.Output.Read((ms.Memory + BytesRead)^, READ_BYTES);
    Inc(BytesRead, n);
  until n <= 0;
  if BytesRead > 0 then begin
    //    WriteLn;
  end;
  WriteLn(myProcess.ExitCode);
  SynEdit2.Lines.LoadFromStream(ms);

  myProcess.Free;
end;

procedure TForm1.BtnCloseClick(Sender: TObject);
begin
  Close;
end;

end.
