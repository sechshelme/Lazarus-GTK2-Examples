unit gtkfilechoosernative;

interface

uses
  glib2, common_GTK, gtkwindow, gtknativedialog, gtkfilechooser;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}


  {G_DECLARE_FINAL_TYPE (GtkFileChooserNative, gtk_file_chooser_native, GTK, FILE_CHOOSER_NATIVE, GtkNativeDialog) }
type
  TGtkFileChooserNative = record
  end;
  PGtkFileChooserNative = ^TGtkFileChooserNative;

  TGtkFileChooserNativeClass = record
    parent_class: TGtkNativeDialogClass;
  end;
  PGtkFileChooserNativeClass = ^TGtkFileChooserNativeClass;

function gtk_file_chooser_native_get_type: TGType; cdecl; external gtklib;
function gtk_file_chooser_native_new(title: PChar; parent: PGtkWindow; action: TGtkFileChooserAction; accept_label: PChar; cancel_label: PChar): PGtkFileChooserNative; cdecl; external gtklib;
function gtk_file_chooser_native_get_accept_label(self: PGtkFileChooserNative): PChar; cdecl; external gtklib;
procedure gtk_file_chooser_native_set_accept_label(self: PGtkFileChooserNative; accept_label: PChar); cdecl; external gtklib;
function gtk_file_chooser_native_get_cancel_label(self: PGtkFileChooserNative): PChar; cdecl; external gtklib;
procedure gtk_file_chooser_native_set_cancel_label(self: PGtkFileChooserNative; cancel_label: PChar); cdecl; external gtklib;

// === Konventiert am: 29-7-24 19:42:40 ===

function GTK_TYPE_FILE_CHOOSER_NATIVE: TGType;
function GTK_FILE_CHOOSER_NATIVE(obj: Pointer): PGtkFileChooserNative;
function GTK_IS_FILE_CHOOSER_NATIVE(obj: Pointer): Tgboolean;

implementation

function GTK_TYPE_FILE_CHOOSER_NATIVE: TGType;
begin
  Result := gtk_file_chooser_native_get_type;
end;

function GTK_FILE_CHOOSER_NATIVE(obj: Pointer): PGtkFileChooserNative;
begin
  Result := PGtkFileChooserNative(g_type_check_instance_cast(obj, GTK_TYPE_FILE_CHOOSER_NATIVE));
end;

function GTK_IS_FILE_CHOOSER_NATIVE(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_FILE_CHOOSER_NATIVE);
end;




end.
