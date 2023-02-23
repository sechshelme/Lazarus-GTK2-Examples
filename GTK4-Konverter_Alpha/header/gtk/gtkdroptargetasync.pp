
unit gtkdroptargetasync;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkdroptargetasync.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkdroptargetasync.h
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
PGtkDropTargetAsync  = ^GtkDropTargetAsync;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}





{$ifndef __GTK_DROP_TARGET_ASYNC_H__}
{$define __GTK_DROP_TARGET_ASYNC_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwidget.h>}

type

function GTK_TYPE_DROP_TARGET_ASYNC : longint; { return type might be wrong }

function GTK_DROP_TARGET_ASYNC(o : longint) : longint;

function GTK_DROP_TARGET_ASYNC_CLASS(k : longint) : longint;

function GTK_IS_DROP_TARGET_ASYNC(o : longint) : longint;

function GTK_IS_DROP_TARGET_ASYNC_CLASS(k : longint) : longint;

function GTK_DROP_TARGET_ASYNC_GET_CLASS(o : longint) : longint;


function gtk_drop_target_async_get_type:TGType;cdecl;external;

function gtk_drop_target_async_new(formats:PGdkContentFormats; actions:TGdkDragAction):PGtkDropTargetAsync;cdecl;external;

procedure gtk_drop_target_async_set_formats(self:PGtkDropTargetAsync; formats:PGdkContentFormats);cdecl;external;

function gtk_drop_target_async_get_formats(self:PGtkDropTargetAsync):PGdkContentFormats;cdecl;external;

procedure gtk_drop_target_async_set_actions(self:PGtkDropTargetAsync; actions:TGdkDragAction);cdecl;external;

function gtk_drop_target_async_get_actions(self:PGtkDropTargetAsync):TGdkDragAction;cdecl;external;

procedure gtk_drop_target_async_reject_drop(self:PGtkDropTargetAsync; drop:PGdkDrop);cdecl;external;

{$endif}


implementation

function GTK_TYPE_DROP_TARGET_ASYNC : longint; { return type might be wrong }
  begin
    GTK_TYPE_DROP_TARGET_ASYNC:=gtk_drop_target_async_get_type;
  end;

function GTK_DROP_TARGET_ASYNC(o : longint) : longint;
begin
  GTK_DROP_TARGET_ASYNC:=G_TYPE_CHECK_INSTANCE_CAST(o,GTK_TYPE_DROP_TARGET_ASYNC,GtkDropTargetAsync);
end;

function GTK_DROP_TARGET_ASYNC_CLASS(k : longint) : longint;
begin
  GTK_DROP_TARGET_ASYNC_CLASS:=G_TYPE_CHECK_CLASS_CAST(k,GTK_TYPE_DROP_TARGET_ASYNC,GtkDropTargetAsyncClass);
end;

function GTK_IS_DROP_TARGET_ASYNC(o : longint) : longint;
begin
  GTK_IS_DROP_TARGET_ASYNC:=G_TYPE_CHECK_INSTANCE_TYPE(o,GTK_TYPE_DROP_TARGET_ASYNC);
end;

function GTK_IS_DROP_TARGET_ASYNC_CLASS(k : longint) : longint;
begin
  GTK_IS_DROP_TARGET_ASYNC_CLASS:=G_TYPE_CHECK_CLASS_TYPE(k,GTK_TYPE_DROP_TARGET_ASYNC);
end;

function GTK_DROP_TARGET_ASYNC_GET_CLASS(o : longint) : longint;
begin
  GTK_DROP_TARGET_ASYNC_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(o,GTK_TYPE_DROP_TARGET_ASYNC,GtkDropTargetAsyncClass);
end;


end.
