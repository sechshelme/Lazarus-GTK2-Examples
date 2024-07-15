unit gtkfontdialog;

interface

uses
  glib2,pango, common_GTK,gtkwindow;

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}

{G_DECLARE_FINAL_TYPE (GtkFontDialog, gtk_font_dialog, GTK, FONT_DIALOG, GObject) }
type
  TGtkFontDialog = record
  end;
  PGtkFontDialog = ^TGtkFontDialog;

  TGtkFontDialogClass = record
    parent_class: TGObjectClass;
  end;
  PGtkFontDialogClass = ^TGtkFontDialogClass;

function gtk_font_dialog_get_type: TGType; cdecl; external gtklib;
function gtk_font_dialog_new:PGtkFontDialog;cdecl;external gtklib;
function gtk_font_dialog_get_title(self:PGtkFontDialog):Pchar;cdecl;external gtklib;
procedure gtk_font_dialog_set_title(self:PGtkFontDialog; title:Pchar);cdecl;external gtklib;
function gtk_font_dialog_get_modal(self:PGtkFontDialog):Tgboolean;cdecl;external gtklib;
procedure gtk_font_dialog_set_modal(self:PGtkFontDialog; modal:Tgboolean);cdecl;external gtklib;
function gtk_font_dialog_get_language(self:PGtkFontDialog):PPangoLanguage;cdecl;external gtklib;
procedure gtk_font_dialog_set_language(self:PGtkFontDialog; language:PPangoLanguage);cdecl;external gtklib;
function gtk_font_dialog_get_font_map(self:PGtkFontDialog):PPangoFontMap;cdecl;external gtklib;
procedure gtk_font_dialog_set_font_map(self:PGtkFontDialog; fontmap:PPangoFontMap);cdecl;external gtklib;
function gtk_font_dialog_get_filter(self:PGtkFontDialog):PGtkFilter;cdecl;external gtklib;
procedure gtk_font_dialog_set_filter(self:PGtkFontDialog; filter:PGtkFilter);cdecl;external gtklib;
procedure gtk_font_dialog_choose_family(self:PGtkFontDialog; parent:PGtkWindow; initial_value:PPangoFontFamily; cancellable:PGCancellable; callback:TGAsyncReadyCallback; 
            user_data:Tgpointer);cdecl;external gtklib;
function gtk_font_dialog_choose_family_finish(self:PGtkFontDialog; result:PGAsyncResult; error:PPGError):PPangoFontFamily;cdecl;external gtklib;
procedure gtk_font_dialog_choose_face(self:PGtkFontDialog; parent:PGtkWindow; initial_value:PPangoFontFace; cancellable:PGCancellable; callback:TGAsyncReadyCallback; 
            user_data:Tgpointer);cdecl;external gtklib;
function gtk_font_dialog_choose_face_finish(self:PGtkFontDialog; result:PGAsyncResult; error:PPGError):PPangoFontFace;cdecl;external gtklib;
procedure gtk_font_dialog_choose_font(self:PGtkFontDialog; parent:PGtkWindow; initial_value:PPangoFontDescription; cancellable:PGCancellable; callback:TGAsyncReadyCallback; 
            user_data:Tgpointer);cdecl;external gtklib;
function gtk_font_dialog_choose_font_finish(self:PGtkFontDialog; result:PGAsyncResult; error:PPGError):PPangoFontDescription;cdecl;external gtklib;
procedure gtk_font_dialog_choose_font_and_features(self:PGtkFontDialog; parent:PGtkWindow; initial_value:PPangoFontDescription; cancellable:PGCancellable; callback:TGAsyncReadyCallback; 
            user_data:Tgpointer);cdecl;external gtklib;
function gtk_font_dialog_choose_font_and_features_finish(self:PGtkFontDialog; result:PGAsyncResult; font_desc:PPPangoFontDescription; font_features:PPchar; language:PPPangoLanguage; 
           error:PPGError):Tgboolean;cdecl;external gtklib;

// === Konventiert am: 15-7-24 19:23:48 ===

function GTK_TYPE_FONT_DIALOG: TGType;
function GTK_FONT_DIALOG(obj: Pointer): PGtkFontDialog;
function GTK_FONT_DIALOG_CLASS(klass: Pointer): PGtkFontDialogClass;
function GTK_IS_FONT_DIALOG(obj: Pointer): Tgboolean;
function GTK_IS_FONT_DIALOG_CLASS(klass: Pointer): Tgboolean;
function GTK_FONT_DIALOG_GET_CLASS(obj: Pointer): PGtkFontDialogClass;

implementation

function GTK_TYPE_FONT_DIALOG: TGType;
begin
  Result := gtk_font_dialog_get_type;
end;

function GTK_FONT_DIALOG(obj: Pointer): PGtkFontDialog;
begin
  Result := PGtkFontDialog(g_type_check_instance_cast(obj, GTK_TYPE_FONT_DIALOG));
end;

function GTK_FONT_DIALOG_CLASS(klass: Pointer): PGtkFontDialogClass;
begin
  Result := PGtkFontDialogClass(g_type_check_class_cast(klass, GTK_TYPE_FONT_DIALOG));
end;

function GTK_IS_FONT_DIALOG(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_FONT_DIALOG);
end;

function GTK_IS_FONT_DIALOG_CLASS(klass: Pointer): Tgboolean;
begin
  Result := g_type_check_class_is_a(klass, GTK_TYPE_FONT_DIALOG);
end;

function GTK_FONT_DIALOG_GET_CLASS(obj: Pointer): PGtkFontDialogClass;
begin
  Result := PGtkFontDialogClass(PGTypeInstance(obj)^.g_class);
end;




end.
