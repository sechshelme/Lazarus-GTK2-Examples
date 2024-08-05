/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}

type
  TGtkAssistant = record
  end;
  PGtkAssistant = ^TGtkAssistant;

  TGtkAssistantPage = record
  end;
  PGtkAssistantPage = ^TGtkAssistantPage;

  PGtkAssistantPageType = ^TGtkAssistantPageType;
  TGtkAssistantPageType = longint;

const
  GTK_ASSISTANT_PAGE_CONTENT = 0;
  GTK_ASSISTANT_PAGE_INTRO = 1;
  GTK_ASSISTANT_PAGE_CONFIRM = 2;
  GTK_ASSISTANT_PAGE_SUMMARY = 3;
  GTK_ASSISTANT_PAGE_PROGRESS = 4;
  GTK_ASSISTANT_PAGE_CUSTOM = 5;

type
  TGtkAssistantPageFunc = function(current_page: longint; Data: Tgpointer): longint; cdecl;

function gtk_assistant_page_get_type: TGType; cdecl; external gtklib;
function gtk_assistant_get_type: TGType; cdecl; external gtklib;
function gtk_assistant_new: PGtkWidget; cdecl; external gtklib;
procedure gtk_assistant_next_page(assistant: PGtkAssistant); cdecl; external gtklib;
procedure gtk_assistant_previous_page(assistant: PGtkAssistant); cdecl; external gtklib;
function gtk_assistant_get_current_page(assistant: PGtkAssistant): longint; cdecl; external gtklib;
procedure gtk_assistant_set_current_page(assistant: PGtkAssistant; page_num: longint); cdecl; external gtklib;
function gtk_assistant_get_n_pages(assistant: PGtkAssistant): longint; cdecl; external gtklib;
function gtk_assistant_get_nth_page(assistant: PGtkAssistant; page_num: longint): PGtkWidget; cdecl; external gtklib;
function gtk_assistant_prepend_page(assistant: PGtkAssistant; page: PGtkWidget): longint; cdecl; external gtklib;
function gtk_assistant_append_page(assistant: PGtkAssistant; page: PGtkWidget): longint; cdecl; external gtklib;
function gtk_assistant_insert_page(assistant: PGtkAssistant; page: PGtkWidget; position: longint): longint; cdecl; external gtklib;
procedure gtk_assistant_remove_page(assistant: PGtkAssistant; page_num: longint); cdecl; external gtklib;
procedure gtk_assistant_set_forward_page_func(assistant: PGtkAssistant; page_func: TGtkAssistantPageFunc; Data: Tgpointer; Destroy: TGDestroyNotify); cdecl; external gtklib;
procedure gtk_assistant_set_page_type(assistant: PGtkAssistant; page: PGtkWidget; _type: TGtkAssistantPageType); cdecl; external gtklib;
function gtk_assistant_get_page_type(assistant: PGtkAssistant; page: PGtkWidget): TGtkAssistantPageType; cdecl; external gtklib;
procedure gtk_assistant_set_page_title(assistant: PGtkAssistant; page: PGtkWidget; title: PChar); cdecl; external gtklib;
function gtk_assistant_get_page_title(assistant: PGtkAssistant; page: PGtkWidget): PChar; cdecl; external gtklib;
procedure gtk_assistant_set_page_complete(assistant: PGtkAssistant; page: PGtkWidget; complete: Tgboolean); cdecl; external gtklib;
function gtk_assistant_get_page_complete(assistant: PGtkAssistant; page: PGtkWidget): Tgboolean; cdecl; external gtklib;
procedure gtk_assistant_add_action_widget(assistant: PGtkAssistant; child: PGtkWidget); cdecl; external gtklib;
procedure gtk_assistant_remove_action_widget(assistant: PGtkAssistant; child: PGtkWidget); cdecl; external gtklib;
procedure gtk_assistant_update_buttons_state(assistant: PGtkAssistant); cdecl; external gtklib;
procedure gtk_assistant_commit(assistant: PGtkAssistant); cdecl; external gtklib;
function gtk_assistant_get_page(assistant: PGtkAssistant; child: PGtkWidget): PGtkAssistantPage; cdecl; external gtklib;
function gtk_assistant_page_get_child(page: PGtkAssistantPage): PGtkWidget; cdecl; external gtklib;
function gtk_assistant_get_pages(assistant: PGtkAssistant): PGListModel; cdecl; external gtklib;

// === Konventiert am: 29-7-24 15:12:49 ===

function GTK_TYPE_ASSISTANT: TGType;
function GTK_ASSISTANT(obj: Pointer): PGtkAssistant;
function GTK_IS_ASSISTANT(obj: Pointer): Tgboolean;

function GTK_TYPE_ASSISTANT_PAGE: TGType;
function GTK_ASSISTANT_PAGE(obj: Pointer): PGtkAssistantPage;
function GTK_IS_ASSISTANT_PAGE(obj: Pointer): Tgboolean;


{$ENDIF read_interface}


{$IFDEF read_implementation}

function GTK_TYPE_ASSISTANT: TGType;
begin
  GTK_TYPE_ASSISTANT := gtk_assistant_get_type;
end;

function GTK_ASSISTANT(obj: Pointer): PGtkAssistant;
begin
  Result := PGtkAssistant(g_type_check_instance_cast(obj, GTK_TYPE_ASSISTANT));
end;

function GTK_IS_ASSISTANT(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_ASSISTANT);
end;

// ====

function GTK_TYPE_ASSISTANT_PAGE: TGType;
begin
  GTK_TYPE_ASSISTANT_PAGE := gtk_assistant_page_get_type;
end;

function GTK_ASSISTANT_PAGE(obj: Pointer): PGtkAssistantPage;
begin
  Result := PGtkAssistantPage(g_type_check_instance_cast(obj, GTK_TYPE_ASSISTANT_PAGE));
end;

function GTK_IS_ASSISTANT_PAGE(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_ASSISTANT_PAGE);
end;



{$ENDIF read_implementation}
