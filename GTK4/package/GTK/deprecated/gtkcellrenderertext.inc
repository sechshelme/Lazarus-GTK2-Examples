/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}


type
  TGtkCellRendererText = record
    parent: TGtkCellRenderer;
  end;
  PGtkCellRendererText = ^TGtkCellRendererText;

  TGtkCellRendererTextClass = record
    parent_class: TGtkCellRendererClass;
    edited: procedure(cell_renderer_text: PGtkCellRendererText; path: PChar; new_text: PChar); cdecl;
    padding: array[0..7] of Tgpointer;
  end;
  PGtkCellRendererTextClass = ^TGtkCellRendererTextClass;


function gtk_cell_renderer_text_get_type: TGType; cdecl; external gtklib;
function gtk_cell_renderer_text_new: PGtkCellRenderer; cdecl; external gtklib;
procedure gtk_cell_renderer_text_set_fixed_height_from_font(renderer: PGtkCellRendererText; number_of_rows: longint); cdecl; external gtklib;

// === Konventiert am: 29-7-24 17:01:12 ===

function GTK_TYPE_CELL_RENDERER_TEXT: TGType;
function GTK_CELL_RENDERER_TEXT(obj: Pointer): PGtkCellRendererText;
function GTK_CELL_RENDERER_TEXT_CLASS(klass: Pointer): PGtkCellRendererTextClass;
function GTK_IS_CELL_RENDERER_TEXT(obj: Pointer): Tgboolean;
function GTK_IS_CELL_RENDERER_TEXT_CLASS(klass: Pointer): Tgboolean;
function GTK_CELL_RENDERER_TEXT_GET_CLASS(obj: Pointer): PGtkCellRendererTextClass;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GTK_TYPE_CELL_RENDERER_TEXT: TGType;
begin
  GTK_TYPE_CELL_RENDERER_TEXT := gtk_cell_renderer_text_get_type;
end;

function GTK_CELL_RENDERER_TEXT(obj: Pointer): PGtkCellRendererText;
begin
  Result := PGtkCellRendererText(g_type_check_instance_cast(obj, GTK_TYPE_CELL_RENDERER_TEXT));
end;

function GTK_CELL_RENDERER_TEXT_CLASS(klass: Pointer): PGtkCellRendererTextClass;
begin
  Result := PGtkCellRendererTextClass(g_type_check_class_cast(klass, GTK_TYPE_CELL_RENDERER_TEXT));
end;

function GTK_IS_CELL_RENDERER_TEXT(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_CELL_RENDERER_TEXT);
end;

function GTK_IS_CELL_RENDERER_TEXT_CLASS(klass: Pointer): Tgboolean;
begin
  Result := g_type_check_class_is_a(klass, GTK_TYPE_CELL_RENDERER_TEXT);
end;

function GTK_CELL_RENDERER_TEXT_GET_CLASS(obj: Pointer): PGtkCellRendererTextClass;
begin
  Result := PGtkCellRendererTextClass(PGTypeInstance(obj)^.g_class);
end;



{$ENDIF read_implementation}
