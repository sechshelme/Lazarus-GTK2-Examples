unit gtkvolumebutton;

interface

uses
  glib2, common_GTK, gtkwidget, gtktypes, gtkscalebutton;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}

type
  TGtkVolumeButton = record
    parent: TGtkScaleButton;
  end;
  PGtkVolumeButton = ^TGtkVolumeButton;


function gtk_volume_button_get_type: TGType; cdecl; external gtklib;
function gtk_volume_button_new: PGtkWidget; cdecl; external gtklib;

// === Konventiert am: 30-7-24 16:18:11 ===

function GTK_TYPE_VOLUME_BUTTON: TGType;
function GTK_VOLUME_BUTTON(obj: Pointer): PGtkVolumeButton;
function GTK_IS_VOLUME_BUTTON(obj: Pointer): Tgboolean;

implementation

function GTK_TYPE_VOLUME_BUTTON: TGType;
begin
  GTK_TYPE_VOLUME_BUTTON := gtk_volume_button_get_type;
end;

function GTK_VOLUME_BUTTON(obj: Pointer): PGtkVolumeButton;
begin
  Result := PGtkVolumeButton(g_type_check_instance_cast(obj, GTK_TYPE_VOLUME_BUTTON));
end;

function GTK_IS_VOLUME_BUTTON(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_VOLUME_BUTTON);
end;



end.
