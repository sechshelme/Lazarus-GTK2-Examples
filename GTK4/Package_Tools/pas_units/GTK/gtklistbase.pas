unit gtklistbase;

interface

uses
  glib2, common_GTK;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}

type
  TGtkListBase = record // _GtkListBase
  end;
  PGtkListBase = ^TGtkListBase;

  TGtkListBaseClass = record // _GtkListBaseClass
  end;
  PGtkListBaseClass = ^TGtkListBaseClass;

function gtk_list_base_get_type: TGType; cdecl; external gtklib;

// === Konventiert am: 27-7-24 19:13:01 ===

function GTK_TYPE_LIST_BASE: TGType;
function GTK_LIST_BASE(obj: Pointer): PGtkListBase;
function GTK_LIST_BASE_CLASS(klass: Pointer): PGtkListBaseClass;
function GTK_IS_LIST_BASE(obj: Pointer): Tgboolean;
function GTK_IS_LIST_BASE_CLASS(klass: Pointer): Tgboolean;
function GTK_LIST_BASE_GET_CLASS(obj: Pointer): PGtkListBaseClass;

implementation

function GTK_TYPE_LIST_BASE: TGType;
begin
  GTK_TYPE_LIST_BASE := gtk_list_base_get_type;
end;

function GTK_LIST_BASE(obj: Pointer): PGtkListBase;
begin
  Result := PGtkListBase(g_type_check_instance_cast(obj, GTK_TYPE_LIST_BASE));
end;

function GTK_LIST_BASE_CLASS(klass: Pointer): PGtkListBaseClass;
begin
  Result := PGtkListBaseClass(g_type_check_class_cast(klass, GTK_TYPE_LIST_BASE));
end;

function GTK_IS_LIST_BASE(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_LIST_BASE);
end;

function GTK_IS_LIST_BASE_CLASS(klass: Pointer): Tgboolean;
begin
  Result := g_type_check_class_is_a(klass, GTK_TYPE_LIST_BASE);
end;

function GTK_LIST_BASE_GET_CLASS(obj: Pointer): PGtkListBaseClass;
begin
  Result := PGtkListBaseClass(PGTypeInstance(obj)^.g_class);
end;



end.
