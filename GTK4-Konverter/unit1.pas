unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, SynEdit, FileUtil, process;

type

  { TForm1 }

  TForm1 = class(TForm)
    Load: TButton;
    Convert: TButton;
    BtnCopy: TButton;
    BtnClose: TButton;
    SynEdit1: TSynEdit;
    SynEdit2: TSynEdit;
    procedure BtnCloseClick(Sender: TObject);
    procedure BtnCopyClick(Sender: TObject);
    procedure ConvertClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure LoadClick(Sender: TObject);
  private
    procedure DeletePos1(sl: TStringList; Source: string);
  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

const
  HeaderPath = '/usr/include/gtk-4.0';
  HeaderDespPath = '/n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header';

  //  ListPos1: TStringArray = ('GDK_AVAILABLE_IN_ALL', 'G_BEGIN_DECLS', 'G_END_DECLS', 'GDK_DEPRECATED_IN_4_6_FOR(','fdgfdggfdsg');
  ListPos1: TStringArray = ('GDK_AVAILABLE_IN_ALL', 'G_BEGIN_DECLS', 'G_END_DECLS', 'GDK_DEPRECATED_IN_4_6_FOR(gdk_gl_texture_new)', 'fdgfdggfdsg');

procedure TForm1.FormCreate(Sender: TObject);
begin
  Width := Screen.Width - 1800;
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

procedure TForm1.DeletePos1(sl: TStringList; Source: string);
var
  i: integer;
  p: SizeInt;
begin
  for i := 0 to sl.Count - 1 do begin
    p := pos(sl[i], Source);
    if pos(sl[i], Source) >= 1 then begin
      sl[i] := '';
      WriteLn(Source, '   ', p);
    end;
  end;
end;


procedure TForm1.BtnCopyClick(Sender: TObject);
var
  i, j: integer;
  sl: TStringList;
  path: string;
begin
  sl := TStringList.Create;
  for i := 0 to SynEdit1.Lines.Count - 1 do begin
    path := SynEdit1.Lines[i];
    sl.LoadFromFile(SynEdit1.Lines[i]);
    Delete(path, 1, Length(HeaderPath));
    path := HeaderDespPath + path;
    ForceDirectories(ExtractFileDir(path));
    for j := 0 to Length(ListPos1) - 1 do begin
      DeletePos1(sl, ListPos1[j]);
      //      WriteLn(ListPos1[j]);
    end;

    sl.SaveToFile(path);
  end;
  sl.Free;
end;

procedure TForm1.ConvertClick(Sender: TObject);
const
  READ_BYTES = 2048;
var
  myProcess: TProcess;
  ms: TMemoryStream;
  BytesRead, i, ec: integer;
  n: longint;
  slHeaderFiles: TStringList;

begin
  slHeaderFiles := FindAllFiles(HeaderDespPath, '*.h', True);
  for i := 0 to slHeaderFiles.Count - 1 do begin
    ms := TMemoryStream.Create;
    BytesRead := 0;
    myProcess := TProcess.Create(nil);
    //    myProcess.CommandLine := '/usr/bin/h2pas' + ' header/gdk/gdkcairo.h -i';
    myProcess.CommandLine := '/usr/bin/h2pas' + ' ' + slHeaderFiles[i] + ' -i';
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
    ec := myProcess.ExitCode;
    if ec <> 0 then begin
      WriteLn('Exit Code:', ec );
      WriteLn(slHeaderFiles[i]);
    end;
    SynEdit2.Lines.LoadFromStream(ms);

    myProcess.Free;
  end;

  slHeaderFiles.Free;
end;

procedure TForm1.BtnCloseClick(Sender: TObject);
begin
  Close;
end;

end.
