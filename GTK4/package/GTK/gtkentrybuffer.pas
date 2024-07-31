unit gtkentrybuffer;

interface

uses
  glib2, common_GTK;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}


const
  GTK_ENTRY_BUFFER_MAX_SIZE = G_MAXUSHORT;

type
  TGtkEntryBuffer = record
    parent_instance: TGObject;
  end;
  PGtkEntryBuffer = ^TGtkEntryBuffer;

  TGtkEntryBufferClass = record
    parent_class: TGObjectClass;
    inserted_text: procedure(buffer: PGtkEntryBuffer; position: Tguint; chars: PChar; n_chars: Tguint); cdecl;
    deleted_text: procedure(buffer: PGtkEntryBuffer; position: Tguint; n_chars: Tguint); cdecl;
    get_text: function(buffer: PGtkEntryBuffer; n_bytes: Pgsize): PChar; cdecl;
    get_length: function(buffer: PGtkEntryBuffer): Tguint; cdecl;
    insert_text: function(buffer: PGtkEntryBuffer; position: Tguint; chars: PChar; n_chars: Tguint): Tguint; cdecl;
    delete_text: function(buffer: PGtkEntryBuffer; position: Tguint; n_chars: Tguint): Tguint; cdecl;
    _gtk_reserved1: procedure; cdecl;
    _gtk_reserved2: procedure; cdecl;
    _gtk_reserved3: procedure; cdecl;
    _gtk_reserved4: procedure; cdecl;
    _gtk_reserved5: procedure; cdecl;
    _gtk_reserved6: procedure; cdecl;
    _gtk_reserved7: procedure; cdecl;
    _gtk_reserved8: procedure; cdecl;
  end;
  PGtkEntryBufferClass = ^TGtkEntryBufferClass;


function gtk_entry_buffer_get_type: TGType; cdecl; external gtklib;
function gtk_entry_buffer_new(initial_chars: PChar; n_initial_chars: longint): PGtkEntryBuffer; cdecl; external gtklib;
function gtk_entry_buffer_get_bytes(buffer: PGtkEntryBuffer): Tgsize; cdecl; external gtklib;
function gtk_entry_buffer_get_length(buffer: PGtkEntryBuffer): Tguint; cdecl; external gtklib;
function gtk_entry_buffer_get_text(buffer: PGtkEntryBuffer): PChar; cdecl; external gtklib;
procedure gtk_entry_buffer_set_text(buffer: PGtkEntryBuffer; chars: PChar; n_chars: longint); cdecl; external gtklib;
procedure gtk_entry_buffer_set_max_length(buffer: PGtkEntryBuffer; max_length: longint); cdecl; external gtklib;
function gtk_entry_buffer_get_max_length(buffer: PGtkEntryBuffer): longint; cdecl; external gtklib;
function gtk_entry_buffer_insert_text(buffer: PGtkEntryBuffer; position: Tguint; chars: PChar; n_chars: longint): Tguint; cdecl; external gtklib;
function gtk_entry_buffer_delete_text(buffer: PGtkEntryBuffer; position: Tguint; n_chars: longint): Tguint; cdecl; external gtklib;
procedure gtk_entry_buffer_emit_inserted_text(buffer: PGtkEntryBuffer; position: Tguint; chars: PChar; n_chars: Tguint); cdecl; external gtklib;
procedure gtk_entry_buffer_emit_deleted_text(buffer: PGtkEntryBuffer; position: Tguint; n_chars: Tguint); cdecl; external gtklib;

// === Konventiert am: 21-7-24 15:36:09 ===

function GTK_TYPE_ENTRY_BUFFER: TGType;
function GTK_ENTRY_BUFFER(obj: Pointer): PGtkEntryBuffer;
function GTK_ENTRY_BUFFER_CLASS(klass: Pointer): PGtkEntryBufferClass;
function GTK_IS_ENTRY_BUFFER(obj: Pointer): Tgboolean;
function GTK_IS_ENTRY_BUFFER_CLASS(klass: Pointer): Tgboolean;
function GTK_ENTRY_BUFFER_GET_CLASS(obj: Pointer): PGtkEntryBufferClass;

implementation

function GTK_TYPE_ENTRY_BUFFER: TGType;
begin
  GTK_TYPE_ENTRY_BUFFER := gtk_entry_buffer_get_type;
end;

function GTK_ENTRY_BUFFER(obj: Pointer): PGtkEntryBuffer;
begin
  Result := PGtkEntryBuffer(g_type_check_instance_cast(obj, GTK_TYPE_ENTRY_BUFFER));
end;

function GTK_ENTRY_BUFFER_CLASS(klass: Pointer): PGtkEntryBufferClass;
begin
  Result := PGtkEntryBufferClass(g_type_check_class_cast(klass, GTK_TYPE_ENTRY_BUFFER));
end;

function GTK_IS_ENTRY_BUFFER(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_ENTRY_BUFFER);
end;

function GTK_IS_ENTRY_BUFFER_CLASS(klass: Pointer): Tgboolean;
begin
  Result := g_type_check_class_is_a(klass, GTK_TYPE_ENTRY_BUFFER);
end;

function GTK_ENTRY_BUFFER_GET_CLASS(obj: Pointer): PGtkEntryBufferClass;
begin
  Result := PGtkEntryBufferClass(PGTypeInstance(obj)^.g_class);
end;



end.
