/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}

type
  PGtkCheckButton = ^TGtkCheckButton;
  TGtkCheckButton = record
      parent_instance : TGtkWidget;
    end;

  PGtkCheckButtonClass = ^TGtkCheckButtonClass;
  TGtkCheckButtonClass = record
      parent_class : TGtkWidgetClass;
      toggled : procedure (check_button:PGtkCheckButton);cdecl;
      activate : procedure (check_button:PGtkCheckButton);cdecl;
      padding : array[0..6] of Tgpointer;
    end;


function gtk_check_button_get_type:TGType;cdecl;external gtklib;
function gtk_check_button_new:PGtkWidget;cdecl;external gtklib;
function gtk_check_button_new_with_label(_label:Pchar):PGtkWidget;cdecl;external gtklib;
function gtk_check_button_new_with_mnemonic(_label:Pchar):PGtkWidget;cdecl;external gtklib;
procedure gtk_check_button_set_inconsistent(check_button:PGtkCheckButton; inconsistent:Tgboolean);cdecl;external gtklib;
function gtk_check_button_get_inconsistent(check_button:PGtkCheckButton):Tgboolean;cdecl;external gtklib;
function gtk_check_button_get_active(self:PGtkCheckButton):Tgboolean;cdecl;external gtklib;
procedure gtk_check_button_set_active(self:PGtkCheckButton; setting:Tgboolean);cdecl;external gtklib;
function gtk_check_button_get_label(self:PGtkCheckButton):Pchar;cdecl;external gtklib;
procedure gtk_check_button_set_label(self:PGtkCheckButton; _label:Pchar);cdecl;external gtklib;
procedure gtk_check_button_set_group(self:PGtkCheckButton; group:PGtkCheckButton);cdecl;external gtklib;
function gtk_check_button_get_use_underline(self:PGtkCheckButton):Tgboolean;cdecl;external gtklib;
procedure gtk_check_button_set_use_underline(self:PGtkCheckButton; setting:Tgboolean);cdecl;external gtklib;
function gtk_check_button_get_child(button:PGtkCheckButton):PGtkWidget;cdecl;external gtklib;
procedure gtk_check_button_set_child(button:PGtkCheckButton; child:PGtkWidget);cdecl;external gtklib;

// === Konventiert am: 23-7-24 19:19:38 ===

function GTK_TYPE_CHECK_BUTTON : TGType;
function GTK_CHECK_BUTTON(obj : Pointer) : PGtkCheckButton;
function GTK_CHECK_BUTTON_CLASS(klass : Pointer) : PGtkCheckButtonClass;
function GTK_IS_CHECK_BUTTON(obj : Pointer) : Tgboolean;
function GTK_IS_CHECK_BUTTON_CLASS(klass : Pointer) : Tgboolean;
function GTK_CHECK_BUTTON_GET_CLASS(obj : Pointer) : PGtkCheckButtonClass;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GTK_TYPE_CHECK_BUTTON : TGType;
  begin
    GTK_TYPE_CHECK_BUTTON:=gtk_check_button_get_type;
  end;

function GTK_CHECK_BUTTON(obj : Pointer) : PGtkCheckButton;
begin
  Result := PGtkCheckButton(g_type_check_instance_cast(obj, GTK_TYPE_CHECK_BUTTON));
end;

function GTK_CHECK_BUTTON_CLASS(klass : Pointer) : PGtkCheckButtonClass;
begin
  Result := PGtkCheckButtonClass(g_type_check_class_cast(klass, GTK_TYPE_CHECK_BUTTON));
end;

function GTK_IS_CHECK_BUTTON(obj : Pointer) : Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj,  GTK_TYPE_CHECK_BUTTON);
end;

function GTK_IS_CHECK_BUTTON_CLASS(klass : Pointer) : Tgboolean;
begin
  Result := g_type_check_class_is_a(klass,  GTK_TYPE_CHECK_BUTTON);
end;

function GTK_CHECK_BUTTON_GET_CLASS(obj : Pointer) : PGtkCheckButtonClass;
begin
  Result := PGtkCheckButtonClass(PGTypeInstance(obj)^.g_class);
end;



{$ENDIF read_implementation}
