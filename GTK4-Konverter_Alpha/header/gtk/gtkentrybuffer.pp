
unit gtkentrybuffer;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkentrybuffer.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkentrybuffer.h
    -p
    -T
    -S
    -d
    -c
}

{ Pointers to basic pascal types, inserted by h2pas conversion program.}
Type
  PLongint  = ^Longint;
  PSmallInt = ^SmallInt;
  PByte     = ^Byte;
  PWord     = ^Word;
  PDWord    = ^DWord;
  PDouble   = ^Double;

Type
Pchar  = ^char;
Pgsize  = ^gsize;
PGtkEntryBuffer  = ^GtkEntryBuffer;
PGtkEntryBufferClass  = ^GtkEntryBufferClass;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_ENTRY_BUFFER_H__}
{$define __GTK_ENTRY_BUFFER_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <glib-object.h>}
{$include <gdk/gdk.h>}



const
  GTK_ENTRY_BUFFER_MAX_SIZE = G_MAXUSHORT;  

function GTK_TYPE_ENTRY_BUFFER : longint; { return type might be wrong }

function GTK_ENTRY_BUFFER(obj : longint) : longint;

function GTK_ENTRY_BUFFER_CLASS(klass : longint) : longint;

function GTK_IS_ENTRY_BUFFER(obj : longint) : longint;

function GTK_IS_ENTRY_BUFFER_CLASS(klass : longint) : longint;

function GTK_ENTRY_BUFFER_GET_CLASS(obj : longint) : longint;

type
  PGtkEntryBuffer = ^TGtkEntryBuffer;
  TGtkEntryBuffer = record
      parent_instance : TGObject;
    end;




  PGtkEntryBufferClass = ^TGtkEntryBufferClass;
  TGtkEntryBufferClass = record
      parent_class : TGObjectClass;
      inserted_text : procedure (buffer:PGtkEntryBuffer; position:Tguint; chars:Pchar; n_chars:Tguint);cdecl;
      deleted_text : procedure (buffer:PGtkEntryBuffer; position:Tguint; n_chars:Tguint);cdecl;
      get_text : function (buffer:PGtkEntryBuffer; n_bytes:Pgsize):Pchar;cdecl;
      get_length : function (buffer:PGtkEntryBuffer):Tguint;cdecl;
      insert_text : function (buffer:PGtkEntryBuffer; position:Tguint; chars:Pchar; n_chars:Tguint):Tguint;cdecl;
      delete_text : function (buffer:PGtkEntryBuffer; position:Tguint; n_chars:Tguint):Tguint;cdecl;
      _gtk_reserved1 : procedure ;cdecl;
      _gtk_reserved2 : procedure ;cdecl;
      _gtk_reserved3 : procedure ;cdecl;
      _gtk_reserved4 : procedure ;cdecl;
      _gtk_reserved5 : procedure ;cdecl;
      _gtk_reserved6 : procedure ;cdecl;
      _gtk_reserved7 : procedure ;cdecl;
      _gtk_reserved8 : procedure ;cdecl;
    end;



function gtk_entry_buffer_get_type:TGType;cdecl;external;

function gtk_entry_buffer_new(initial_chars:Pchar; n_initial_chars:longint):PGtkEntryBuffer;cdecl;external;

function gtk_entry_buffer_get_bytes(buffer:PGtkEntryBuffer):Tgsize;cdecl;external;

function gtk_entry_buffer_get_length(buffer:PGtkEntryBuffer):Tguint;cdecl;external;

function gtk_entry_buffer_get_text(buffer:PGtkEntryBuffer):Pchar;cdecl;external;

procedure gtk_entry_buffer_set_text(buffer:PGtkEntryBuffer; chars:Pchar; n_chars:longint);cdecl;external;

procedure gtk_entry_buffer_set_max_length(buffer:PGtkEntryBuffer; max_length:longint);cdecl;external;

function gtk_entry_buffer_get_max_length(buffer:PGtkEntryBuffer):longint;cdecl;external;

function gtk_entry_buffer_insert_text(buffer:PGtkEntryBuffer; position:Tguint; chars:Pchar; n_chars:longint):Tguint;cdecl;external;

function gtk_entry_buffer_delete_text(buffer:PGtkEntryBuffer; position:Tguint; n_chars:longint):Tguint;cdecl;external;

procedure gtk_entry_buffer_emit_inserted_text(buffer:PGtkEntryBuffer; position:Tguint; chars:Pchar; n_chars:Tguint);cdecl;external;

procedure gtk_entry_buffer_emit_deleted_text(buffer:PGtkEntryBuffer; position:Tguint; n_chars:Tguint);cdecl;external;


{$endif}


implementation

function GTK_TYPE_ENTRY_BUFFER : longint; { return type might be wrong }
  begin
    GTK_TYPE_ENTRY_BUFFER:=gtk_entry_buffer_get_type;
  end;

function GTK_ENTRY_BUFFER(obj : longint) : longint;
begin
  GTK_ENTRY_BUFFER:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_ENTRY_BUFFER,GtkEntryBuffer);
end;

function GTK_ENTRY_BUFFER_CLASS(klass : longint) : longint;
begin
  GTK_ENTRY_BUFFER_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_ENTRY_BUFFER,GtkEntryBufferClass);
end;

function GTK_IS_ENTRY_BUFFER(obj : longint) : longint;
begin
  GTK_IS_ENTRY_BUFFER:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_ENTRY_BUFFER);
end;

function GTK_IS_ENTRY_BUFFER_CLASS(klass : longint) : longint;
begin
  GTK_IS_ENTRY_BUFFER_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_ENTRY_BUFFER);
end;

function GTK_ENTRY_BUFFER_GET_CLASS(obj : longint) : longint;
begin
  GTK_ENTRY_BUFFER_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_ENTRY_BUFFER,GtkEntryBufferClass);
end;


end.
