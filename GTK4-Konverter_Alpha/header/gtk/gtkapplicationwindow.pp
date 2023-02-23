
unit gtkapplicationwindow;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkapplicationwindow.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkapplicationwindow.h
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
PGtkApplication  = ^GtkApplication;
PGtkApplicationWindow  = ^GtkApplicationWindow;
PGtkApplicationWindowClass  = ^GtkApplicationWindowClass;
PGtkShortcutsWindow  = ^GtkShortcutsWindow;
PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_APPLICATION_WINDOW_H__}
{$define __GTK_APPLICATION_WINDOW_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwindow.h>}
{$include <gtk/gtkshortcutswindow.h>}


function GTK_TYPE_APPLICATION_WINDOW : longint; { return type might be wrong }

function GTK_APPLICATION_WINDOW(inst : longint) : longint;

function GTK_APPLICATION_WINDOW_CLASS(_class : longint) : longint;

function GTK_IS_APPLICATION_WINDOW(inst : longint) : longint;

function GTK_IS_APPLICATION_WINDOW_CLASS(_class : longint) : longint;

function GTK_APPLICATION_WINDOW_GET_CLASS(inst : longint) : longint;

type
  PGtkApplicationWindow = ^TGtkApplicationWindow;
  TGtkApplicationWindow = record
      parent_instance : TGtkWindow;
    end;



  PGtkApplicationWindowClass = ^TGtkApplicationWindowClass;
  TGtkApplicationWindowClass = record
      parent_class : TGtkWindowClass;
      padding : array[0..7] of Tgpointer;
    end;



function gtk_application_window_get_type:TGType;cdecl;external;

function gtk_application_window_new(application:PGtkApplication):PGtkWidget;cdecl;external;

procedure gtk_application_window_set_show_menubar(window:PGtkApplicationWindow; show_menubar:Tgboolean);cdecl;external;

function gtk_application_window_get_show_menubar(window:PGtkApplicationWindow):Tgboolean;cdecl;external;

function gtk_application_window_get_id(window:PGtkApplicationWindow):Tguint;cdecl;external;

procedure gtk_application_window_set_help_overlay(window:PGtkApplicationWindow; help_overlay:PGtkShortcutsWindow);cdecl;external;

function gtk_application_window_get_help_overlay(window:PGtkApplicationWindow):PGtkShortcutsWindow;cdecl;external;

{$endif}


implementation

function GTK_TYPE_APPLICATION_WINDOW : longint; { return type might be wrong }
  begin
    GTK_TYPE_APPLICATION_WINDOW:=gtk_application_window_get_type;
  end;

function GTK_APPLICATION_WINDOW(inst : longint) : longint;
begin
  GTK_APPLICATION_WINDOW:=G_TYPE_CHECK_INSTANCE_CAST(inst,GTK_TYPE_APPLICATION_WINDOW,GtkApplicationWindow);
end;

function GTK_APPLICATION_WINDOW_CLASS(_class : longint) : longint;
begin
  GTK_APPLICATION_WINDOW_CLASS:=G_TYPE_CHECK_CLASS_CAST(_class,GTK_TYPE_APPLICATION_WINDOW,GtkApplicationWindowClass);
end;

function GTK_IS_APPLICATION_WINDOW(inst : longint) : longint;
begin
  GTK_IS_APPLICATION_WINDOW:=G_TYPE_CHECK_INSTANCE_TYPE(inst,GTK_TYPE_APPLICATION_WINDOW);
end;

function GTK_IS_APPLICATION_WINDOW_CLASS(_class : longint) : longint;
begin
  GTK_IS_APPLICATION_WINDOW_CLASS:=G_TYPE_CHECK_CLASS_TYPE(_class,GTK_TYPE_APPLICATION_WINDOW);
end;

function GTK_APPLICATION_WINDOW_GET_CLASS(inst : longint) : longint;
begin
  GTK_APPLICATION_WINDOW_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(inst,GTK_TYPE_APPLICATION_WINDOW,GtkApplicationWindowClass);
end;


end.
