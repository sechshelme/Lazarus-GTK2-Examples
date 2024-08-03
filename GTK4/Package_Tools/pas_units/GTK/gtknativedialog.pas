unit gtknativedialog;

interface

uses
  glib2, common_GTK, gtkwindow;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}


  {G_DECLARE_DERIVABLE_TYPE (GtkNativeDialog, gtk_native_dialog, GTK, NATIVE_DIALOG, GObject) }
type
  TGtkNativeDialog = record
    parent_instance: TGObject
  end;
  PGtkNativeDialog = ^TGtkNativeDialog;

  TGtkNativeDialogClass = record
    parent_class: TGObjectClass;
    response: procedure(self: PGtkNativeDialog; response_id: longint); cdecl;
    Show: procedure(self: PGtkNativeDialog); cdecl;
    hide: procedure(self: PGtkNativeDialog); cdecl;
    _gtk_reserved1: procedure; cdecl;
    _gtk_reserved2: procedure; cdecl;
    _gtk_reserved3: procedure; cdecl;
    _gtk_reserved4: procedure; cdecl;
  end;
  PGtkNativeDialogClass = ^TGtkNativeDialogClass;


function gtk_native_dialog_get_type: TGType; cdecl; external gtklib;
procedure gtk_native_dialog_show(self: PGtkNativeDialog); cdecl; external gtklib;
procedure gtk_native_dialog_hide(self: PGtkNativeDialog); cdecl; external gtklib;
procedure gtk_native_dialog_destroy(self: PGtkNativeDialog); cdecl; external gtklib;
function gtk_native_dialog_get_visible(self: PGtkNativeDialog): Tgboolean; cdecl; external gtklib;
procedure gtk_native_dialog_set_modal(self: PGtkNativeDialog; modal: Tgboolean); cdecl; external gtklib;
function gtk_native_dialog_get_modal(self: PGtkNativeDialog): Tgboolean; cdecl; external gtklib;
procedure gtk_native_dialog_set_title(self: PGtkNativeDialog; title: PChar); cdecl; external gtklib;
function gtk_native_dialog_get_title(self: PGtkNativeDialog): PChar; cdecl; external gtklib;
procedure gtk_native_dialog_set_transient_for(self: PGtkNativeDialog; parent: PGtkWindow); cdecl; external gtklib;
function gtk_native_dialog_get_transient_for(self: PGtkNativeDialog): PGtkWindow; cdecl; external gtklib;

// === Konventiert am: 28-7-24 15:01:25 ===

function GTK_TYPE_NATIVE_DIALOG: TGType;
function GTK_NATIVE_DIALOG(obj: Pointer): PGtkNativeDialog;
function GTK_IS_NATIVE_DIALOG(obj: Pointer): Tgboolean;
function GTK_NATIVE_DIALOG_CLASS(klass: Pointer): PGtkNativeDialogClass;
function GTK_IS_NATIVE_DIALOG_CLASS(klass: Pointer): Tgboolean;
function GTK_NATIVE_DIALOG_GET_CLASS(obj: Pointer): PGtkNativeDialogClass;

implementation

function GTK_TYPE_NATIVE_DIALOG: TGType;
begin
  Result := gtk_native_dialog_get_type;
end;

function GTK_NATIVE_DIALOG(obj: Pointer): PGtkNativeDialog;
begin
  Result := PGtkNativeDialog(g_type_check_instance_cast(obj, GTK_TYPE_NATIVE_DIALOG));
end;

function GTK_IS_NATIVE_DIALOG(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_NATIVE_DIALOG);
end;

function GTK_NATIVE_DIALOG_CLASS(klass: Pointer): PGtkNativeDialogClass;
begin
  Result := PGtkNativeDialogClass(g_type_check_class_cast(klass, GTK_TYPE_NATIVE_DIALOG));
end;

function GTK_IS_NATIVE_DIALOG_CLASS(klass: Pointer): Tgboolean;
begin
  Result := g_type_check_class_is_a(klass, GTK_TYPE_NATIVE_DIALOG);
end;

function GTK_NATIVE_DIALOG_GET_CLASS(obj: Pointer): PGtkNativeDialogClass;
begin
  Result := PGtkNativeDialogClass(PGTypeInstance(obj)^.g_class);
end;




end.
