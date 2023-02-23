
unit gtkcellrenderertext;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkcellrenderertext.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkcellrenderertext.h
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
PGtkCellRenderer  = ^GtkCellRenderer;
PGtkCellRendererText  = ^GtkCellRendererText;
PGtkCellRendererTextClass  = ^GtkCellRendererTextClass;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_CELL_RENDERER_TEXT_H__}
{$define __GTK_CELL_RENDERER_TEXT_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkcellrenderer.h>}


function GTK_TYPE_CELL_RENDERER_TEXT : longint; { return type might be wrong }

function GTK_CELL_RENDERER_TEXT(obj : longint) : longint;

function GTK_CELL_RENDERER_TEXT_CLASS(klass : longint) : longint;

function GTK_IS_CELL_RENDERER_TEXT(obj : longint) : longint;

function GTK_IS_CELL_RENDERER_TEXT_CLASS(klass : longint) : longint;

function GTK_CELL_RENDERER_TEXT_GET_CLASS(obj : longint) : longint;

type
  PGtkCellRendererText = ^TGtkCellRendererText;
  TGtkCellRendererText = record
      parent : TGtkCellRenderer;
    end;


  PGtkCellRendererTextClass = ^TGtkCellRendererTextClass;
  TGtkCellRendererTextClass = record
      parent_class : TGtkCellRendererClass;
      edited : procedure (cell_renderer_text:PGtkCellRendererText; path:Pchar; new_text:Pchar);cdecl;
      padding : array[0..7] of Tgpointer;
    end;



function gtk_cell_renderer_text_get_type:TGType;cdecl;external;

function gtk_cell_renderer_text_new:PGtkCellRenderer;cdecl;external;

procedure gtk_cell_renderer_text_set_fixed_height_from_font(renderer:PGtkCellRendererText; number_of_rows:longint);cdecl;external;

{$endif}


implementation

function GTK_TYPE_CELL_RENDERER_TEXT : longint; { return type might be wrong }
  begin
    GTK_TYPE_CELL_RENDERER_TEXT:=gtk_cell_renderer_text_get_type;
  end;

function GTK_CELL_RENDERER_TEXT(obj : longint) : longint;
begin
  GTK_CELL_RENDERER_TEXT:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_CELL_RENDERER_TEXT,GtkCellRendererText);
end;

function GTK_CELL_RENDERER_TEXT_CLASS(klass : longint) : longint;
begin
  GTK_CELL_RENDERER_TEXT_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_CELL_RENDERER_TEXT,GtkCellRendererTextClass);
end;

function GTK_IS_CELL_RENDERER_TEXT(obj : longint) : longint;
begin
  GTK_IS_CELL_RENDERER_TEXT:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_CELL_RENDERER_TEXT);
end;

function GTK_IS_CELL_RENDERER_TEXT_CLASS(klass : longint) : longint;
begin
  GTK_IS_CELL_RENDERER_TEXT_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_CELL_RENDERER_TEXT);
end;

function GTK_CELL_RENDERER_TEXT_GET_CLASS(obj : longint) : longint;
begin
  GTK_CELL_RENDERER_TEXT_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_CELL_RENDERER_TEXT,GtkCellRendererTextClass);
end;


end.
