
unit gtkwindowgroup;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkwindowgroup.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkwindowgroup.h
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
PGList  = ^GList;
PGtkWindow  = ^GtkWindow;
PGtkWindowGroup  = ^GtkWindowGroup;
PGtkWindowGroupClass  = ^GtkWindowGroupClass;
PGtkWindowGroupPrivate  = ^GtkWindowGroupPrivate;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef __GTK_WINDOW_GROUP_H__}
{$define __GTK_WINDOW_GROUP_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include "gtkwindow.h"}


function GTK_TYPE_WINDOW_GROUP : longint; { return type might be wrong }

function GTK_WINDOW_GROUP(object : longint) : longint;

function GTK_WINDOW_GROUP_CLASS(klass : longint) : longint;

function GTK_IS_WINDOW_GROUP(object : longint) : longint;

function GTK_IS_WINDOW_GROUP_CLASS(klass : longint) : longint;

function GTK_WINDOW_GROUP_GET_CLASS(obj : longint) : longint;

type
  PGtkWindowGroup = ^TGtkWindowGroup;
  TGtkWindowGroup = record
      parent_instance : TGObject;
      priv : PGtkWindowGroupPrivate;
    end;


  PGtkWindowGroupClass = ^TGtkWindowGroupClass;
  TGtkWindowGroupClass = record
      parent_class : TGObjectClass;
      _gtk_reserved1 : procedure ;cdecl;
      _gtk_reserved2 : procedure ;cdecl;
      _gtk_reserved3 : procedure ;cdecl;
      _gtk_reserved4 : procedure ;cdecl;
    end;




function gtk_window_group_get_type:TGType;cdecl;external;

function gtk_window_group_new:PGtkWindowGroup;cdecl;external;

procedure gtk_window_group_add_window(window_group:PGtkWindowGroup; window:PGtkWindow);cdecl;external;

procedure gtk_window_group_remove_window(window_group:PGtkWindowGroup; window:PGtkWindow);cdecl;external;

function gtk_window_group_list_windows(window_group:PGtkWindowGroup):PGList;cdecl;external;

{$endif}


implementation

function GTK_TYPE_WINDOW_GROUP : longint; { return type might be wrong }
  begin
    GTK_TYPE_WINDOW_GROUP:=gtk_window_group_get_type;
  end;

function GTK_WINDOW_GROUP(object : longint) : longint;
begin
  GTK_WINDOW_GROUP:=G_TYPE_CHECK_INSTANCE_CAST(object,GTK_TYPE_WINDOW_GROUP,GtkWindowGroup);
end;

function GTK_WINDOW_GROUP_CLASS(klass : longint) : longint;
begin
  GTK_WINDOW_GROUP_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_WINDOW_GROUP,GtkWindowGroupClass);
end;

function GTK_IS_WINDOW_GROUP(object : longint) : longint;
begin
  GTK_IS_WINDOW_GROUP:=G_TYPE_CHECK_INSTANCE_TYPE(object,GTK_TYPE_WINDOW_GROUP);
end;

function GTK_IS_WINDOW_GROUP_CLASS(klass : longint) : longint;
begin
  GTK_IS_WINDOW_GROUP_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_WINDOW_GROUP);
end;

function GTK_WINDOW_GROUP_GET_CLASS(obj : longint) : longint;
begin
  GTK_WINDOW_GROUP_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_WINDOW_GROUP,GtkWindowGroupClass);
end;


end.
