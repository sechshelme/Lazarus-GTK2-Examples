unit gtkentry;

interface

uses
  glib2, GDK4, pango, common_GTK, gtkenums, gtkwidget, gtktypes, gtkentrybuffer, gtkentrycompletion, gtkimage;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}

type
  PGtkEntryIconPosition = ^TGtkEntryIconPosition;
  TGtkEntryIconPosition = longint;

const
  GTK_ENTRY_ICON_PRIMARY = 0;
  GTK_ENTRY_ICON_SECONDARY = 1;

type
  TGtkEntry = record
    parent_instance: TGtkWidget;
  end;
  PGtkEntry = ^TGtkEntry;

  TGtkEntryClass = record
    parent_class: TGtkWidgetClass;
    activate: procedure(entry: PGtkEntry); cdecl;
    padding: array[0..7] of Tgpointer;
  end;
  PGtkEntryClass = ^TGtkEntryClass;


function gtk_entry_get_type: TGType; cdecl; external gtklib;
function gtk_entry_new: PGtkWidget; cdecl; external gtklib;
function gtk_entry_new_with_buffer(buffer: PGtkEntryBuffer): PGtkWidget; cdecl; external gtklib;
function gtk_entry_get_buffer(entry: PGtkEntry): PGtkEntryBuffer; cdecl; external gtklib;
procedure gtk_entry_set_buffer(entry: PGtkEntry; buffer: PGtkEntryBuffer); cdecl; external gtklib;
procedure gtk_entry_set_visibility(entry: PGtkEntry; Visible: Tgboolean); cdecl; external gtklib;
function gtk_entry_get_visibility(entry: PGtkEntry): Tgboolean; cdecl; external gtklib;
procedure gtk_entry_set_invisible_char(entry: PGtkEntry; ch: Tgunichar); cdecl; external gtklib;
function gtk_entry_get_invisible_char(entry: PGtkEntry): Tgunichar; cdecl; external gtklib;
procedure gtk_entry_unset_invisible_char(entry: PGtkEntry); cdecl; external gtklib;
procedure gtk_entry_set_has_frame(entry: PGtkEntry; setting: Tgboolean); cdecl; external gtklib;
function gtk_entry_get_has_frame(entry: PGtkEntry): Tgboolean; cdecl; external gtklib;
procedure gtk_entry_set_overwrite_mode(entry: PGtkEntry; overwrite: Tgboolean); cdecl; external gtklib;
function gtk_entry_get_overwrite_mode(entry: PGtkEntry): Tgboolean; cdecl; external gtklib;
procedure gtk_entry_set_max_length(entry: PGtkEntry; max: longint); cdecl; external gtklib;
function gtk_entry_get_max_length(entry: PGtkEntry): longint; cdecl; external gtklib;
function gtk_entry_get_text_length(entry: PGtkEntry): Tguint16; cdecl; external gtklib;
procedure gtk_entry_set_activates_default(entry: PGtkEntry; setting: Tgboolean); cdecl; external gtklib;
function gtk_entry_get_activates_default(entry: PGtkEntry): Tgboolean; cdecl; external gtklib;
procedure gtk_entry_set_alignment(entry: PGtkEntry; xalign: single); cdecl; external gtklib;
function gtk_entry_get_alignment(entry: PGtkEntry): single; cdecl; external gtklib;
procedure gtk_entry_set_completion(entry: PGtkEntry; completion: PGtkEntryCompletion); cdecl; external gtklib;
function gtk_entry_get_completion(entry: PGtkEntry): PGtkEntryCompletion; cdecl; external gtklib;
procedure gtk_entry_set_progress_fraction(entry: PGtkEntry; fraction: Tdouble); cdecl; external gtklib;
function gtk_entry_get_progress_fraction(entry: PGtkEntry): Tdouble; cdecl; external gtklib;
procedure gtk_entry_set_progress_pulse_step(entry: PGtkEntry; fraction: Tdouble); cdecl; external gtklib;
function gtk_entry_get_progress_pulse_step(entry: PGtkEntry): Tdouble; cdecl; external gtklib;
procedure gtk_entry_progress_pulse(entry: PGtkEntry); cdecl; external gtklib;
function gtk_entry_get_placeholder_text(entry: PGtkEntry): PChar; cdecl; external gtklib;
procedure gtk_entry_set_placeholder_text(entry: PGtkEntry; Text: PChar); cdecl; external gtklib;
procedure gtk_entry_set_icon_from_paintable(entry: PGtkEntry; icon_pos: TGtkEntryIconPosition; paintable: PGdkPaintable); cdecl; external gtklib;
procedure gtk_entry_set_icon_from_icon_name(entry: PGtkEntry; icon_pos: TGtkEntryIconPosition; icon_name: PChar); cdecl; external gtklib;
procedure gtk_entry_set_icon_from_gicon(entry: PGtkEntry; icon_pos: TGtkEntryIconPosition; icon: PGIcon); cdecl; external gtklib;
function gtk_entry_get_icon_storage_type(entry: PGtkEntry; icon_pos: TGtkEntryIconPosition): TGtkImageType; cdecl; external gtklib;
function gtk_entry_get_icon_paintable(entry: PGtkEntry; icon_pos: TGtkEntryIconPosition): PGdkPaintable; cdecl; external gtklib;
function gtk_entry_get_icon_name(entry: PGtkEntry; icon_pos: TGtkEntryIconPosition): PChar; cdecl; external gtklib;
function gtk_entry_get_icon_gicon(entry: PGtkEntry; icon_pos: TGtkEntryIconPosition): PGIcon; cdecl; external gtklib;
procedure gtk_entry_set_icon_activatable(entry: PGtkEntry; icon_pos: TGtkEntryIconPosition; activatable: Tgboolean); cdecl; external gtklib;
function gtk_entry_get_icon_activatable(entry: PGtkEntry; icon_pos: TGtkEntryIconPosition): Tgboolean; cdecl; external gtklib;
procedure gtk_entry_set_icon_sensitive(entry: PGtkEntry; icon_pos: TGtkEntryIconPosition; sensitive: Tgboolean); cdecl; external gtklib;
function gtk_entry_get_icon_sensitive(entry: PGtkEntry; icon_pos: TGtkEntryIconPosition): Tgboolean; cdecl; external gtklib;
function gtk_entry_get_icon_at_pos(entry: PGtkEntry; x: longint; y: longint): longint; cdecl; external gtklib;
procedure gtk_entry_set_icon_tooltip_text(entry: PGtkEntry; icon_pos: TGtkEntryIconPosition; tooltip: PChar); cdecl; external gtklib;
function gtk_entry_get_icon_tooltip_text(entry: PGtkEntry; icon_pos: TGtkEntryIconPosition): PChar; cdecl; external gtklib;
procedure gtk_entry_set_icon_tooltip_markup(entry: PGtkEntry; icon_pos: TGtkEntryIconPosition; tooltip: PChar); cdecl; external gtklib;
function gtk_entry_get_icon_tooltip_markup(entry: PGtkEntry; icon_pos: TGtkEntryIconPosition): PChar; cdecl; external gtklib;
procedure gtk_entry_set_icon_drag_source(entry: PGtkEntry; icon_pos: TGtkEntryIconPosition; provider: PGdkContentProvider; actions: TGdkDragAction); cdecl; external gtklib;
function gtk_entry_get_current_icon_drag_source(entry: PGtkEntry): longint; cdecl; external gtklib;
procedure gtk_entry_get_icon_area(entry: PGtkEntry; icon_pos: TGtkEntryIconPosition; icon_area: PGdkRectangle); cdecl; external gtklib;
procedure gtk_entry_reset_im_context(entry: PGtkEntry); cdecl; external gtklib;
procedure gtk_entry_set_input_purpose(entry: PGtkEntry; purpose: TGtkInputPurpose); cdecl; external gtklib;
function gtk_entry_get_input_purpose(entry: PGtkEntry): TGtkInputPurpose; cdecl; external gtklib;
procedure gtk_entry_set_input_hints(entry: PGtkEntry; hints: TGtkInputHints); cdecl; external gtklib;
function gtk_entry_get_input_hints(entry: PGtkEntry): TGtkInputHints; cdecl; external gtklib;
procedure gtk_entry_set_attributes(entry: PGtkEntry; attrs: PPangoAttrList); cdecl; external gtklib;
function gtk_entry_get_attributes(entry: PGtkEntry): PPangoAttrList; cdecl; external gtklib;
procedure gtk_entry_set_tabs(entry: PGtkEntry; tabs: PPangoTabArray); cdecl; external gtklib;
function gtk_entry_get_tabs(entry: PGtkEntry): PPangoTabArray; cdecl; external gtklib;
function gtk_entry_grab_focus_without_selecting(entry: PGtkEntry): Tgboolean; cdecl; external gtklib;
procedure gtk_entry_set_extra_menu(entry: PGtkEntry; model: PGMenuModel); cdecl; external gtklib;
function gtk_entry_get_extra_menu(entry: PGtkEntry): PGMenuModel; cdecl; external gtklib;

