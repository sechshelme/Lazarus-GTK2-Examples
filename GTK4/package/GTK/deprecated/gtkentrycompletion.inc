/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}

type
  TGtkEntryCompletion = record // _GtkEntryCompletion
  end;
  PGtkEntryCompletion = ^TGtkEntryCompletion;

  TGtkEntryCompletionMatchFunc = function(completion: PGtkEntryCompletion; key: PChar; iter: PGtkTreeIter; user_data: Tgpointer): Tgboolean; cdecl;

function gtk_entry_completion_get_type: TGType; cdecl; external gtklib;
function gtk_entry_completion_new: PGtkEntryCompletion; cdecl; external gtklib;
function gtk_entry_completion_new_with_area(area: PGtkCellArea): PGtkEntryCompletion; cdecl; external gtklib;
function gtk_entry_completion_get_entry(completion: PGtkEntryCompletion): PGtkWidget; cdecl; external gtklib;
procedure gtk_entry_completion_set_model(completion: PGtkEntryCompletion; model: PGtkTreeModel); cdecl; external gtklib;
function gtk_entry_completion_get_model(completion: PGtkEntryCompletion): PGtkTreeModel; cdecl; external gtklib;
procedure gtk_entry_completion_set_match_func(completion: PGtkEntryCompletion; func: TGtkEntryCompletionMatchFunc; func_data: Tgpointer; func_notify: TGDestroyNotify); cdecl; external gtklib;
procedure gtk_entry_completion_set_minimum_key_length(completion: PGtkEntryCompletion; length: longint); cdecl; external gtklib;
function gtk_entry_completion_get_minimum_key_length(completion: PGtkEntryCompletion): longint; cdecl; external gtklib;
function gtk_entry_completion_compute_prefix(completion: PGtkEntryCompletion; key: PChar): PChar; cdecl; external gtklib;
procedure gtk_entry_completion_complete(completion: PGtkEntryCompletion); cdecl; external gtklib;
procedure gtk_entry_completion_insert_prefix(completion: PGtkEntryCompletion); cdecl; external gtklib;
procedure gtk_entry_completion_set_inline_completion(completion: PGtkEntryCompletion; inline_completion: Tgboolean); cdecl; external gtklib;
function gtk_entry_completion_get_inline_completion(completion: PGtkEntryCompletion): Tgboolean; cdecl; external gtklib;
procedure gtk_entry_completion_set_inline_selection(completion: PGtkEntryCompletion; inline_selection: Tgboolean); cdecl; external gtklib;
function gtk_entry_completion_get_inline_selection(completion: PGtkEntryCompletion): Tgboolean; cdecl; external gtklib;
procedure gtk_entry_completion_set_popup_completion(completion: PGtkEntryCompletion; popup_completion: Tgboolean); cdecl; external gtklib;
function gtk_entry_completion_get_popup_completion(completion: PGtkEntryCompletion): Tgboolean; cdecl; external gtklib;
procedure gtk_entry_completion_set_popup_set_width(completion: PGtkEntryCompletion; popup_set_width: Tgboolean); cdecl; external gtklib;
function gtk_entry_completion_get_popup_set_width(completion: PGtkEntryCompletion): Tgboolean; cdecl; external gtklib;
procedure gtk_entry_completion_set_popup_single_match(completion: PGtkEntryCompletion; popup_single_match: Tgboolean); cdecl; external gtklib;
function gtk_entry_completion_get_popup_single_match(completion: PGtkEntryCompletion): Tgboolean; cdecl; external gtklib;
function gtk_entry_completion_get_completion_prefix(completion: PGtkEntryCompletion): PChar; cdecl; external gtklib;
procedure gtk_entry_completion_set_text_column(completion: PGtkEntryCompletion; column: longint); cdecl; external gtklib;
function gtk_entry_completion_get_text_column(completion: PGtkEntryCompletion): longint; cdecl; external gtklib;

// === Konventiert am: 21-7-24 15:41:12 ===

function GTK_TYPE_ENTRY_COMPLETION: TGType;
function GTK_ENTRY_COMPLETION(obj: Pointer): PGtkEntryCompletion;
function GTK_IS_ENTRY_COMPLETION(obj: Pointer): Tgboolean;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GTK_TYPE_ENTRY_COMPLETION: TGType;
begin
  GTK_TYPE_ENTRY_COMPLETION := gtk_entry_completion_get_type;
end;

function GTK_ENTRY_COMPLETION(obj: Pointer): PGtkEntryCompletion;
begin
  Result := PGtkEntryCompletion(g_type_check_instance_cast(obj, GTK_TYPE_ENTRY_COMPLETION));
end;

function GTK_IS_ENTRY_COMPLETION(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_ENTRY_COMPLETION);
end;



{$ENDIF read_implementation}
