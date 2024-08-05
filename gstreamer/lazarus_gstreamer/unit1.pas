unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, gst;

  // https://forums.developer.nvidia.com/t/pipeline-ends-after-4-seconds-with-gst-message-eos/253486

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    pipeline: PGstElement;

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
begin
  gst_init(@argc, @argv);
  pipeline := nil;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  //  pipeline := gst_parse_launch('playbin uri=file:/n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/gstreamer/test.mp3', nil);
  if pipeline = nil then begin
    pipeline := gst_parse_launch('filesrc location=test.mp3 !  mpegaudioparse ! mpg123audiodec ! audioconvert ! audioresample ! pulsesink', nil);
    //    pipeline := gst_parse_launch('filesrc location=test.flac ! decodebin3 ! audioconvert ! audioresample ! autoaudiosink', nil);
  end;
  gst_element_set_state(pipeline, GST_STATE_PLAYING);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  if pipeline <> nil then  begin
    gst_element_set_state(pipeline, GST_STATE_PAUSED);
  end;
end;

end.
