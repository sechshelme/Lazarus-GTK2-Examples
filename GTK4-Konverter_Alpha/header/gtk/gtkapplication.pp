
unit gtkapplication;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkapplication.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkapplication.h
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
PGList  = ^GList;
PGMenu  = ^GMenu;
PGMenuModel  = ^GMenuModel;
PGtkApplication  = ^GtkApplication;
PGtkApplicationClass  = ^GtkApplicationClass;
PGtkApplicationInhibitFlags  = ^GtkApplicationInhibitFlags;
PGtkWindow  = ^GtkWindow;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_APPLICATION_H__}
{$define __GTK_APPLICATION_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwidget.h>}
{$include <gio/gio.h>}


function GTK_TYPE_APPLICATION : longint; { return type might be wrong }

function GTK_APPLICATION(obj : longint) : longint;

function GTK_APPLICATION_CLASS(klass : longint) : longint;

function GTK_IS_APPLICATION(obj : longint) : longint;

function GTK_IS_APPLICATION_CLASS(klass : longint) : longint;

function GTK_APPLICATION_GET_CLASS(obj : longint) : longint;

type
  PGtkApplication = ^TGtkApplication;
  TGtkApplication = record
      parent_instance : TGApplication;
    end;




  PGtkApplicationClass = ^TGtkApplicationClass;
  TGtkApplicationClass = record
      parent_class : TGApplicationClass;
      window_added : procedure (application:PGtkApplication; window:PGtkWindow);cdecl;
      window_removed : procedure (application:PGtkApplication; window:PGtkWindow);cdecl;
      padding : array[0..7] of Tgpointer;
    end;



function gtk_application_get_type:TGType;cdecl;external;

function gtk_application_new(application_id:Pchar; flags:TGApplicationFlags):PGtkApplication;cdecl;external;

procedure gtk_application_add_window(application:PGtkApplication; window:PGtkWindow);cdecl;external;

procedure gtk_application_remove_window(application:PGtkApplication; window:PGtkWindow);cdecl;external;

function gtk_application_get_windows(application:PGtkApplication):PGList;cdecl;external;

function gtk_application_get_menubar(application:PGtkApplication):PGMenuModel;cdecl;external;

procedure gtk_application_set_menubar(application:PGtkApplication; menubar:PGMenuModel);cdecl;external;
type
  PGtkApplicationInhibitFlags = ^TGtkApplicationInhibitFlags;
  TGtkApplicationInhibitFlags = (GTK_APPLICATION_INHIBIT_LOGOUT := 1 shl 0,GTK_APPLICATION_INHIBIT_SWITCH := 1 shl 1,
    GTK_APPLICATION_INHIBIT_SUSPEND := 1 shl 2,
    GTK_APPLICATION_INHIBIT_IDLE := 1 shl 3);


function gtk_application_inhibit(application:PGtkApplication; window:PGtkWindow; flags:TGtkApplicationInhibitFlags; reason:Pchar):Tguint;cdecl;external;

procedure gtk_application_uninhibit(application:PGtkApplication; cookie:Tguint);cdecl;external;

function gtk_application_get_window_by_id(application:PGtkApplication; id:Tguint):PGtkWindow;cdecl;external;

function gtk_application_get_active_window(application:PGtkApplication):PGtkWindow;cdecl;external;

function gtk_application_list_action_descriptions(application:PGtkApplication):^Pchar;cdecl;external;

function gtk_application_get_accels_for_action(application:PGtkApplication; detailed_action_name:Pchar):^Pchar;cdecl;external;

function gtk_application_get_actions_for_accel(application:PGtkApplication; accel:Pchar):^Pchar;cdecl;external;

procedure gtk_application_set_accels_for_action(application:PGtkApplication; detailed_action_name:Pchar; accels:PPchar);cdecl;external;

function gtk_application_get_menu_by_id(application:PGtkApplication; id:Pchar):PGMenu;cdecl;external;


{$endif}


implementation

function GTK_TYPE_APPLICATION : longint; { return type might be wrong }
  begin
    GTK_TYPE_APPLICATION:=gtk_application_get_type;
  end;

function GTK_APPLICATION(obj : longint) : longint;
begin
  GTK_APPLICATION:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_APPLICATION,GtkApplication);
end;

function GTK_APPLICATION_CLASS(klass : longint) : longint;
begin
  GTK_APPLICATION_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_APPLICATION,GtkApplicationClass);
end;

function GTK_IS_APPLICATION(obj : longint) : longint;
begin
  GTK_IS_APPLICATION:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_APPLICATION);
end;

function GTK_IS_APPLICATION_CLASS(klass : longint) : longint;
begin
  GTK_IS_APPLICATION_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_APPLICATION);
end;

function GTK_APPLICATION_GET_CLASS(obj : longint) : longint;
begin
  GTK_APPLICATION_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_APPLICATION,GtkApplicationClass);
end;


end.
