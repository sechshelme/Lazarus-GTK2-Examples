unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  //  GTK4,
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, SynEdit, FileUtil, process;

type

  { TForm1 }

  TForm1 = class(TForm)
    BtnPPToPas: TButton;
    h2pas: TButton;
    BtnIncludeToTmp: TButton;
    BtnClose: TButton;
    SynEdit2: TSynEdit;
    procedure BtnCloseClick(Sender: TObject);
    procedure BtnPPToPasClick(Sender: TObject);
    procedure BtnIncludeToTmpClick(Sender: TObject);
    procedure h2pasClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure LoadClick(Sender: TObject);
  private
    var
      InterfaceIndex: integer;
      ImplementationIndex: integer;
    procedure DeletePos1(sl: TStringList; const Source: string);
    procedure DeleteSR(sl: TStringList; const Source: string);
  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

const
  HeaderPath = '/usr/include/gtk-4.0';
  //  HeaderDespPath = '/n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header';
  HeaderDespPath = '/tmp/GTK4-Konverter-header';

  //  HeaderMask = 'gtkb*.h';
  HeaderMask = '*.h';
  HeaderMask4 = '*.h';

  ListPos1: TStringArray = (
    'GDK_DECLARE_INTERNAL_TYPE',
    'GDK_AVAILABLE_IN_4_4',
    'GDK_AVAILABLE_IN_4_6',
    'G_DEFINE_AUTOPTR_CLEANUP_FUNC(',
    'G_DECLARE_INTERFACE',
    'G_DECLARE_FINAL_TYPE',
    'GDK_AVAILABLE_IN_ALL',
    'G_BEGIN_DECLS',
    'G_END_DECLS',
    'GDK_DEPRECATED_IN_4_6_FOR(gdk_gl_texture_new)',
    'G_DECLARE_DERIVABLE_TYPE',
    'GDK_AVAILABLE_IN_4_2');

  ListSR: TStringArray = (
    'G_STMT_START',
    'G_STMT_END',
    'G_UNLIKELY',
    'G_GNUC_MALLOC',

    'G_GNUC_PURE',
    'GTK_ACCESSIBLE',
    'G_GNUC_CONST',
    'G_GNUC_NULL_TERMINATED');

procedure TForm1.FormCreate(Sender: TObject);
begin
  Width := Screen.Width div 2;
  Left := 100;
  Height := Screen.Height - 100;
end;

procedure TForm1.DeletePos1(sl: TStringList; const Source: string);
var
  i: integer;
  p: SizeInt;
begin
  for i := 0 to sl.Count - 1 do begin
    p := pos(Source, sl[i]);
    if p >= 1 then begin
      sl[i] := '//// Zeile entfernt: ' + sl[i];
    end;
  end;
end;

procedure TForm1.DeleteSR(sl: TStringList; const Source: string);
var
  i: integer;
begin
  for i := 0 to sl.Count - 1 do begin
    sl[i] := StringReplace(sl[i], Source, '', []);
  end;
end;

procedure TForm1.LoadClick(Sender: TObject);
var
  slHeaderList: TStringList;
begin
  slHeaderList := FindAllFiles(HeaderPath, HeaderMask, True);
  //  SynEdit1.Lines := slHeaderList;
  slHeaderList.Free;
end;

procedure TForm1.BtnIncludeToTmpClick(Sender: TObject);
var
  i, j: integer;
  sl, slHeaderList: TStringList;
  path: string;


  function SlashPos(const s: string): integer;
  var
    l: SizeInt;
  begin
    l := Length(s);
    while (l > 1) and (s[l] <> '/') do begin
      Dec(l);
    end;
    Result := l;
  end;

begin
  slHeaderList := FindAllFiles(HeaderPath, HeaderMask, True);
  sl := TStringList.Create;
  for i := 0 to slHeaderList.Count - 1 do begin
    path := slHeaderList[i];
    sl.LoadFromFile(slHeaderList[i]);
    Delete(path, 1, Length(HeaderPath));
    path := HeaderDespPath + path;
    ForceDirectories(ExtractFileDir(path));
    for j := 0 to Length(ListPos1) - 1 do begin
      DeletePos1(sl, ListPos1[j]);
    end;

    for j := 0 to Length(ListSR) - 1 do begin
      DeleteSR(sl, ListSR[j]);
    end;

    Insert('4', path, SlashPos(path) + 4);
    WriteLn((path));

    sl.SaveToFile(path);
  end;
  slHeaderList.Free;
  sl.Free;
end;

procedure TForm1.h2pasClick(Sender: TObject);
const
  READ_BYTES = 2048;
var
  myProcess: TProcess;
  ms: TMemoryStream;
  BytesRead, i, ec: integer;
  n: longint;
  sl, slHeaderFiles: TStringList;

begin
  sl := TStringList.Create;
  SynEdit2.Lines.Clear;
  slHeaderFiles := FindAllFiles(HeaderDespPath, HeaderMask4, True);
  WriteLn(slHeaderFiles.Text);

  for i := 0 to slHeaderFiles.Count - 1 do begin
    ms := TMemoryStream.Create;
    BytesRead := 0;
    myProcess := TProcess.Create(nil);
    myProcess.CommandLine := '/usr/bin/h2pas' + ' ' + slHeaderFiles[i] + ' -p -t -S -d -c';
    //        myProcess.CommandLine := '/usr/bin/h2pas' + ' ' + slHeaderFiles[i] + ' -p -t -S -d -c';
    //    myProcess.CommandLine := '/usr/bin/h2pas' + ' ' + slHeaderFiles[i] + ' -p -T -S -d -c';
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
    //ec := myProcess.ExitCode;
    //if ec <> 0 then begin
    //  WriteLn('Exit Code:', ec);
    //  WriteLn(slHeaderFiles[i]);
    //end;

    sl.Clear;
    sl.LoadFromStream(ms);

    SynEdit2.Lines.Add('------- Title ----------------');
    SynEdit2.Lines.Add('File: ' + slHeaderFiles[i]);
    SynEdit2.Lines.Add('------------------------------');
    SynEdit2.Lines.AddStrings(sl);

    myProcess.Free;
  end;

  slHeaderFiles.Free;
  sl.Free;
