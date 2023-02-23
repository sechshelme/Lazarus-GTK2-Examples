
unit gtkcellrenderercombo;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkcellrenderercombo.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkcellrenderercombo.h
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
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_CELL_RENDERER_COMBO_H__}
{$define __GTK_CELL_RENDERER_COMBO_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtktreemodel.h>}
{$include <gtk/gtkcellrenderertext.h>}


function GTK_TYPE_CELL_RENDERER_COMBO : longint; { return type might be wrong }

function GTK_CELL_RENDERER_COMBO(obj : longint) : longint;

function GTK_IS_CELL_RENDERER_COMBO(obj : longint) : longint;

type


function gtk_cell_renderer_combo_get_type:TGType;cdecl;external;

function gtk_cell_renderer_combo_new:PGtkCellRenderer;cdecl;external;

{$endif}


implementation

function GTK_TYPE_CELL_RENDERER_COMBO : longint; { return type might be wrong }
  begin
    GTK_TYPE_CELL_RENDERER_COMBO:=gtk_cell_renderer_combo_get_type;
  end;

function GTK_CELL_RENDERER_COMBO(obj : longint) : longint;
begin
  GTK_CELL_RENDERER_COMBO:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_CELL_RENDERER_COMBO,GtkCellRendererCombo);
end;

function GTK_IS_CELL_RENDERER_COMBO(obj : longint) : longint;
begin
  GTK_IS_CELL_RENDERER_COMBO:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_CELL_RENDERER_COMBO);
end;


end.
