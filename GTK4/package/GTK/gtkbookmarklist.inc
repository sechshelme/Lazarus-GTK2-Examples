/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}


{G_DECLARE_FINAL_TYPE (GtkBookmarkList, gtk_bookmark_list, GTK, BOOKMARK_LIST, GObject) }
type
  TGtkBookmarkList = record
  end;
  PGtkBookmarkList = ^TGtkBookmarkList;

  TGtkBookmarkListClass = record
    parent_class: TGObjectClass;
  end;
  PGtkBookmarkListClass = ^TGtkBookmarkListClass;

function gtk_bookmark_list_get_type: TGType; cdecl; external gtklib;
function gtk_bookmark_list_new(filename:Pchar; attributes:Pchar):PGtkBookmarkList;cdecl;external gtklib;
function gtk_bookmark_list_get_filename(self:PGtkBookmarkList):Pchar;cdecl;external gtklib;
procedure gtk_bookmark_list_set_attributes(self:PGtkBookmarkList; attributes:Pchar);cdecl;external gtklib;
function gtk_bookmark_list_get_attributes(self:PGtkBookmarkList):Pchar;cdecl;external gtklib;
procedure gtk_bookmark_list_set_io_priority(self:PGtkBookmarkList; io_priority:longint);cdecl;external gtklib;
function gtk_bookmark_list_get_io_priority(self:PGtkBookmarkList):longint;cdecl;external gtklib;
function gtk_bookmark_list_is_loading(self:PGtkBookmarkList):Tgboolean;cdecl;external gtklib;

// === Konventiert am: 17-7-24 19:24:27 ===

function GTK_TYPE_BOOKMARK_LIST: TGType;
function GTK_BOOKMARK_LIST(obj: Pointer): PGtkBookmarkList;
function GTK_IS_BOOKMARK_LIST(obj: Pointer): Tgboolean;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GTK_TYPE_BOOKMARK_LIST: TGType;
begin
  Result := gtk_bookmark_list_get_type;
end;

function GTK_BOOKMARK_LIST(obj: Pointer): PGtkBookmarkList;
begin
  Result := PGtkBookmarkList(g_type_check_instance_cast(obj, GTK_TYPE_BOOKMARK_LIST));
end;

function GTK_IS_BOOKMARK_LIST(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_BOOKMARK_LIST);
end;




{$ENDIF read_implementation}
