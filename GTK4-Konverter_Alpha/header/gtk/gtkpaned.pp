
unit gtkpaned;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkpaned.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkpaned.h
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
PGtkPaned  = ^GtkPaned;
PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef __GTK_PANED_H__}
{$define __GTK_PANED_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwidget.h>}


function GTK_TYPE_PANED : longint; { return type might be wrong }

function GTK_PANED(obj : longint) : longint;

function GTK_IS_PANED(obj : longint) : longint;

type


function gtk_paned_get_type:TGType;cdecl;external;

function gtk_paned_new(orientation:TGtkOrientation):PGtkWidget;cdecl;external;

procedure gtk_paned_set_start_child(paned:PGtkPaned; child:PGtkWidget);cdecl;external;

function gtk_paned_get_start_child(paned:PGtkPaned):PGtkWidget;cdecl;external;

procedure gtk_paned_set_resize_start_child(paned:PGtkPaned; resize:Tgboolean);cdecl;external;

function gtk_paned_get_resize_start_child(paned:PGtkPaned):Tgboolean;cdecl;external;

procedure gtk_paned_set_end_child(paned:PGtkPaned; child:PGtkWidget);cdecl;external;

function gtk_paned_get_end_child(paned:PGtkPaned):PGtkWidget;cdecl;external;

procedure gtk_paned_set_shrink_start_child(paned:PGtkPaned; resize:Tgboolean);cdecl;external;

function gtk_paned_get_shrink_start_child(paned:PGtkPaned):Tgboolean;cdecl;external;

procedure gtk_paned_set_resize_end_child(paned:PGtkPaned; resize:Tgboolean);cdecl;external;

function gtk_paned_get_resize_end_child(paned:PGtkPaned):Tgboolean;cdecl;external;

procedure gtk_paned_set_shrink_end_child(paned:PGtkPaned; resize:Tgboolean);cdecl;external;

function gtk_paned_get_shrink_end_child(paned:PGtkPaned):Tgboolean;cdecl;external;

function gtk_paned_get_position(paned:PGtkPaned):longint;cdecl;external;

procedure gtk_paned_set_position(paned:PGtkPaned; position:longint);cdecl;external;

procedure gtk_paned_set_wide_handle(paned:PGtkPaned; wide:Tgboolean);cdecl;external;

function gtk_paned_get_wide_handle(paned:PGtkPaned):Tgboolean;cdecl;external;

{$endif}


implementation

function GTK_TYPE_PANED : longint; { return type might be wrong }
  begin
    GTK_TYPE_PANED:=gtk_paned_get_type;
  end;

function GTK_PANED(obj : longint) : longint;
begin
  GTK_PANED:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_PANED,GtkPaned);
end;

function GTK_IS_PANED(obj : longint) : longint;
begin
  GTK_IS_PANED:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_PANED);
end;


end.
