/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}

type
  TGtkActionBar = record  // _GtkActionBar
  end;
  PGtkActionBar = ^TGtkActionBar;

function gtk_action_bar_get_type:TGType;cdecl;external gtklib;
function gtk_action_bar_new:PGtkWidget;cdecl;external gtklib;
function gtk_action_bar_get_center_widget(action_bar:PGtkActionBar):PGtkWidget;cdecl;external gtklib;
procedure gtk_action_bar_set_center_widget(action_bar:PGtkActionBar; center_widget:PGtkWidget);cdecl;external gtklib;
procedure gtk_action_bar_pack_start(action_bar:PGtkActionBar; child:PGtkWidget);cdecl;external gtklib;
procedure gtk_action_bar_pack_end(action_bar:PGtkActionBar; child:PGtkWidget);cdecl;external gtklib;
procedure gtk_action_bar_remove(action_bar:PGtkActionBar; child:PGtkWidget);cdecl;external gtklib;
procedure gtk_action_bar_set_revealed(action_bar:PGtkActionBar; revealed:Tgboolean);cdecl;external gtklib;
function gtk_action_bar_get_revealed(action_bar:PGtkActionBar):Tgboolean;cdecl;external gtklib;

// === Konventiert am: 11-7-24 22:37:57 ===

function GTK_TYPE_ACTION_BAR : TGType;
function GTK_ACTION_BAR(obj : Pointer) : PGtkActionBar;
function GTK_IS_ACTION_BAR(obj : Pointer) : Tgboolean;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GTK_TYPE_ACTION_BAR : TGType;
  begin
    GTK_TYPE_ACTION_BAR:=gtk_action_bar_get_type;
  end;

function GTK_ACTION_BAR(obj : Pointer) : PGtkActionBar;
begin
  Result := PGtkActionBar(g_type_check_instance_cast(obj, GTK_TYPE_ACTION_BAR));
end;

function GTK_IS_ACTION_BAR(obj : Pointer) : Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj,  GTK_TYPE_ACTION_BAR);
end;



{$ENDIF read_implementation}
