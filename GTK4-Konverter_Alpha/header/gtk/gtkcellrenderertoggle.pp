
unit gtkcellrenderertoggle;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkcellrenderertoggle.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkcellrenderertoggle.h
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
PGtkCellRenderer  = ^GtkCellRenderer;
PGtkCellRendererToggle  = ^GtkCellRendererToggle;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_CELL_RENDERER_TOGGLE_H__}
{$define __GTK_CELL_RENDERER_TOGGLE_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkcellrenderer.h>}


function GTK_TYPE_CELL_RENDERER_TOGGLE : longint; { return type might be wrong }

function GTK_CELL_RENDERER_TOGGLE(obj : longint) : longint;

function GTK_IS_CELL_RENDERER_TOGGLE(obj : longint) : longint;

type


function gtk_cell_renderer_toggle_get_type:TGType;cdecl;external;

function gtk_cell_renderer_toggle_new:PGtkCellRenderer;cdecl;external;

function gtk_cell_renderer_toggle_get_radio(toggle:PGtkCellRendererToggle):Tgboolean;cdecl;external;

procedure gtk_cell_renderer_toggle_set_radio(toggle:PGtkCellRendererToggle; radio:Tgboolean);cdecl;external;

function gtk_cell_renderer_toggle_get_active(toggle:PGtkCellRendererToggle):Tgboolean;cdecl;external;

procedure gtk_cell_renderer_toggle_set_active(toggle:PGtkCellRendererToggle; setting:Tgboolean);cdecl;external;

function gtk_cell_renderer_toggle_get_activatable(toggle:PGtkCellRendererToggle):Tgboolean;cdecl;external;

procedure gtk_cell_renderer_toggle_set_activatable(toggle:PGtkCellRendererToggle; setting:Tgboolean);cdecl;external;

{$endif}


implementation

function GTK_TYPE_CELL_RENDERER_TOGGLE : longint; { return type might be wrong }
  begin
    GTK_TYPE_CELL_RENDERER_TOGGLE:=gtk_cell_renderer_toggle_get_type;
  end;

function GTK_CELL_RENDERER_TOGGLE(obj : longint) : longint;
begin
  GTK_CELL_RENDERER_TOGGLE:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_CELL_RENDERER_TOGGLE,GtkCellRendererToggle);
end;

function GTK_IS_CELL_RENDERER_TOGGLE(obj : longint) : longint;
begin
  GTK_IS_CELL_RENDERER_TOGGLE:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_CELL_RENDERER_TOGGLE);
end;


end.
