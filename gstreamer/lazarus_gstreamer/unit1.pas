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
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

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
end;

procedure TForm1.Button1Click(Sender: TObject);
const
  GST_CLOCK_TIME_NONE = -1;
var
  pipeline: PGstElement;
  bus: PGstBus;
  msg: PGstMessage;
begin
  pipeline := gst_parse_launch('playbin uri=file:/n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/gstreamer/test.mp3', nil);
  //  pipeline := gst_parse_launch('playbin uri=https://gstreamer.freedesktop.org/data/media/sintel_trailer-480p.webm', nil);
  gst_element_set_state(pipeline, GST_STATE_PLAYING);

  bus := gst_element_get_bus(pipeline);
  //msg :=
  //  gst_bus_timed_pop_filtered(bus, -1,
  //  TGstMessageType(TGstMessageType(int64(GST_MESSAGE_ERROR) or int64(GST_MESSAGE_EOS))));
  msg :=
    gst_bus_timed_pop_filtered(bus, -1,
    TGstMessageType(TGstMessageType(int64(GST_MESSAGE_ERROR) or int64(GST_MESSAGE_EOS))));
end;

end.
