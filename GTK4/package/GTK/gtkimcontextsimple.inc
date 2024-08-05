/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}


const
  GTK_MAX_COMPOSE_LEN = 7;

type
  TGtkIMContextSimplePrivate = record           // _GtkIMContextSimplePrivate
  end;
  PGtkIMContextSimplePrivate = ^TGtkIMContextSimplePrivate;

  TGtkIMContextSimple = record
    object_: TGtkIMContext;
    priv: PGtkIMContextSimplePrivate;
  end;
  PGtkIMContextSimple = ^TGtkIMContextSimple;

  TGtkIMContextSimpleClass = record
    parent_class: TGtkIMContextClass;
  end;
  PGtkIMContextSimpleClass = ^TGtkIMContextSimpleClass;


function gtk_im_context_simple_get_type: TGType; cdecl; external gtklib;
function gtk_im_context_simple_new: PGtkIMContext; cdecl; external gtklib;
procedure gtk_im_context_simple_add_table(context_simple: PGtkIMContextSimple; Data: Pguint16; max_seq_len: longint; n_seqs: longint); cdecl; external gtklib;
procedure gtk_im_context_simple_add_compose_file(context_simple: PGtkIMContextSimple; compose_file: PChar); cdecl; external gtklib;

// === Konventiert am: 27-7-24 19:38:12 ===

function GTK_TYPE_IM_CONTEXT_SIMPLE: TGType;
function GTK_IM_CONTEXT_SIMPLE(obj: Pointer): PGtkIMContextSimple;
function GTK_IM_CONTEXT_SIMPLE_CLASS(klass: Pointer): PGtkIMContextSimpleClass;
function GTK_IS_IM_CONTEXT_SIMPLE(obj: Pointer): Tgboolean;
function GTK_IS_IM_CONTEXT_SIMPLE_CLASS(klass: Pointer): Tgboolean;
function GTK_IM_CONTEXT_SIMPLE_GET_CLASS(obj: Pointer): PGtkIMContextSimpleClass;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GTK_TYPE_IM_CONTEXT_SIMPLE: TGType;
begin
  GTK_TYPE_IM_CONTEXT_SIMPLE := gtk_im_context_simple_get_type;
end;

function GTK_IM_CONTEXT_SIMPLE(obj: Pointer): PGtkIMContextSimple;
begin
  Result := PGtkIMContextSimple(g_type_check_instance_cast(obj, GTK_TYPE_IM_CONTEXT_SIMPLE));
end;

function GTK_IM_CONTEXT_SIMPLE_CLASS(klass: Pointer): PGtkIMContextSimpleClass;
begin
  Result := PGtkIMContextSimpleClass(g_type_check_class_cast(klass, GTK_TYPE_IM_CONTEXT_SIMPLE));
end;

function GTK_IS_IM_CONTEXT_SIMPLE(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_IM_CONTEXT_SIMPLE);
end;

function GTK_IS_IM_CONTEXT_SIMPLE_CLASS(klass: Pointer): Tgboolean;
begin
  Result := g_type_check_class_is_a(klass, GTK_TYPE_IM_CONTEXT_SIMPLE);
end;

function GTK_IM_CONTEXT_SIMPLE_GET_CLASS(obj: Pointer): PGtkIMContextSimpleClass;
begin
  Result := PGtkIMContextSimpleClass(PGTypeInstance(obj)^.g_class);
end;



{$ENDIF read_implementation}
