unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, gst;

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
var
  pipeline: PGstElement;
  bus: PGstBus;
  msg: PGstMessage;
begin
  pipeline := gst_parse_launch('playbin uri=file:/home/tux/Schreibtisch/gstreamer_3/test.flac', nil);
  gst_element_set_state(pipeline, GST_STATE_PLAYING);

  bus := gst_element_get_bus(pipeline);
  msg :=
    gst_bus_timed_pop_filtered(bus, 0,
    TGstMessageType(TGstMessageType(int64(GST_MESSAGE_ERROR) or int64(GST_MESSAGE_EOS))));
end;

end.