// === Konventiert am: 21-7-24 15:32:02 ===

function GTK_TYPE_ENTRY: TGType;
function GTK_ENTRY(obj: Pointer): PGtkEntry;
function GTK_ENTRY_CLASS(klass: Pointer): PGtkEntryClass;
function GTK_IS_ENTRY(obj: Pointer): Tgboolean;
function GTK_IS_ENTRY_CLASS(klass: Pointer): Tgboolean;
function GTK_ENTRY_GET_CLASS(obj: Pointer): PGtkEntryClass;

implementation

function GTK_TYPE_ENTRY: TGType;
begin
  GTK_TYPE_ENTRY := gtk_entry_get_type;
end;

function GTK_ENTRY(obj: Pointer): PGtkEntry;
begin
  Result := PGtkEntry(g_type_check_instance_cast(obj, GTK_TYPE_ENTRY));
end;

function GTK_ENTRY_CLASS(klass: Pointer): PGtkEntryClass;
begin
  Result := PGtkEntryClass(g_type_check_class_cast(klass, GTK_TYPE_ENTRY));
end;

function GTK_IS_ENTRY(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_ENTRY);
end;

function GTK_IS_ENTRY_CLASS(klass: Pointer): Tgboolean;
begin
  Result := g_type_check_class_is_a(klass, GTK_TYPE_ENTRY);
end;

function GTK_ENTRY_GET_CLASS(obj: Pointer): PGtkEntryClass;
begin
  Result := PGtkEntryClass(PGTypeInstance(obj)^.g_class);
end;



end.
