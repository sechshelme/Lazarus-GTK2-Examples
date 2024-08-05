/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}

type
  PGtkStringFilterMatchMode = ^TGtkStringFilterMatchMode;
  TGtkStringFilterMatchMode =  Longint;
  Const
    GTK_STRING_FILTER_MATCH_MODE_EXACT = 0;
    GTK_STRING_FILTER_MATCH_MODE_SUBSTRING = 1;
    GTK_STRING_FILTER_MATCH_MODE_PREFIX = 2;

{G_DECLARE_FINAL_TYPE (GtkStringFilter, gtk_string_filter, GTK, STRING_FILTER, GtkFilter) }
  type
    TGtkStringFilter = record
    end;
    PGtkStringFilter = ^TGtkStringFilter;

    TGtkStringFilterClass = record
      parent_class: TGtkFilterClass;
    end;
    PGtkStringFilterClass = ^TGtkStringFilterClass;

  function gtk_string_filter_get_type: TGType; cdecl; external gtklib;
function gtk_string_filter_new(expression:PGtkExpression):PGtkStringFilter;cdecl;external gtklib;
function gtk_string_filter_get_search(self:PGtkStringFilter):Pchar;cdecl;external gtklib;
procedure gtk_string_filter_set_search(self:PGtkStringFilter; search:Pchar);cdecl;external gtklib;
function gtk_string_filter_get_expression(self:PGtkStringFilter):PGtkExpression;cdecl;external gtklib;
procedure gtk_string_filter_set_expression(self:PGtkStringFilter; expression:PGtkExpression);cdecl;external gtklib;
function gtk_string_filter_get_ignore_case(self:PGtkStringFilter):Tgboolean;cdecl;external gtklib;
procedure gtk_string_filter_set_ignore_case(self:PGtkStringFilter; ignore_case:Tgboolean);cdecl;external gtklib;
function gtk_string_filter_get_match_mode(self:PGtkStringFilter):TGtkStringFilterMatchMode;cdecl;external gtklib;
procedure gtk_string_filter_set_match_mode(self:PGtkStringFilter; mode:TGtkStringFilterMatchMode);cdecl;external gtklib;

// === Konventiert am: 25-7-24 18:25:07 ===

function GTK_TYPE_STRING_FILTER: TGType;
function GTK_STRING_FILTER(obj: Pointer): PGtkStringFilter;
function GTK_IS_STRING_FILTER(obj: Pointer): Tgboolean;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GTK_TYPE_STRING_FILTER: TGType;
begin
  Result := gtk_string_filter_get_type;
end;

function GTK_STRING_FILTER(obj: Pointer): PGtkStringFilter;
begin
  Result := PGtkStringFilter(g_type_check_instance_cast(obj, GTK_TYPE_STRING_FILTER));
end;

function GTK_IS_STRING_FILTER(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_STRING_FILTER);
end;




{$ENDIF read_implementation}
