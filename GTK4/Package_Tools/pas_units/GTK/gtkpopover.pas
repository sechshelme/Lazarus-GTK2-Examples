unit gtkpopover;

interface

uses
  glib2, common_GTK, GDK4, gtktypes, gtkenums, gtkwidget;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}

type
  TGtkPopover = record
    parent: TGtkWidget;
  end;
  PGtkPopover = ^TGtkPopover;

  TGtkPopoverClass = record
    parent_class: TGtkWidgetClass;
    closed: procedure(popover: PGtkPopover); cdecl;
    activate_default: procedure(popover: PGtkPopover); cdecl;
    reserved: array[0..7] of Tgpointer;
  end;
  PGtkPopoverClass = ^TGtkPopoverClass;


function gtk_popover_get_type: TGType; cdecl; external gtklib;
function gtk_popover_new: PGtkWidget; cdecl; external gtklib;
procedure gtk_popover_set_child(popover: PGtkPopover; child: PGtkWidget); cdecl; external gtklib;
function gtk_popover_get_child(popover: PGtkPopover): PGtkWidget; cdecl; external gtklib;
procedure gtk_popover_set_pointing_to(popover: PGtkPopover; rect: PGdkRectangle); cdecl; external gtklib;
function gtk_popover_get_pointing_to(popover: PGtkPopover; rect: PGdkRectangle): Tgboolean; cdecl; external gtklib;
procedure gtk_popover_set_position(popover: PGtkPopover; position: TGtkPositionType); cdecl; external gtklib;
function gtk_popover_get_position(popover: PGtkPopover): TGtkPositionType; cdecl; external gtklib;
procedure gtk_popover_set_autohide(popover: PGtkPopover; autohide: Tgboolean); cdecl; external gtklib;
function gtk_popover_get_autohide(popover: PGtkPopover): Tgboolean; cdecl; external gtklib;
procedure gtk_popover_set_has_arrow(popover: PGtkPopover; has_arrow: Tgboolean); cdecl; external gtklib;
function gtk_popover_get_has_arrow(popover: PGtkPopover): Tgboolean; cdecl; external gtklib;
procedure gtk_popover_set_mnemonics_visible(popover: PGtkPopover; mnemonics_visible: Tgboolean); cdecl; external gtklib;
function gtk_popover_get_mnemonics_visible(popover: PGtkPopover): Tgboolean; cdecl; external gtklib;
procedure gtk_popover_popup(popover: PGtkPopover); cdecl; external gtklib;
procedure gtk_popover_popdown(popover: PGtkPopover); cdecl; external gtklib;
procedure gtk_popover_set_offset(popover: PGtkPopover; x_offset: longint; y_offset: longint); cdecl; external gtklib;
procedure gtk_popover_get_offset(popover: PGtkPopover; x_offset: Plongint; y_offset: Plongint); cdecl; external gtklib;
procedure gtk_popover_set_cascade_popdown(popover: PGtkPopover; cascade_popdown: Tgboolean); cdecl; external gtklib;
function gtk_popover_get_cascade_popdown(popover: PGtkPopover): Tgboolean; cdecl; external gtklib;
procedure gtk_popover_set_default_widget(popover: PGtkPopover; widget: PGtkWidget); cdecl; external gtklib;
procedure gtk_popover_present(popover: PGtkPopover); cdecl; external gtklib;

// === Konventiert am: 24-7-24 16:57:27 ===

function GTK_TYPE_POPOVER: TGType;
function GTK_POPOVER(obj: Pointer): PGtkPopover;
function GTK_POPOVER_CLASS(klass: Pointer): PGtkPopoverClass;
function GTK_IS_POPOVER(obj: Pointer): Tgboolean;
function GTK_IS_POPOVER_CLASS(klass: Pointer): Tgboolean;
function GTK_POPOVER_GET_CLASS(obj: Pointer): PGtkPopoverClass;

implementation

function GTK_TYPE_POPOVER: TGType;
begin
  GTK_TYPE_POPOVER := gtk_popover_get_type;
end;

function GTK_POPOVER(obj: Pointer): PGtkPopover;
begin
  Result := PGtkPopover(g_type_check_instance_cast(obj, GTK_TYPE_POPOVER));
end;

function GTK_POPOVER_CLASS(klass: Pointer): PGtkPopoverClass;
begin
  Result := PGtkPopoverClass(g_type_check_class_cast(klass, GTK_TYPE_POPOVER));
end;

function GTK_IS_POPOVER(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_POPOVER);
end;

function GTK_IS_POPOVER_CLASS(klass: Pointer): Tgboolean;
begin
  Result := g_type_check_class_is_a(klass, GTK_TYPE_POPOVER);
end;

function GTK_POPOVER_GET_CLASS(obj: Pointer): PGtkPopoverClass;
begin
  Result := PGtkPopoverClass(PGTypeInstance(obj)^.g_class);
end;



end.
