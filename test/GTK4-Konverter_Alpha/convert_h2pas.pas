unit Convert_H2Pas;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, SynEdit, FileUtil, process,
  Common;

type

  TH2Pas = class(TObject)
  public
    procedure RunH2Pas(Edit: TSynEdit);
  end;

implementation

procedure TH2Pas.RunH2Pas(Edit: TSynEdit);
const
  READ_BYTES = 2048;
var
  myProcess: TProcess;
  ms: TMemoryStream;
  BytesRead, i, c: integer;
  n: longint;
  sl, slHeaderFiles: TStringList;
begin
  sl := TStringList.Create;
  Edit.Lines.Clear;
  Edit.Lines.Add('------- Start ----------------');
  Edit.Lines.Add('');
  slHeaderFiles := FindAllFiles(HeaderDespPath, HeaderMask4, True);
  WriteLn(slHeaderFiles.Text);

  for i := 0 to slHeaderFiles.Count - 1 do begin
    ms := TMemoryStream.Create;
    myProcess := TProcess.Create(nil);
    BytesRead := 0;

    myProcess.CommandLine := '/usr/bin/h2pas' + ' ' + slHeaderFiles[i] + ' -lgtk4 -p -t -S -d -c';
    //        myProcess.CommandLine := '/usr/bin/h2pas' + ' ' + slHeaderFiles[i] + ' -p -t -S -d -c';
    //    myProcess.CommandLine := '/usr/bin/h2pas' + ' ' + slHeaderFiles[i] + ' -p -T -S -d -c';
    //    myProcess.Options := [poUsePipes, poStderrToOutPut];
    myProcess.Options := [poUsePipes];
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
    ms.SetSize(BytesRead);

    sl.Clear;

    if ms.Size > 0 then begin
      sl.LoadFromStream(ms);

      Edit.Lines.Add('------- Title ----------------');
      Edit.Lines.Add('File: ' + slHeaderFiles[i]);
      Edit.Lines.Add('------------------------------');
      Edit.Lines.AddStrings(sl);
    end else begin
      c := Edit.Lines.Count;
      if c > 0 then begin
        if Length(Edit.Lines[Edit.Lines.Count - 1]) > 80 then begin
          Edit.Lines.Add('.');
        end else begin
          Edit.Lines[Edit.Lines.Count - 1] := Edit.Lines[Edit.Lines.Count - 1] + '.';
        end;
      end;
    end;

    ms.Free;
    myProcess.Free;
    Application.ProcessMessages;
  end;
  Edit.Lines.Add('****** fertig *******');

  slHeaderFiles.Free;
  sl.Free;

end;

end.
