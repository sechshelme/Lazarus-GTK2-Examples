
unit gtkcellareacontext;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkcellareacontext.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkcellareacontext.h
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
PGtkCellArea  = ^GtkCellArea;
PGtkCellAreaContext  = ^GtkCellAreaContext;
PGtkCellAreaContextClass  = ^GtkCellAreaContextClass;
Plongint  = ^longint;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_CELL_AREA_CONTEXT_H__}
{$define __GTK_CELL_AREA_CONTEXT_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkcellarea.h>}


function GTK_TYPE_CELL_AREA_CONTEXT : longint; { return type might be wrong }

function GTK_CELL_AREA_CONTEXT(obj : longint) : longint;

function GTK_CELL_AREA_CONTEXT_CLASS(klass : longint) : longint;

function GTK_IS_CELL_AREA_CONTEXT(obj : longint) : longint;

function GTK_IS_CELL_AREA_CONTEXT_CLASS(klass : longint) : longint;

function GTK_CELL_AREA_CONTEXT_GET_CLASS(obj : longint) : longint;

type

  PGtkCellAreaContext = ^TGtkCellAreaContext;
  TGtkCellAreaContext = record
      parent_instance : TGObject;
    end;





  PGtkCellAreaContextClass = ^TGtkCellAreaContextClass;
  TGtkCellAreaContextClass = record
      parent_class : TGObjectClass;
      allocate : procedure (context:PGtkCellAreaContext; width:longint; height:longint);cdecl;
      reset : procedure (context:PGtkCellAreaContext);cdecl;
      get_preferred_height_for_width : procedure (context:PGtkCellAreaContext; width:longint; minimum_height:Plongint; natural_height:Plongint);cdecl;
      get_preferred_width_for_height : procedure (context:PGtkCellAreaContext; height:longint; minimum_width:Plongint; natural_width:Plongint);cdecl;
      padding : array[0..7] of Tgpointer;
    end;



function gtk_cell_area_context_get_type:TGType;cdecl;external;


function gtk_cell_area_context_get_area(context:PGtkCellAreaContext):PGtkCellArea;cdecl;external;

procedure gtk_cell_area_context_allocate(context:PGtkCellAreaContext; width:longint; height:longint);cdecl;external;

procedure gtk_cell_area_context_reset(context:PGtkCellAreaContext);cdecl;external;


procedure gtk_cell_area_context_get_preferred_width(context:PGtkCellAreaContext; minimum_width:Plongint; natural_width:Plongint);cdecl;external;

procedure gtk_cell_area_context_get_preferred_height(context:PGtkCellAreaContext; minimum_height:Plongint; natural_height:Plongint);cdecl;external;

procedure gtk_cell_area_context_get_preferred_height_for_width(context:PGtkCellAreaContext; width:longint; minimum_height:Plongint; natural_height:Plongint);cdecl;external;

procedure gtk_cell_area_context_get_preferred_width_for_height(context:PGtkCellAreaContext; height:longint; minimum_width:Plongint; natural_width:Plongint);cdecl;external;

procedure gtk_cell_area_context_get_allocation(context:PGtkCellAreaContext; width:Plongint; height:Plongint);cdecl;external;


procedure gtk_cell_area_context_push_preferred_width(context:PGtkCellAreaContext; minimum_width:longint; natural_width:longint);cdecl;external;

procedure gtk_cell_area_context_push_preferred_height(context:PGtkCellAreaContext; minimum_height:longint; natural_height:longint);cdecl;external;

{$endif}


implementation

function GTK_TYPE_CELL_AREA_CONTEXT : longint; { return type might be wrong }
  begin
    GTK_TYPE_CELL_AREA_CONTEXT:=gtk_cell_area_context_get_type;
  end;

function GTK_CELL_AREA_CONTEXT(obj : longint) : longint;
begin
  GTK_CELL_AREA_CONTEXT:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_CELL_AREA_CONTEXT,GtkCellAreaContext);
end;

function GTK_CELL_AREA_CONTEXT_CLASS(klass : longint) : longint;
begin
  GTK_CELL_AREA_CONTEXT_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_CELL_AREA_CONTEXT,GtkCellAreaContextClass);
end;

function GTK_IS_CELL_AREA_CONTEXT(obj : longint) : longint;
begin
  GTK_IS_CELL_AREA_CONTEXT:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_CELL_AREA_CONTEXT);
end;

function GTK_IS_CELL_AREA_CONTEXT_CLASS(klass : longint) : longint;
begin
  GTK_IS_CELL_AREA_CONTEXT_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_CELL_AREA_CONTEXT);
end;

function GTK_CELL_AREA_CONTEXT_GET_CLASS(obj : longint) : longint;
begin
  GTK_CELL_AREA_CONTEXT_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_CELL_AREA_CONTEXT,GtkCellAreaContextClass);
end;


end.
