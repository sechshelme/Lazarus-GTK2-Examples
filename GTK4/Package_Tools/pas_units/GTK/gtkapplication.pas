unit gtkapplication;

interface

uses
  glib2, common_GTK, gtktypes, gtkwidget, gtkwindow;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}

  // type // Muss ausgelagert sein
  //PGtkApplication = ^TGtkApplication;
  //TGtkApplication = record
  //    parent_instance : TGApplication;
  //  end;

type
  TGtkApplicationClass = record
    parent_class: TGApplicationClass;
    window_added: procedure(application: PGtkApplication; window: PGtkWindow); cdecl;
    window_removed: procedure(application: PGtkApplication; window: PGtkWindow); cdecl;
    padding: array[0..7] of Tgpointer;
  end;
  PGtkApplicationClass = ^TGtkApplicationClass;


function gtk_application_get_type: TGType; cdecl; external gtklib;
function gtk_application_new(application_id: PChar; flags: TGApplicationFlags): PGtkApplication; cdecl; external gtklib;
procedure gtk_application_add_window(application: PGtkApplication; window: PGtkWindow); cdecl; external gtklib;
procedure gtk_application_remove_window(application: PGtkApplication; window: PGtkWindow); cdecl; external gtklib;
function gtk_application_get_windows(application: PGtkApplication): PGList; cdecl; external gtklib;
function gtk_application_get_menubar(application: PGtkApplication): PGMenuModel; cdecl; external gtklib;
procedure gtk_application_set_menubar(application: PGtkApplication; menubar: PGMenuModel); cdecl; external gtklib;

type
  PGtkApplicationInhibitFlags = ^TGtkApplicationInhibitFlags;
  TGtkApplicationInhibitFlags = longint;

const
  GTK_APPLICATION_INHIBIT_LOGOUT = 1 shl 0;
  GTK_APPLICATION_INHIBIT_SWITCH = 1 shl 1;
  GTK_APPLICATION_INHIBIT_SUSPEND = 1 shl 2;
  GTK_APPLICATION_INHIBIT_IDLE = 1 shl 3;

function gtk_application_inhibit(application: PGtkApplication; window: PGtkWindow; flags: TGtkApplicationInhibitFlags; reason: PChar): Tguint; cdecl; external gtklib;
procedure gtk_application_uninhibit(application: PGtkApplication; cookie: Tguint); cdecl; external gtklib;
function gtk_application_get_window_by_id(application: PGtkApplication; id: Tguint): PGtkWindow; cdecl; external gtklib;
function gtk_application_get_active_window(application: PGtkApplication): PGtkWindow; cdecl; external gtklib;
function gtk_application_list_action_descriptions(application: PGtkApplication): PPchar; cdecl; external gtklib;
function gtk_application_get_accels_for_action(application: PGtkApplication; detailed_action_name: PChar): PPchar; cdecl; external gtklib;
function gtk_application_get_actions_for_accel(application: PGtkApplication; accel: PChar): PPchar; cdecl; external gtklib;
procedure gtk_application_set_accels_for_action(application: PGtkApplication; detailed_action_name: PChar; accels: PPchar); cdecl; external gtklib;
function gtk_application_get_menu_by_id(application: PGtkApplication; id: PChar): PGMenu; cdecl; external gtklib;

// === Konventiert am: 11-7-24 22:33:02 ===

function GTK_TYPE_APPLICATION: TGType;
function GTK_APPLICATION(obj: Pointer): PGtkApplication;
function GTK_APPLICATION_CLASS(klass: Pointer): PGtkApplicationClass;
function GTK_IS_APPLICATION(obj: Pointer): Tgboolean;
function GTK_IS_APPLICATION_CLASS(klass: Pointer): Tgboolean;
function GTK_APPLICATION_GET_CLASS(obj: Pointer): PGtkApplicationClass;

implementation

function GTK_TYPE_APPLICATION: TGType;
begin
  GTK_TYPE_APPLICATION := gtk_application_get_type;
end;

function GTK_APPLICATION(obj: Pointer): PGtkApplication;
begin
  Result := PGtkApplication(g_type_check_instance_cast(obj, GTK_TYPE_APPLICATION));
end;

function GTK_APPLICATION_CLASS(klass: Pointer): PGtkApplicationClass;
begin
  Result := PGtkApplicationClass(g_type_check_class_cast(klass, GTK_TYPE_APPLICATION));
end;

function GTK_IS_APPLICATION(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_APPLICATION);
end;

function GTK_IS_APPLICATION_CLASS(klass: Pointer): Tgboolean;
begin
  Result := g_type_check_class_is_a(klass, GTK_TYPE_APPLICATION);
end;

function GTK_APPLICATION_GET_CLASS(obj: Pointer): PGtkApplicationClass;
begin
  Result := PGtkApplicationClass(PGTypeInstance(obj)^.g_class);
end;



end.
