unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls,
  RunGames;

type

  { TForm1 }

  TForm1 = class(TForm)
    NewGame: TButton;
    procedure NewGameClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.NewGameClick(Sender: TObject);
var
  g: TRunGames;
begin
//  NewGame.Enabled:=False;
  WriteLn('run');
  g := TRunGames.Create;
  g.Run;
  g.Free;
//  NewGame.Enabled:=True;
end;

end.
