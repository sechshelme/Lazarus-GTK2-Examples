unit gtksorter;

interface

uses
  glib2, common_GTK, gtkenums;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}

type
  PGtkSorterOrder = ^TGtkSorterOrder;
  TGtkSorterOrder = longint;

const
  GTK_SORTER_ORDER_PARTIAL = 0;
  GTK_SORTER_ORDER_NONE = 1;
  GTK_SORTER_ORDER_TOTAL = 2;

type
  PGtkSorterChange = ^TGtkSorterChange;
  TGtkSorterChange = longint;

const
  GTK_SORTER_CHANGE_DIFFERENT = 0;
  GTK_SORTER_CHANGE_INVERTED = 1;
  GTK_SORTER_CHANGE_LESS_STRICT = 2;
  GTK_SORTER_CHANGE_MORE_STRICT = 3;

type
  TGtkSorter = record
    parent_instance: TGObject
  end;
  PGtkSorter = ^TGtkSorter;

  TGtkSorterClass = record
    parent_class: TGObjectClass;
    compare: function(self: PGtkSorter; item1: Tgpointer; item2: Tgpointer): TGtkOrdering; cdecl;
    get_order: function(self: PGtkSorter): TGtkSorterOrder; cdecl;
    _gtk_reserved1: procedure; cdecl;
    _gtk_reserved2: procedure; cdecl;
    _gtk_reserved3: procedure; cdecl;
    _gtk_reserved4: procedure; cdecl;
    _gtk_reserved5: procedure; cdecl;
    _gtk_reserved6: procedure; cdecl;
    _gtk_reserved7: procedure; cdecl;
    _gtk_reserved8: procedure; cdecl;
  end;
  PGtkSorterClass = ^TGtkSorterClass;


function gtk_sorter_get_type: TGType; cdecl; external gtklib;
function gtk_sorter_compare(self: PGtkSorter; item1: Tgpointer; item2: Tgpointer): TGtkOrdering; cdecl; external gtklib;
function gtk_sorter_get_order(self: PGtkSorter): TGtkSorterOrder; cdecl; external gtklib;
procedure gtk_sorter_changed(self: PGtkSorter; change: TGtkSorterChange); cdecl; external gtklib;

// === Konventiert am: 23-7-24 19:37:55 ===

function GTK_TYPE_SORTER: TGType;
function GTK_SORTER(obj: Pointer): PGtkSorter;
function GTK_IS_SORTER(obj: Pointer): Tgboolean;
function GTK_SORTER_CLASS(klass: Pointer): PGtkSorterClass;
function GTK_IS_SORTER_CLASS(klass: Pointer): Tgboolean;
function GTK_SORTER_GET_CLASS(obj: Pointer): PGtkSorterClass;

implementation

function GTK_TYPE_SORTER: TGType;
begin
  Result := gtk_sorter_get_type;
end;

function GTK_SORTER(obj: Pointer): PGtkSorter;
begin
  Result := PGtkSorter(g_type_check_instance_cast(obj, GTK_TYPE_SORTER));
end;

function GTK_IS_SORTER(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_SORTER);
end;

function GTK_SORTER_CLASS(klass: Pointer): PGtkSorterClass;
begin
  Result := PGtkSorterClass(g_type_check_class_cast(klass, GTK_TYPE_SORTER));
end;

function GTK_IS_SORTER_CLASS(klass: Pointer): Tgboolean;
begin
  Result := g_type_check_class_is_a(klass, GTK_TYPE_SORTER);
end;

function GTK_SORTER_GET_CLASS(obj: Pointer): PGtkSorterClass;
begin
  Result := PGtkSorterClass(PGTypeInstance(obj)^.g_class);
end;




end.
