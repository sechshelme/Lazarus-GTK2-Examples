unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  //  GTK4,
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, SynEdit, FileUtil, process,
  Convert_Header, Convert_H2Pas, Convert_pp_to_pas, Common;

type

  { TForm1 }

  TForm1 = class(TForm)
    BtnSave: TButton;
    BtnPPToPas: TButton;
    h2pas: TButton;
    BtnIncludeToTmp: TButton;
    BtnClose: TButton;
    SynEdit2: TSynEdit;
    procedure BtnCloseClick(Sender: TObject);
    procedure BtnPPToPasClick(Sender: TObject);
    procedure BtnIncludeToTmpClick(Sender: TObject);
    procedure BtnSaveClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure h2pasClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    HeaderConvert: THeaderConvert;
    H2Pas_Convert: TH2Pas;
    pp_to_pas_Convert: TConvert_pp_to_pas;
  public
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  Width := Screen.Width div 2;
  Left := 100;
  Height := Screen.Height - 100;
  HeaderConvert := THeaderConvert.Create;
  H2Pas_Convert := TH2Pas.Create;
  pp_to_pas_Convert := TConvert_pp_to_pas.Create;
end;

procedure TForm1.BtnIncludeToTmpClick(Sender: TObject);
begin
  HeaderConvert.IncludeToTmp;
end;

procedure TForm1.BtnSaveClick(Sender: TObject);
begin
  SynEdit2.Lines.SaveToFile('/n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter_Alpha/gtk4_output.txt');
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  HeaderConvert.Free;
  H2Pas_Convert.Free;
  pp_to_pas_Convert.Free;
end;

procedure TForm1.h2pasClick(Sender: TObject);
begin
  H2Pas_Convert.RunH2Pas(SynEdit2);
end;

procedure TForm1.BtnCloseClick(Sender: TObject);
begin
  Close;
end;

procedure TForm1.BtnPPToPasClick(Sender: TObject);
begin
  pp_to_pas_Convert.Conver_to_pas;
end;

end.