end;

procedure TForm1.BtnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TForm1.BtnPPToPasClick(Sender: TObject);
var
  slppFiles, sl: TStringList;
  path, s: string;
  i, index: integer;
  slGTK4Pas: TStringList;

  procedure DeleteTypes(sl: TStringList);
  var
    index: integer = 0;
    isType: boolean = False;
  begin
    repeat
      if index >= sl.Count then begin
        Exit;
      end;
      if Pos('Type', sl[index]) > 0 then begin
        //        if sl[index] = 'Type' then begin
        sl[index] := '//// ' + sl[index];
        isType := True;
      end;
      Inc(index);
    until isType;

    isType := False;
    repeat
      if index >= sl.Count then begin
        Exit;
      end;
      if (Pos('Type', sl[index]) > 0) or (pos('{$IFDEF FPC}', sl[index]) > 0) then begin
        //        if (sl[index] = 'Type') or (pos('{$IFDEF FPC}', sl[index]) > 0) then begin
        isType := True;
      end else begin
        sl[index] := '//// ' + sl[index];
      end;
      Inc(index);
    until isType;
  end;

  procedure DeleteClamp(sl: TStringList);
  var
    i: integer;
  begin
    for i := 0 to sl.Count - 1 do begin
      if pos('{', sl[i]) = 1 then begin
        if sl[i] <> '{' then begin
          sl[i] := '//// ' + sl[i];
        end;
      end;
      if pos('(* error', sl[i]) = 1 then begin
        if sl[i] <> '{' then begin
          sl[i] := '//// ' + sl[i];
          sl[i + 1] := '//// ' + sl[i + 1];
        end;
      end;
    end;
  end;

  procedure AddGTK4Pas(slGTK4pas: TStringList; Source: TStringList; const Headername: string);
  var
    i, start, ende: integer;
  begin
    start := Source.IndexOf('interface');
    ende := Source.IndexOf('implementation');
    if (start < 1) or (ende < 1) then begin
      WriteLn('Ungültige Unit');
      WriteLn(start);
      WriteLn(ende);
      WriteLn(Headername);
      Exit;
    end;

    slGTK4pas.Insert(ImplementationIndex, '// -------------------------------------------------');
    slGTK4pas.Insert(ImplementationIndex, '// ' + Headername);
    slGTK4pas.Insert(ImplementationIndex, '// --------- Implementation ------------------------');

    slGTK4pas.Insert(InterfaceIndex, '// -------------------------------------------------');
    slGTK4pas.Insert(InterfaceIndex, '// ' + Headername);
    slGTK4pas.Insert(InterfaceIndex, '// --------- inteface ------------------------------');

    Inc(InterfaceIndex, 3);
    Inc(ImplementationIndex, 6);

    for i := start + 1 to ende - 1 do begin
      slGTK4pas.Insert(InterfaceIndex, Source[i]);
      Inc(InterfaceIndex);
      Inc(ImplementationIndex);
    end;

    for i := ende + 1 to Source.Count - 2 do begin
      slGTK4pas.Insert(ImplementationIndex, Source[i]);
      Inc(ImplementationIndex);
    end;
  end;

  function IndexOf(sl: TStringList; const HeaderFolg: string): integer;
  var
    i: integer;
  begin
    Result := -1;
    for i := 0 to sl.Count - 1 do begin
      if pos('4' + HeaderFolg + '.pp', sl[i]) > 0 then begin
        Result := i;
        Exit;
      end;
    end;
  end;

const
  HeaderFolge: TStringArray = (
    'types',
    'widget');

begin
  slGTK4Pas := TStringList.Create;
  slGTK4Pas.Add('unit GTK4;');
  slGTK4Pas.Add('');
  slGTK4Pas.Add('interface');
  slGTK4Pas.Add('');
  slGTK4Pas.Add('implementation');
  slGTK4Pas.Add('');

  slppFiles := FindAllFiles(HeaderDespPath, '*.pp', True);

  for i := Length(HeaderFolge) - 1 downto 0 do begin
    index := IndexOf(slppFiles, HeaderFolge[i]);
    if index > 0 then begin
      s := slppFiles[index];
      slppFiles.Delete(index);
      slppFiles.Insert(0, s);
      WriteLn(index);

    end;
  end;
  WriteLn(slppFiles.Text);


  InterfaceIndex := slGTK4Pas.IndexOf('interface') + 1;
  ImplementationIndex := slGTK4Pas.IndexOf('implementation') + 1;

  for i := 0 to slppFiles.Count - 1 do begin
    path := slppFiles[i];
    sl := TStringList.Create;
    sl.LoadFromFile(path);

    DeleteClamp(sl);
    DeleteTypes(sl);

    AddGTK4Pas(slGTK4Pas, sl, path);

    path := StringReplace(path, '.pp', '.pas', []);
    sl.SaveToFile(path);
    sl.Free;
  end;
  slppFiles.Free;

  slGTK4Pas.Add('');
  slGTK4Pas.Add('end.');
  slGTK4Pas.SaveToFile('/n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter_Alpha/gtk4.pas');
  slGTK4Pas.Free;
end;

end.
