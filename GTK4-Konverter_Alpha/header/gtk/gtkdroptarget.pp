
unit gtkdroptarget;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkdroptarget.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkdroptarget.h
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
PGdkContentFormats  = ^GdkContentFormats;
PGdkDrop  = ^GdkDrop;
Pgsize  = ^gsize;
PGtkDropTarget  = ^GtkDropTarget;
PGType  = ^GType;
PGValue  = ^GValue;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_DROP_TARGET_H__}
{$define __GTK_DROP_TARGET_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtktypes.h>}

type

function GTK_TYPE_DROP_TARGET : longint; { return type might be wrong }

function GTK_DROP_TARGET(o : longint) : longint;

function GTK_DROP_TARGET_CLASS(k : longint) : longint;

function GTK_IS_DROP_TARGET(o : longint) : longint;

function GTK_IS_DROP_TARGET_CLASS(k : longint) : longint;

function GTK_DROP_TARGET_GET_CLASS(o : longint) : longint;

type


function gtk_drop_target_get_type:TGType;cdecl;external;

function gtk_drop_target_new(_type:TGType; actions:TGdkDragAction):PGtkDropTarget;cdecl;external;

procedure gtk_drop_target_set_gtypes(self:PGtkDropTarget; types:PGType; n_types:Tgsize);cdecl;external;

function gtk_drop_target_get_gtypes(self:PGtkDropTarget; n_types:Pgsize):PGType;cdecl;external;

function gtk_drop_target_get_formats(self:PGtkDropTarget):PGdkContentFormats;cdecl;external;

procedure gtk_drop_target_set_actions(self:PGtkDropTarget; actions:TGdkDragAction);cdecl;external;

function gtk_drop_target_get_actions(self:PGtkDropTarget):TGdkDragAction;cdecl;external;

procedure gtk_drop_target_set_preload(self:PGtkDropTarget; preload:Tgboolean);cdecl;external;

function gtk_drop_target_get_preload(self:PGtkDropTarget):Tgboolean;cdecl;external;
(* error 
GdkDrop *               gtk_drop_target_get_drop         (GtkDropTarget         *self);
 in declarator_list *)

function gtk_drop_target_get_current_drop(self:PGtkDropTarget):PGdkDrop;cdecl;external;

function gtk_drop_target_get_value(self:PGtkDropTarget):PGValue;cdecl;external;

procedure gtk_drop_target_reject(self:PGtkDropTarget);cdecl;external;

{$endif}


implementation

function GTK_TYPE_DROP_TARGET : longint; { return type might be wrong }
  begin
    GTK_TYPE_DROP_TARGET:=gtk_drop_target_get_type;
  end;

function GTK_DROP_TARGET(o : longint) : longint;
begin
  GTK_DROP_TARGET:=G_TYPE_CHECK_INSTANCE_CAST(o,GTK_TYPE_DROP_TARGET,GtkDropTarget);
end;

function GTK_DROP_TARGET_CLASS(k : longint) : longint;
begin
  GTK_DROP_TARGET_CLASS:=G_TYPE_CHECK_CLASS_CAST(k,GTK_TYPE_DROP_TARGET,GtkDropTargetClass);
end;

function GTK_IS_DROP_TARGET(o : longint) : longint;
begin
  GTK_IS_DROP_TARGET:=G_TYPE_CHECK_INSTANCE_TYPE(o,GTK_TYPE_DROP_TARGET);
end;

function GTK_IS_DROP_TARGET_CLASS(k : longint) : longint;
begin
  GTK_IS_DROP_TARGET_CLASS:=G_TYPE_CHECK_CLASS_TYPE(k,GTK_TYPE_DROP_TARGET);
end;

function GTK_DROP_TARGET_GET_CLASS(o : longint) : longint;
begin
  GTK_DROP_TARGET_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(o,GTK_TYPE_DROP_TARGET,GtkDropTargetClass);
end;


end.
