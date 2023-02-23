
unit gtkwindowcontrols;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkwindowcontrols.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkwindowcontrols.h
    -p
    -T
    -S
    -d
    -c
}

{ Pointers to basic pascal types, inserted by h2pas conversion program.}
Type
  PLongint  = ^Longint;
  PSmallInt = ^SmallInt;
  PByte     = ^Byte;
  PWord     = ^Word;
  PDWord    = ^DWord;
  PDouble   = ^Double;

Type
Pchar  = ^char;
PGtkWidget  = ^GtkWidget;
PGtkWindowControls  = ^GtkWindowControls;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwidget.h>}


function GTK_TYPE_WINDOW_CONTROLS : longint; { return type might be wrong }




function gtk_window_controls_new(side:TGtkPackType):PGtkWidget;cdecl;external;

function gtk_window_controls_get_side(self:PGtkWindowControls):TGtkPackType;cdecl;external;

procedure gtk_window_controls_set_side(self:PGtkWindowControls; side:TGtkPackType);cdecl;external;

function gtk_window_controls_get_decoration_layout(self:PGtkWindowControls):Pchar;cdecl;external;

procedure gtk_window_controls_set_decoration_layout(self:PGtkWindowControls; layout:Pchar);cdecl;external;

function gtk_window_controls_get_empty(self:PGtkWindowControls):Tgboolean;cdecl;external;


implementation

function GTK_TYPE_WINDOW_CONTROLS : longint; { return type might be wrong }
  begin
    GTK_TYPE_WINDOW_CONTROLS:=gtk_window_controls_get_type;
  end;


end.
