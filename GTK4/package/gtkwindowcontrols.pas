unit gtkwindowcontrols;

interface

uses
  glib2, common_GTK,gtkenums,gtkwidget;

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}

type
TGtkWindowControls=Pointer; { G_DECLARE_FINAL_TYPE (GtkWindowControls, gtk_window_controls, GTK, WINDOW_CONTROLS, GtkWidget) }
PGtkWindowControls=^TGtkWindowControls;

function gtk_window_controls_new(side:TGtkPackType):PGtkWidget;cdecl;external gtklib;
function gtk_window_controls_get_side(self:PGtkWindowControls):TGtkPackType;cdecl;external gtklib;
procedure gtk_window_controls_set_side(self:PGtkWindowControls; side:TGtkPackType);cdecl;external gtklib;
function gtk_window_controls_get_decoration_layout(self:PGtkWindowControls):Pchar;cdecl;external gtklib;
procedure gtk_window_controls_set_decoration_layout(self:PGtkWindowControls; layout:Pchar);cdecl;external gtklib;
function gtk_window_controls_get_empty(self:PGtkWindowControls):Tgboolean;cdecl;external gtklib;

// === Konventiert am: 13-7-24 19:35:21 ===

function GTK_TYPE_WINDOW_CONTROLS : TGType;

implementation

function GTK_TYPE_WINDOW_CONTROLS : TGType;
  begin
    //   nicht findbar
//    GTK_TYPE_WINDOW_CONTROLS:=gtk_window_controls_get_type;
  end;



end.
