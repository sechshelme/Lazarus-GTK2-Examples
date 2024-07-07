unit gtkwindow;

interface

uses  glib2,// gtk2,
  common_GTK;

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


//{$include <gtk/gtkapplication.h>}
//{$include <gtk/gtkaccelgroup.h>}
//{$include <gtk/gtkwidget.h>}

type
  PGtkWindow = ^TGtkWindow;
  TGtkWindow = record
      parent_instance : TGtkWidget;
    end;

{*
 * GtkWindowClass:
 * @parent_class: The parent class.
 * @activate_focus: Activates the current focused widget within the window.
 * @activate_default: Activates the default widget for the window.
 * @keys_changed: Signal gets emitted when the set of accelerators or
 *   mnemonics that are associated with window changes.
 * @enable_debugging: Class handler for the `GtkWindow::enable-debugging`
 *   keybinding signal.
 * @close_request: Class handler for the `GtkWindow::close-request` signal.
  }
{< public > }
{ G_SIGNAL_ACTION signals for keybindings  }
{< private > }
  PGtkWindowClass = ^TGtkWindowClass;
  TGtkWindowClass = record
      parent_class : TGtkWidgetClass;
      activate_focus : procedure (window:PGtkWindow);cdecl;
      activate_default : procedure (window:PGtkWindow);cdecl;
      keys_changed : procedure (window:PGtkWindow);cdecl;
      enable_debugging : function (window:PGtkWindow; toggle:Tgboolean):Tgboolean;cdecl;
      close_request : function (window:PGtkWindow):Tgboolean;cdecl;
      padding : array[0..7] of Tgpointer;
    end;

function gtk_window_get_type:TGType;cdecl;external gtklib;
function gtk_window_new:PGtkWidget;cdecl;external gtklib;
(* Const before type ignored *)
procedure gtk_window_set_title(window:PGtkWindow; title:Pchar);cdecl;external gtklib;
(* Const before type ignored *)
function gtk_window_get_title(window:PGtkWindow):Pchar;cdecl;external gtklib;
(* Const before type ignored *)
procedure gtk_window_set_startup_id(window:PGtkWindow; startup_id:Pchar);cdecl;external gtklib;
procedure gtk_window_set_focus(window:PGtkWindow; focus:PGtkWidget);cdecl;external gtklib;
function gtk_window_get_focus(window:PGtkWindow):PGtkWidget;cdecl;external gtklib;
procedure gtk_window_set_default_widget(window:PGtkWindow; default_widget:PGtkWidget);cdecl;external gtklib;
function gtk_window_get_default_widget(window:PGtkWindow):PGtkWidget;cdecl;external gtklib;
procedure gtk_window_set_transient_for(window:PGtkWindow; parent:PGtkWindow);cdecl;external gtklib;
function gtk_window_get_transient_for(window:PGtkWindow):PGtkWindow;cdecl;external gtklib;
procedure gtk_window_set_destroy_with_parent(window:PGtkWindow; setting:Tgboolean);cdecl;external gtklib;
function gtk_window_get_destroy_with_parent(window:PGtkWindow):Tgboolean;cdecl;external gtklib;
procedure gtk_window_set_hide_on_close(window:PGtkWindow; setting:Tgboolean);cdecl;external gtklib;
function gtk_window_get_hide_on_close(window:PGtkWindow):Tgboolean;cdecl;external gtklib;
procedure gtk_window_set_mnemonics_visible(window:PGtkWindow; setting:Tgboolean);cdecl;external gtklib;
function gtk_window_get_mnemonics_visible(window:PGtkWindow):Tgboolean;cdecl;external gtklib;
procedure gtk_window_set_focus_visible(window:PGtkWindow; setting:Tgboolean);cdecl;external gtklib;
function gtk_window_get_focus_visible(window:PGtkWindow):Tgboolean;cdecl;external gtklib;
procedure gtk_window_set_resizable(window:PGtkWindow; resizable:Tgboolean);cdecl;external gtklib;
function gtk_window_get_resizable(window:PGtkWindow):Tgboolean;cdecl;external gtklib;
procedure gtk_window_set_display(window:PGtkWindow; display:PGdkDisplay);cdecl;external gtklib;
function gtk_window_is_active(window:PGtkWindow):Tgboolean;cdecl;external gtklib;
procedure gtk_window_set_decorated(window:PGtkWindow; setting:Tgboolean);cdecl;external gtklib;
function gtk_window_get_decorated(window:PGtkWindow):Tgboolean;cdecl;external gtklib;
procedure gtk_window_set_deletable(window:PGtkWindow; setting:Tgboolean);cdecl;external gtklib;
function gtk_window_get_deletable(window:PGtkWindow):Tgboolean;cdecl;external gtklib;
(* Const before type ignored *)
procedure gtk_window_set_icon_name(window:PGtkWindow; name:Pchar);cdecl;external gtklib;
(* Const before type ignored *)
function gtk_window_get_icon_name(window:PGtkWindow):Pchar;cdecl;external gtklib;
(* Const before type ignored *)
procedure gtk_window_set_default_icon_name(name:Pchar);cdecl;external gtklib;
(* Const before type ignored *)
function gtk_window_get_default_icon_name:Pchar;cdecl;external gtklib;
procedure gtk_window_set_auto_startup_notification(setting:Tgboolean);cdecl;external gtklib;
{ If window is set modal, input will be grabbed when show and released when hide  }
procedure gtk_window_set_modal(window:PGtkWindow; modal:Tgboolean);cdecl;external gtklib;
function gtk_window_get_modal(window:PGtkWindow):Tgboolean;cdecl;external gtklib;
function gtk_window_get_toplevels:PGListModel;cdecl;external gtklib;
function gtk_window_list_toplevels:PGList;cdecl;external gtklib;
procedure gtk_window_present(window:PGtkWindow);cdecl;external gtklib;
procedure gtk_window_present_with_time(window:PGtkWindow; timestamp:Tguint32);cdecl;external gtklib;
procedure gtk_window_minimize(window:PGtkWindow);cdecl;external gtklib;
procedure gtk_window_unminimize(window:PGtkWindow);cdecl;external gtklib;
procedure gtk_window_maximize(window:PGtkWindow);cdecl;external gtklib;
procedure gtk_window_unmaximize(window:PGtkWindow);cdecl;external gtklib;
procedure gtk_window_fullscreen(window:PGtkWindow);cdecl;external gtklib;
procedure gtk_window_unfullscreen(window:PGtkWindow);cdecl;external gtklib;
procedure gtk_window_fullscreen_on_monitor(window:PGtkWindow; monitor:PGdkMonitor);cdecl;external gtklib;
procedure gtk_window_close(window:PGtkWindow);cdecl;external gtklib;
{ Set initial default size of the window (does not constrain user
 * resize operations)
  }
