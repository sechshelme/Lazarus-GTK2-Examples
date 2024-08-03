unit gtkpasswordentrybuffer;

interface

uses
  glib2, common_GTK, gtkentrybuffer;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}


  {G_DECLARE_FINAL_TYPE (GtkPasswordEntryBuffer, gtk_password_entry_buffer, GTK, PASSWORD_ENTRY_BUFFER, GtkEntryBuffer) }
type
  TGtkPasswordEntryBuffer = record
  end;
  PGtkPasswordEntryBuffer = ^TGtkPasswordEntryBuffer;

  TGtkPasswordEntryBufferClass = record
    parent_class: TGtkEntryBufferClass;
  end;
  PGtkPasswordEntryBufferClass = ^TGtkPasswordEntryBufferClass;

function gtk_password_entry_buffer_get_type: TGType; cdecl; external gtklib;
function gtk_password_entry_buffer_new: PGtkEntryBuffer; cdecl; external gtklib;

// === Konventiert am: 28-7-24 15:14:16 ===

function GTK_TYPE_PASSWORD_ENTRY_BUFFER: TGType;
function GTK_PASSWORD_ENTRY_BUFFER(obj: Pointer): PGtkPasswordEntryBuffer;
function GTK_IS_PASSWORD_ENTRY_BUFFER(obj: Pointer): Tgboolean;

implementation

function GTK_TYPE_PASSWORD_ENTRY_BUFFER: TGType;
begin
  Result := gtk_password_entry_buffer_get_type;
end;

function GTK_PASSWORD_ENTRY_BUFFER(obj: Pointer): PGtkPasswordEntryBuffer;
begin
  Result := PGtkPasswordEntryBuffer(g_type_check_instance_cast(obj, GTK_TYPE_PASSWORD_ENTRY_BUFFER));
end;

function GTK_IS_PASSWORD_ENTRY_BUFFER(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_PASSWORD_ENTRY_BUFFER);
end;




end.
