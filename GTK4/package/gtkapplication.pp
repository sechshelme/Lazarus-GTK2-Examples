unit gtkapplication;

interface

uses  glib2,// gtk2,
  common_GTK,
  gtkwindow;

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}

//{$include <gtk/gtkwidget.h>}
//{$include <gio/gio.h>}


type
  PGtkApplication = ^TGtkApplication;
  TGtkApplication = record
      parent_instance : TGApplication;
    end;

{*
 * GtkApplicationClass:
 * @parent_class: The parent class.
 * @window_added: Signal emitted when a `GtkWindow` is added to
 *    application through gtk_application_add_window().
 * @window_removed: Signal emitted when a `GtkWindow` is removed from
 *    application, either as a side-effect of being destroyed or
 *    explicitly through gtk_application_remove_window().
  }
{< public > }
{< private > }
  PGtkApplicationClass = ^TGtkApplicationClass;
  TGtkApplicationClass = record
      parent_class : TGApplicationClass;
      window_added : procedure (application:PGtkApplication; window:PGtkWindow);cdecl;
      window_removed : procedure (application:PGtkApplication; window:PGtkWindow);cdecl;
      padding : array[0..7] of Tgpointer;
    end;


function gtk_application_get_type:TGType;cdecl;external;
(* Const before type ignored *)
function gtk_application_new(application_id:Pchar; flags:TGApplicationFlags):PGtkApplication;cdecl;external;
procedure gtk_application_add_window(application:PGtkApplication; window:PGtkWindow);cdecl;external;
procedure gtk_application_remove_window(application:PGtkApplication; window:PGtkWindow);cdecl;external;
function gtk_application_get_windows(application:PGtkApplication):PGList;cdecl;external;
function gtk_application_get_menubar(application:PGtkApplication):PGMenuModel;cdecl;external;
procedure gtk_application_set_menubar(application:PGtkApplication; menubar:PGMenuModel);cdecl;external;
type
  PGtkApplicationInhibitFlags = ^TGtkApplicationInhibitFlags;
  TGtkApplicationInhibitFlags =  Longint;
  Const
    GTK_APPLICATION_INHIBIT_LOGOUT = 1 shl 0;
    GTK_APPLICATION_INHIBIT_SWITCH = 1 shl 1;
    GTK_APPLICATION_INHIBIT_SUSPEND = 1 shl 2;
    GTK_APPLICATION_INHIBIT_IDLE = 1 shl 3;

(* Const before type ignored *)

function gtk_application_inhibit(application:PGtkApplication; window:PGtkWindow; flags:TGtkApplicationInhibitFlags; reason:Pchar):Tguint;cdecl;external;
procedure gtk_application_uninhibit(application:PGtkApplication; cookie:Tguint);cdecl;external;
function gtk_application_get_window_by_id(application:PGtkApplication; id:Tguint):PGtkWindow;cdecl;external;
function gtk_application_get_active_window(application:PGtkApplication):PGtkWindow;cdecl;external;
function gtk_application_list_action_descriptions(application:PGtkApplication):PPchar;cdecl;external;
(* Const before type ignored *)
function gtk_application_get_accels_for_action(application:PGtkApplication; detailed_action_name:Pchar):PPchar;cdecl;external;
(* Const before type ignored *)
function gtk_application_get_actions_for_accel(application:PGtkApplication; accel:Pchar):PPchar;cdecl;external;
(* Const before type ignored *)
(* Const before type ignored *)
(* Const before declarator ignored *)
procedure gtk_application_set_accels_for_action(application:PGtkApplication; detailed_action_name:Pchar; accels:PPchar);cdecl;external;
(* Const before type ignored *)
function gtk_application_get_menu_by_id(application:PGtkApplication; id:Pchar):PGMenu;cdecl;external;

//function GTK_TYPE_BUTTON : TGType;
//function GTK_BUTTON(obj : Pointer) : PGtkButton;
//function GTK_BUTTON_CLASS(klass : Pointer) : PGtkButtonClass;
//function GTK_IS_BUTTON(obj : Pointer) : Tgboolean;
//function GTK_IS_BUTTON_CLASS(klass : Pointer) : Tgboolean;
//function GTK_BUTTON_GET_CLASS(obj : Pointer) : PGtkButtonClass;

{ was #define dname def_expr }
function GTK_TYPE_APPLICATION : TGType; { return type might be wrong }
function GTK_APPLICATION(obj : Pointer) : PGtkApplication;
function GTK_APPLICATION_CLASS(klass : Pointer) : PGtkApplicationClass;
function GTK_IS_APPLICATION(obj : Pointer) : Tgboolean;
function GTK_IS_APPLICATION_CLASS(klass : Pointer) : Tgboolean;
function GTK_APPLICATION_GET_CLASS(obj : Pointer) : PGtkApplicationClass;



implementation

{ was #define dname def_expr }
function GTK_TYPE_APPLICATION: TGType; { return type might be wrong }
  begin
    GTK_TYPE_APPLICATION:=gtk_application_get_type;
  end;

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function GTK_APPLICATION(obj: Pointer): PGtkApplication;
begin
//  GTK_APPLICATION:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_APPLICATION,GtkApplication);
  Result := PGtkApplication(g_type_check_instance_cast(obj, GTK_TYPE_APPLICATION));
end;

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function GTK_APPLICATION_CLASS(klass: Pointer): PGtkApplicationClass;
begin
//  GTK_APPLICATION_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_APPLICATION,GtkApplicationClass);
  Result := PGtkApplicationClass(g_type_check_class_cast(klass, GTK_TYPE_APPLICATION));
end;

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function GTK_IS_APPLICATION(obj: Pointer): Tgboolean;
begin
//  GTK_IS_APPLICATION:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_APPLICATION);
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_APPLICATION);
end;

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function GTK_IS_APPLICATION_CLASS(klass: Pointer): Tgboolean;
begin
//  GTK_IS_APPLICATION_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_APPLICATION);
  Result := g_type_check_class_is_a(klass, GTK_TYPE_APPLICATION);
end;

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function GTK_APPLICATION_GET_CLASS(obj: Pointer): PGtkApplicationClass;
begin
//  GTK_APPLICATION_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_APPLICATION,GtkApplicationClass);
  Result := PGtkApplicationClass(g_type_check_class_cast(obj, GTK_TYPE_APPLICATION));
end;


end.
