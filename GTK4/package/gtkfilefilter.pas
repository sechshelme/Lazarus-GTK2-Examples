unit gtkfilefilter;

interface

uses
  glib2, common_GTK;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}

type
  TGtkFileFilter = record // _GtkFileFilter
  end;
  PGtkFileFilter = ^TGtkFileFilter;

function gtk_file_filter_get_type: TGType; cdecl; external gtklib;
function gtk_file_filter_new: PGtkFileFilter; cdecl; external gtklib;
procedure gtk_file_filter_set_name(filter: PGtkFileFilter; Name: PChar); cdecl; external gtklib;
function gtk_file_filter_get_name(filter: PGtkFileFilter): PChar; cdecl; external gtklib;
procedure gtk_file_filter_add_mime_type(filter: PGtkFileFilter; mime_type: PChar); cdecl; external gtklib;
procedure gtk_file_filter_add_pattern(filter: PGtkFileFilter; pattern: PChar); cdecl; external gtklib;
procedure gtk_file_filter_add_suffix(filter: PGtkFileFilter; suffix: PChar); cdecl; external gtklib;
procedure gtk_file_filter_add_pixbuf_formats(filter: PGtkFileFilter); cdecl; external gtklib;
function gtk_file_filter_get_attributes(filter: PGtkFileFilter): PPchar; cdecl; external gtklib;
function gtk_file_filter_to_gvariant(filter: PGtkFileFilter): PGVariant; cdecl; external gtklib;
function gtk_file_filter_new_from_gvariant(variant: PGVariant): PGtkFileFilter; cdecl; external gtklib;

// === Konventiert am: 23-7-24 16:51:20 ===

function GTK_TYPE_FILE_FILTER: TGType;
function GTK_FILE_FILTER(obj: Pointer): PGtkFileFilter;
function GTK_IS_FILE_FILTER(obj: Pointer): Tgboolean;

implementation

function GTK_TYPE_FILE_FILTER: TGType;
begin
  GTK_TYPE_FILE_FILTER := gtk_file_filter_get_type;
end;

function GTK_FILE_FILTER(obj: Pointer): PGtkFileFilter;
begin
  Result := PGtkFileFilter(g_type_check_instance_cast(obj, GTK_TYPE_FILE_FILTER));
end;

function GTK_IS_FILE_FILTER(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_FILE_FILTER);
end;



end.
