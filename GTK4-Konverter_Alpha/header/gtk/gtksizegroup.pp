
unit gtksizegroup;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtksizegroup.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtksizegroup.h
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
PGSList  = ^GSList;
PGtkSizeGroup  = ^GtkSizeGroup;
PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_SIZE_GROUP_H__}
{$define __GTK_SIZE_GROUP_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwidget.h>}


function GTK_TYPE_SIZE_GROUP : longint; { return type might be wrong }

function GTK_SIZE_GROUP(obj : longint) : longint;

function GTK_IS_SIZE_GROUP(obj : longint) : longint;

type
  PGtkSizeGroup = ^TGtkSizeGroup;
  TGtkSizeGroup = record
      parent_instance : TGObject;
    end;



function gtk_size_group_get_type:TGType;cdecl;external;

function gtk_size_group_new(mode:TGtkSizeGroupMode):PGtkSizeGroup;cdecl;external;

procedure gtk_size_group_set_mode(size_group:PGtkSizeGroup; mode:TGtkSizeGroupMode);cdecl;external;

function gtk_size_group_get_mode(size_group:PGtkSizeGroup):TGtkSizeGroupMode;cdecl;external;

procedure gtk_size_group_add_widget(size_group:PGtkSizeGroup; widget:PGtkWidget);cdecl;external;

procedure gtk_size_group_remove_widget(size_group:PGtkSizeGroup; widget:PGtkWidget);cdecl;external;

function gtk_size_group_get_widgets(size_group:PGtkSizeGroup):PGSList;cdecl;external;

{$endif}


implementation

function GTK_TYPE_SIZE_GROUP : longint; { return type might be wrong }
  begin
    GTK_TYPE_SIZE_GROUP:=gtk_size_group_get_type;
  end;

function GTK_SIZE_GROUP(obj : longint) : longint;
begin
  GTK_SIZE_GROUP:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_SIZE_GROUP,GtkSizeGroup);
end;

function GTK_IS_SIZE_GROUP(obj : longint) : longint;
begin
  GTK_IS_SIZE_GROUP:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_SIZE_GROUP);
end;


end.