procedure gtk_window_set_default_size(window:PGtkWindow; width:longint; height:longint);cdecl;external gtklib;
procedure gtk_window_get_default_size(window:PGtkWindow; width:Plongint; height:Plongint);cdecl;external gtklib;
function gtk_window_get_group(window:PGtkWindow):PGtkWindowGroup;cdecl;external gtklib;
function gtk_window_has_group(window:PGtkWindow):Tgboolean;cdecl;external gtklib;
function gtk_window_get_application(window:PGtkWindow):PGtkApplication;cdecl;external gtklib;
procedure gtk_window_set_application(window:PGtkWindow; application:PGtkApplication);cdecl;external gtklib;
procedure gtk_window_set_child(window:PGtkWindow; child:PGtkWidget);cdecl;external gtklib;
function gtk_window_get_child(window:PGtkWindow):PGtkWidget;cdecl;external gtklib;
procedure gtk_window_set_titlebar(window:PGtkWindow; titlebar:PGtkWidget);cdecl;external gtklib;
function gtk_window_get_titlebar(window:PGtkWindow):PGtkWidget;cdecl;external gtklib;
function gtk_window_is_maximized(window:PGtkWindow):Tgboolean;cdecl;external gtklib;
function gtk_window_is_fullscreen(window:PGtkWindow):Tgboolean;cdecl;external gtklib;
procedure gtk_window_destroy(window:PGtkWindow);cdecl;external gtklib;
procedure gtk_window_set_interactive_debugging(enable:Tgboolean);cdecl;external gtklib;
procedure gtk_window_set_handle_menubar_accel(window:PGtkWindow; handle_menubar_accel:Tgboolean);cdecl;external gtklib;
function gtk_window_get_handle_menubar_accel(window:PGtkWindow):Tgboolean;cdecl;external gtklib;

function GTK_TYPE_WINDOW : TGType;
function GTK_WINDOW(obj : Pointer) : PGtkWindow;
function GTK_WINDOW_CLASS(klass : Pointer) : PGtkWindowClass;
function GTK_IS_WINDOW(obj : Pointer) : Tgboolean;
function GTK_IS_WINDOW_CLASS(klass : Pointer) : Tgboolean;
function GTK_WINDOW_GET_CLASS(obj : Pointer) : PGtkWindowClass;

implementation

{ was #define dname def_expr }
function GTK_TYPE_WINDOW: TGType; { return type might be wrong }
  begin
    GTK_TYPE_WINDOW:=gtk_window_get_type;
  end;

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function GTK_WINDOW(obj: Pointer): PGtkWindow;
begin
//  GTK_WINDOW:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_WINDOW,GtkWindow);
  GTK_WINDOW:=PGtkWindow(obj);
end;

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function GTK_WINDOW_CLASS(klass: Pointer): PGtkWindowClass;
begin
//  GTK_WINDOW_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_WINDOW,GtkWindowClass);
  GTK_WINDOW_CLASS:=PGtkWindowClass(klass);
end;

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function GTK_IS_WINDOW(obj: Pointer): Tgboolean;
begin
  Result:=True;
//  GTK_IS_WINDOW:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_WINDOW);
end;

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function GTK_IS_WINDOW_CLASS(klass: Pointer): Tgboolean;
begin
  Result:=True;
//  GTK_IS_WINDOW_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_WINDOW);
end;

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function GTK_WINDOW_GET_CLASS(obj: Pointer): PGtkWindowClass;
begin
    GTK_WINDOW_GET_CLASS:=PGtkWindowClass(obj);
//  GTK_WINDOW_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_WINDOW,GtkWindowClass);
end;


end.
