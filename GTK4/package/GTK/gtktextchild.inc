/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}

type
  TGtkTextChildAnchor = record
    parent_instance: TGObject;
    segment: Tgpointer;
  end;
  PGtkTextChildAnchor = ^TGtkTextChildAnchor;

  TGtkTextChildAnchorClass = record
    parent_class: TGObjectClass;
    _gtk_reserved1: procedure; cdecl;
    _gtk_reserved2: procedure; cdecl;
    _gtk_reserved3: procedure; cdecl;
    _gtk_reserved4: procedure; cdecl;
  end;
  PGtkTextChildAnchorClass = ^TGtkTextChildAnchorClass;


function gtk_text_child_anchor_get_type: TGType; cdecl; external gtklib;
function gtk_text_child_anchor_new: PGtkTextChildAnchor; cdecl; external gtklib;
function gtk_text_child_anchor_new_with_replacement(character: PChar): PGtkTextChildAnchor; cdecl; external gtklib;
function gtk_text_child_anchor_get_widgets(anchor: PGtkTextChildAnchor; out_len: Pguint): PPGtkWidget; cdecl; external gtklib;
function gtk_text_child_anchor_get_deleted(anchor: PGtkTextChildAnchor): Tgboolean; cdecl; external gtklib;

// === Konventiert am: 19-7-24 19:48:49 ===

function GTK_TYPE_TEXT_CHILD_ANCHOR: TGType;
function GTK_TEXT_CHILD_ANCHOR(obj: Pointer): PGtkTextChildAnchor;
function GTK_TEXT_CHILD_ANCHOR_CLASS(klass: Pointer): PGtkTextChildAnchorClass;
function GTK_IS_TEXT_CHILD_ANCHOR(obj: Pointer): Tgboolean;
function GTK_IS_TEXT_CHILD_ANCHOR_CLASS(klass: Pointer): Tgboolean;
function GTK_TEXT_CHILD_ANCHOR_GET_CLASS(obj: Pointer): PGtkTextChildAnchorClass;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GTK_TYPE_TEXT_CHILD_ANCHOR: TGType;
begin
  GTK_TYPE_TEXT_CHILD_ANCHOR := gtk_text_child_anchor_get_type;
end;

function GTK_TEXT_CHILD_ANCHOR(obj: Pointer): PGtkTextChildAnchor;
begin
  Result := PGtkTextChildAnchor(g_type_check_instance_cast(obj, GTK_TYPE_TEXT_CHILD_ANCHOR));
end;

function GTK_TEXT_CHILD_ANCHOR_CLASS(klass: Pointer): PGtkTextChildAnchorClass;
begin
  Result := PGtkTextChildAnchorClass(g_type_check_class_cast(klass, GTK_TYPE_TEXT_CHILD_ANCHOR));
end;

function GTK_IS_TEXT_CHILD_ANCHOR(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_TEXT_CHILD_ANCHOR);
end;

function GTK_IS_TEXT_CHILD_ANCHOR_CLASS(klass: Pointer): Tgboolean;
begin
  Result := g_type_check_class_is_a(klass, GTK_TYPE_TEXT_CHILD_ANCHOR);
end;

function GTK_TEXT_CHILD_ANCHOR_GET_CLASS(obj: Pointer): PGtkTextChildAnchorClass;
begin
  Result := PGtkTextChildAnchorClass(PGTypeInstance(obj)^.g_class);
end;



{$ENDIF read_implementation}
