/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}


type
  TGtkStackSwitcher = record // _GtkStackSwitcher
  end;
  PGtkStackSwitcher = ^TGtkStackSwitcher;

function gtk_stack_switcher_get_type: TGType; cdecl; external gtklib;
function gtk_stack_switcher_new: PGtkWidget; cdecl; external gtklib;
procedure gtk_stack_switcher_set_stack(switcher: PGtkStackSwitcher; stack: PGtkStack); cdecl; external gtklib;
function gtk_stack_switcher_get_stack(switcher: PGtkStackSwitcher): PGtkStack; cdecl; external gtklib;

// === Konventiert am: 28-7-24 16:33:40 ===

function GTK_TYPE_STACK_SWITCHER: TGType;
function GTK_STACK_SWITCHER(obj: Pointer): PGtkStackSwitcher;
function GTK_IS_STACK_SWITCHER(obj: Pointer): Tgboolean;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GTK_TYPE_STACK_SWITCHER: TGType;
begin
  GTK_TYPE_STACK_SWITCHER := gtk_stack_switcher_get_type;
end;

function GTK_STACK_SWITCHER(obj: Pointer): PGtkStackSwitcher;
begin
  Result := PGtkStackSwitcher(g_type_check_instance_cast(obj, GTK_TYPE_STACK_SWITCHER));
end;

function GTK_IS_STACK_SWITCHER(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_STACK_SWITCHER);
end;



{$ENDIF read_implementation}
