unit gtksizegroup;

interface

uses
  glib2, common_GTK, gtkenums, gtktypes, gtkwidget;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}

type
  TGtkSizeGroup = record
    parent_instance: TGObject;
  end;
  PGtkSizeGroup = ^TGtkSizeGroup;


function gtk_size_group_get_type: TGType; cdecl; external gtklib;
function gtk_size_group_new(mode: TGtkSizeGroupMode): PGtkSizeGroup; cdecl; external gtklib;
procedure gtk_size_group_set_mode(size_group: PGtkSizeGroup; mode: TGtkSizeGroupMode); cdecl; external gtklib;
function gtk_size_group_get_mode(size_group: PGtkSizeGroup): TGtkSizeGroupMode; cdecl; external gtklib;
procedure gtk_size_group_add_widget(size_group: PGtkSizeGroup; widget: PGtkWidget); cdecl; external gtklib;
procedure gtk_size_group_remove_widget(size_group: PGtkSizeGroup; widget: PGtkWidget); cdecl; external gtklib;
function gtk_size_group_get_widgets(size_group: PGtkSizeGroup): PGSList; cdecl; external gtklib;

// === Konventiert am: 28-7-24 15:57:57 ===

function GTK_TYPE_SIZE_GROUP: TGType;
function GTK_SIZE_GROUP(obj: Pointer): PGtkSizeGroup;
function GTK_IS_SIZE_GROUP(obj: Pointer): Tgboolean;

implementation

function GTK_TYPE_SIZE_GROUP: TGType;
begin
  GTK_TYPE_SIZE_GROUP := gtk_size_group_get_type;
end;

function GTK_SIZE_GROUP(obj: Pointer): PGtkSizeGroup;
begin
  Result := PGtkSizeGroup(g_type_check_instance_cast(obj, GTK_TYPE_SIZE_GROUP));
end;

function GTK_IS_SIZE_GROUP(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_SIZE_GROUP);
end;



end.
