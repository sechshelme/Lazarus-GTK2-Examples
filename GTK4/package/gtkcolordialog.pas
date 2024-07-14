unit gtkcolordialog;

interface

uses
  glib2, common_GTK, gtkwindow;

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


type TGtkColorDialog=Pointer;  {G_DECLARE_FINAL_TYPE (GtkColorDialog, gtk_color_dialog, GTK, COLOR_DIALOG, GObject) }
  PGtkColorDialog=^TGtkColorDialog;

function gtk_color_dialog_new:PGtkColorDialog;cdecl;external gtklib;
function gtk_color_dialog_get_title(self:PGtkColorDialog):Pchar;cdecl;external gtklib;
procedure gtk_color_dialog_set_title(self:PGtkColorDialog; title:Pchar);cdecl;external gtklib;
function gtk_color_dialog_get_modal(self:PGtkColorDialog):Tgboolean;cdecl;external gtklib;
procedure gtk_color_dialog_set_modal(self:PGtkColorDialog; modal:Tgboolean);cdecl;external gtklib;
function gtk_color_dialog_get_with_alpha(self:PGtkColorDialog):Tgboolean;cdecl;external gtklib;
procedure gtk_color_dialog_set_with_alpha(self:PGtkColorDialog; with_alpha:Tgboolean);cdecl;external gtklib;
procedure gtk_color_dialog_choose_rgba(self:PGtkColorDialog; parent:PGtkWindow; initial_color:PGdkRGBA; cancellable:PGCancellable; callback:TGAsyncReadyCallback;
            user_data:Tgpointer);cdecl;external gtklib;
function gtk_color_dialog_choose_rgba_finish(self:PGtkColorDialog; result:PGAsyncResult; error:PPGError):PGdkRGBA;cdecl;external gtklib;

// === Konventiert am: 13-7-24 15:58:40 ===

function GTK_TYPE_COLOR_DIALOG : TGType;

implementation

function GTK_TYPE_COLOR_DIALOG : TGType;
  begin
    //     nicht findbar
//    GTK_TYPE_COLOR_DIALOG:=gtk_color_dialog_get_type;
  end;



end.
