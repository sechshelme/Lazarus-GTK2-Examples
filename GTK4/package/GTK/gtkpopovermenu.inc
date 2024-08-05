/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}

type
  TGtkPopoverMenu = record // _GtkPopoverMenu
  end;
  PGtkPopoverMenu = ^TGtkPopoverMenu;

function gtk_popover_menu_get_type: TGType; cdecl; external gtklib;
function gtk_popover_menu_new_from_model(model: PGMenuModel): PGtkWidget; cdecl; external gtklib;
function gtk_popover_menu_new_from_model_full(model: PGMenuModel; flags: TGtkPopoverMenuFlags): PGtkWidget; cdecl; external gtklib;
procedure gtk_popover_menu_set_menu_model(popover: PGtkPopoverMenu; model: PGMenuModel); cdecl; external gtklib;
function gtk_popover_menu_get_menu_model(popover: PGtkPopoverMenu): PGMenuModel; cdecl; external gtklib;
procedure gtk_popover_menu_set_flags(popover: PGtkPopoverMenu; flags: TGtkPopoverMenuFlags); cdecl; external gtklib;
function gtk_popover_menu_get_flags(popover: PGtkPopoverMenu): TGtkPopoverMenuFlags; cdecl; external gtklib;
function gtk_popover_menu_add_child(popover: PGtkPopoverMenu; child: PGtkWidget; id: PChar): Tgboolean; cdecl; external gtklib;
function gtk_popover_menu_remove_child(popover: PGtkPopoverMenu; child: PGtkWidget): Tgboolean; cdecl; external gtklib;

// === Konventiert am: 24-7-24 16:58:05 ===

function GTK_TYPE_POPOVER_MENU: TGType;
function GTK_POPOVER_MENU(obj: Pointer): PGtkPopoverMenu;
function GTK_IS_POPOVER_MENU(obj: Pointer): Tgboolean;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GTK_TYPE_POPOVER_MENU: TGType;
begin
  GTK_TYPE_POPOVER_MENU := gtk_popover_menu_get_type;
end;

function GTK_POPOVER_MENU(obj: Pointer): PGtkPopoverMenu;
begin
  Result := PGtkPopoverMenu(g_type_check_instance_cast(obj, GTK_TYPE_POPOVER_MENU));
end;

function GTK_IS_POPOVER_MENU(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_POPOVER_MENU);
end;



{$ENDIF read_implementation}
