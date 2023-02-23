
unit gtktextbuffer;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtktextbuffer.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtktextbuffer.h
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
PGdkClipboard  = ^GdkClipboard;
PGdkContentProvider  = ^GdkContentProvider;
PGdkPaintable  = ^GdkPaintable;
PGtkTextBuffer  = ^GtkTextBuffer;
PGtkTextBufferClass  = ^GtkTextBufferClass;
PGtkTextBufferPrivate  = ^GtkTextBufferPrivate;
PGtkTextChildAnchor  = ^GtkTextChildAnchor;
PGtkTextIter  = ^GtkTextIter;
PGtkTextMark  = ^GtkTextMark;
PGtkTextTag  = ^GtkTextTag;
PGtkTextTagTable  = ^GtkTextTagTable;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef __GTK_TEXT_BUFFER_H__}
{$define __GTK_TEXT_BUFFER_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwidget.h>}
{$include <gtk/gtktexttagtable.h>}
{$include <gtk/gtktextiter.h>}
{$include <gtk/gtktextmark.h>}
{$include <gtk/gtktextchild.h>}


function GTK_TYPE_TEXT_BUFFER : longint; { return type might be wrong }

function GTK_TEXT_BUFFER(obj : longint) : longint;

function GTK_TEXT_BUFFER_CLASS(klass : longint) : longint;

function GTK_IS_TEXT_BUFFER(obj : longint) : longint;

function GTK_IS_TEXT_BUFFER_CLASS(klass : longint) : longint;

function GTK_TEXT_BUFFER_GET_CLASS(obj : longint) : longint;

type
  PGtkTextBuffer = ^TGtkTextBuffer;
  TGtkTextBuffer = record
      parent_instance : TGObject;
      priv : PGtkTextBufferPrivate;
    end;




  PGtkTextBufferClass = ^TGtkTextBufferClass;
  TGtkTextBufferClass = record
      parent_class : TGObjectClass;
      insert_text : procedure (buffer:PGtkTextBuffer; pos:PGtkTextIter; new_text:Pchar; new_text_length:longint);cdecl;
      insert_paintable : procedure (buffer:PGtkTextBuffer; iter:PGtkTextIter; paintable:PGdkPaintable);cdecl;
      insert_child_anchor : procedure (buffer:PGtkTextBuffer; iter:PGtkTextIter; anchor:PGtkTextChildAnchor);cdecl;
      delete_range : procedure (buffer:PGtkTextBuffer; start:PGtkTextIter; end:PGtkTextIter);cdecl;
      changed : procedure (buffer:PGtkTextBuffer);cdecl;
      modified_changed : procedure (buffer:PGtkTextBuffer);cdecl;
      mark_set : procedure (buffer:PGtkTextBuffer; location:PGtkTextIter; mark:PGtkTextMark);cdecl;
      mark_deleted : procedure (buffer:PGtkTextBuffer; mark:PGtkTextMark);cdecl;
      apply_tag : procedure (buffer:PGtkTextBuffer; tag:PGtkTextTag; start:PGtkTextIter; end:PGtkTextIter);cdecl;
      remove_tag : procedure (buffer:PGtkTextBuffer; tag:PGtkTextTag; start:PGtkTextIter; end:PGtkTextIter);cdecl;
      begin_user_action : procedure (buffer:PGtkTextBuffer);cdecl;
      end_user_action : procedure (buffer:PGtkTextBuffer);cdecl;
      paste_done : procedure (buffer:PGtkTextBuffer; clipboard:PGdkClipboard);cdecl;
      undo : procedure (buffer:PGtkTextBuffer);cdecl;
      redo : procedure (buffer:PGtkTextBuffer);cdecl;
      _gtk_reserved1 : procedure ;cdecl;
      _gtk_reserved2 : procedure ;cdecl;
      _gtk_reserved3 : procedure ;cdecl;
      _gtk_reserved4 : procedure ;cdecl;
    end;



function gtk_text_buffer_get_type:TGType;cdecl;external;


function gtk_text_buffer_new(table:PGtkTextTagTable):PGtkTextBuffer;cdecl;external;

function gtk_text_buffer_get_line_count(buffer:PGtkTextBuffer):longint;cdecl;external;

function gtk_text_buffer_get_char_count(buffer:PGtkTextBuffer):longint;cdecl;external;

function gtk_text_buffer_get_tag_table(buffer:PGtkTextBuffer):PGtkTextTagTable;cdecl;external;


procedure gtk_text_buffer_set_text(buffer:PGtkTextBuffer; text:Pchar; len:longint);cdecl;external;


procedure gtk_text_buffer_insert(buffer:PGtkTextBuffer; iter:PGtkTextIter; text:Pchar; len:longint);cdecl;external;

procedure gtk_text_buffer_insert_at_cursor(buffer:PGtkTextBuffer; text:Pchar; len:longint);cdecl;external;

function gtk_text_buffer_insert_interactive(buffer:PGtkTextBuffer; iter:PGtkTextIter; text:Pchar; len:longint; default_editable:Tgboolean):Tgboolean;cdecl;external;

function gtk_text_buffer_insert_interactive_at_cursor(buffer:PGtkTextBuffer; text:Pchar; len:longint; default_editable:Tgboolean):Tgboolean;cdecl;external;

procedure gtk_text_buffer_insert_range(buffer:PGtkTextBuffer; iter:PGtkTextIter; start:PGtkTextIter; end:PGtkTextIter);cdecl;external;

function gtk_text_buffer_insert_range_interactive(buffer:PGtkTextBuffer; iter:PGtkTextIter; start:PGtkTextIter; end:PGtkTextIter; default_editable:Tgboolean):Tgboolean;cdecl;external;

procedure gtk_text_buffer_insert_with_tags(buffer:PGtkTextBuffer; iter:PGtkTextIter; text:Pchar; len:longint; first_tag:PGtkTextTag; 
            args:array of const);cdecl;external;
procedure gtk_text_buffer_insert_with_tags(buffer:PGtkTextBuffer; iter:PGtkTextIter; text:Pchar; len:longint; first_tag:PGtkTextTag);cdecl;external;

procedure gtk_text_buffer_insert_with_tags_by_name(buffer:PGtkTextBuffer; iter:PGtkTextIter; text:Pchar; len:longint; first_tag_name:Pchar; 
            args:array of const);cdecl;external;
procedure gtk_text_buffer_insert_with_tags_by_name(buffer:PGtkTextBuffer; iter:PGtkTextIter; text:Pchar; len:longint; first_tag_name:Pchar);cdecl;external;

procedure gtk_text_buffer_insert_markup(buffer:PGtkTextBuffer; iter:PGtkTextIter; markup:Pchar; len:longint);cdecl;external;


procedure gtk_text_buffer_delete(buffer:PGtkTextBuffer; start:PGtkTextIter; end:PGtkTextIter);cdecl;external;

function gtk_text_buffer_delete_interactive(buffer:PGtkTextBuffer; start_iter:PGtkTextIter; end_iter:PGtkTextIter; default_editable:Tgboolean):Tgboolean;cdecl;external;

function gtk_text_buffer_backspace(buffer:PGtkTextBuffer; iter:PGtkTextIter; interactive:Tgboolean; default_editable:Tgboolean):Tgboolean;cdecl;external;


function gtk_text_buffer_get_text(buffer:PGtkTextBuffer; start:PGtkTextIter; end:PGtkTextIter; include_hidden_chars:Tgboolean):Pchar;cdecl;external;

function gtk_text_buffer_get_slice(buffer:PGtkTextBuffer; start:PGtkTextIter; end:PGtkTextIter; include_hidden_chars:Tgboolean):Pchar;cdecl;external;


procedure gtk_text_buffer_insert_paintable(buffer:PGtkTextBuffer; iter:PGtkTextIter; paintable:PGdkPaintable);cdecl;external;


procedure gtk_text_buffer_insert_child_anchor(buffer:PGtkTextBuffer; iter:PGtkTextIter; anchor:PGtkTextChildAnchor);cdecl;external;


function gtk_text_buffer_create_child_anchor(buffer:PGtkTextBuffer; iter:PGtkTextIter):PGtkTextChildAnchor;cdecl;external;


procedure gtk_text_buffer_add_mark(buffer:PGtkTextBuffer; mark:PGtkTextMark; where:PGtkTextIter);cdecl;external;

function gtk_text_buffer_create_mark(buffer:PGtkTextBuffer; mark_name:Pchar; where:PGtkTextIter; left_gravity:Tgboolean):PGtkTextMark;cdecl;external;

procedure gtk_text_buffer_move_mark(buffer:PGtkTextBuffer; mark:PGtkTextMark; where:PGtkTextIter);cdecl;external;

procedure gtk_text_buffer_delete_mark(buffer:PGtkTextBuffer; mark:PGtkTextMark);cdecl;external;

function gtk_text_buffer_get_mark(buffer:PGtkTextBuffer; name:Pchar):PGtkTextMark;cdecl;external;

procedure gtk_text_buffer_move_mark_by_name(buffer:PGtkTextBuffer; name:Pchar; where:PGtkTextIter);cdecl;external;

procedure gtk_text_buffer_delete_mark_by_name(buffer:PGtkTextBuffer; name:Pchar);cdecl;external;

function gtk_text_buffer_get_insert(buffer:PGtkTextBuffer):PGtkTextMark;cdecl;external;

function gtk_text_buffer_get_selection_bound(buffer:PGtkTextBuffer):PGtkTextMark;cdecl;external;


procedure gtk_text_buffer_place_cursor(buffer:PGtkTextBuffer; where:PGtkTextIter);cdecl;external;

procedure gtk_text_buffer_select_range(buffer:PGtkTextBuffer; ins:PGtkTextIter; bound:PGtkTextIter);cdecl;external;


procedure gtk_text_buffer_apply_tag(buffer:PGtkTextBuffer; tag:PGtkTextTag; start:PGtkTextIter; end:PGtkTextIter);cdecl;external;

procedure gtk_text_buffer_remove_tag(buffer:PGtkTextBuffer; tag:PGtkTextTag; start:PGtkTextIter; end:PGtkTextIter);cdecl;external;

procedure gtk_text_buffer_apply_tag_by_name(buffer:PGtkTextBuffer; name:Pchar; start:PGtkTextIter; end:PGtkTextIter);cdecl;external;

procedure gtk_text_buffer_remove_tag_by_name(buffer:PGtkTextBuffer; name:Pchar; start:PGtkTextIter; end:PGtkTextIter);cdecl;external;

procedure gtk_text_buffer_remove_all_tags(buffer:PGtkTextBuffer; start:PGtkTextIter; end:PGtkTextIter);cdecl;external;


function gtk_text_buffer_create_tag(buffer:PGtkTextBuffer; tag_name:Pchar; first_property_name:Pchar; args:array of const):PGtkTextTag;cdecl;external;
function gtk_text_buffer_create_tag(buffer:PGtkTextBuffer; tag_name:Pchar; first_property_name:Pchar):PGtkTextTag;cdecl;external;


function gtk_text_buffer_get_iter_at_line_offset(buffer:PGtkTextBuffer; iter:PGtkTextIter; line_number:longint; char_offset:longint):Tgboolean;cdecl;external;

function gtk_text_buffer_get_iter_at_line_index(buffer:PGtkTextBuffer; iter:PGtkTextIter; line_number:longint; byte_index:longint):Tgboolean;cdecl;external;

procedure gtk_text_buffer_get_iter_at_offset(buffer:PGtkTextBuffer; iter:PGtkTextIter; char_offset:longint);cdecl;external;

function gtk_text_buffer_get_iter_at_line(buffer:PGtkTextBuffer; iter:PGtkTextIter; line_number:longint):Tgboolean;cdecl;external;

procedure gtk_text_buffer_get_start_iter(buffer:PGtkTextBuffer; iter:PGtkTextIter);cdecl;external;

procedure gtk_text_buffer_get_end_iter(buffer:PGtkTextBuffer; iter:PGtkTextIter);cdecl;external;

procedure gtk_text_buffer_get_bounds(buffer:PGtkTextBuffer; start:PGtkTextIter; end:PGtkTextIter);cdecl;external;

procedure gtk_text_buffer_get_iter_at_mark(buffer:PGtkTextBuffer; iter:PGtkTextIter; mark:PGtkTextMark);cdecl;external;

procedure gtk_text_buffer_get_iter_at_child_anchor(buffer:PGtkTextBuffer; iter:PGtkTextIter; anchor:PGtkTextChildAnchor);cdecl;external;



function gtk_text_buffer_get_modified(buffer:PGtkTextBuffer):Tgboolean;cdecl;external;

procedure gtk_text_buffer_set_modified(buffer:PGtkTextBuffer; setting:Tgboolean);cdecl;external;

function gtk_text_buffer_get_has_selection(buffer:PGtkTextBuffer):Tgboolean;cdecl;external;

procedure gtk_text_buffer_add_selection_clipboard(buffer:PGtkTextBuffer; clipboard:PGdkClipboard);cdecl;external;

procedure gtk_text_buffer_remove_selection_clipboard(buffer:PGtkTextBuffer; clipboard:PGdkClipboard);cdecl;external;

procedure gtk_text_buffer_cut_clipboard(buffer:PGtkTextBuffer; clipboard:PGdkClipboard; default_editable:Tgboolean);cdecl;external;

procedure gtk_text_buffer_copy_clipboard(buffer:PGtkTextBuffer; clipboard:PGdkClipboard);cdecl;external;

procedure gtk_text_buffer_paste_clipboard(buffer:PGtkTextBuffer; clipboard:PGdkClipboard; override_location:PGtkTextIter; default_editable:Tgboolean);cdecl;external;

function gtk_text_buffer_get_selection_bounds(buffer:PGtkTextBuffer; start:PGtkTextIter; end:PGtkTextIter):Tgboolean;cdecl;external;

function gtk_text_buffer_delete_selection(buffer:PGtkTextBuffer; interactive:Tgboolean; default_editable:Tgboolean):Tgboolean;cdecl;external;

function gtk_text_buffer_get_selection_content(buffer:PGtkTextBuffer):PGdkContentProvider;cdecl;external;

function gtk_text_buffer_get_can_undo(buffer:PGtkTextBuffer):Tgboolean;cdecl;external;

function gtk_text_buffer_get_can_redo(buffer:PGtkTextBuffer):Tgboolean;cdecl;external;

function gtk_text_buffer_get_enable_undo(buffer:PGtkTextBuffer):Tgboolean;cdecl;external;

procedure gtk_text_buffer_set_enable_undo(buffer:PGtkTextBuffer; enable_undo:Tgboolean);cdecl;external;

function gtk_text_buffer_get_max_undo_levels(buffer:PGtkTextBuffer):Tguint;cdecl;external;

procedure gtk_text_buffer_set_max_undo_levels(buffer:PGtkTextBuffer; max_undo_levels:Tguint);cdecl;external;

procedure gtk_text_buffer_undo(buffer:PGtkTextBuffer);cdecl;external;

procedure gtk_text_buffer_redo(buffer:PGtkTextBuffer);cdecl;external;

procedure gtk_text_buffer_begin_irreversible_action(buffer:PGtkTextBuffer);cdecl;external;

procedure gtk_text_buffer_end_irreversible_action(buffer:PGtkTextBuffer);cdecl;external;

procedure gtk_text_buffer_begin_user_action(buffer:PGtkTextBuffer);cdecl;external;

procedure gtk_text_buffer_end_user_action(buffer:PGtkTextBuffer);cdecl;external;

{$endif}

implementation

function GTK_TYPE_TEXT_BUFFER : longint; { return type might be wrong }
  begin
    GTK_TYPE_TEXT_BUFFER:=gtk_text_buffer_get_type;
  end;

function GTK_TEXT_BUFFER(obj : longint) : longint;
begin
  GTK_TEXT_BUFFER:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_TEXT_BUFFER,GtkTextBuffer);
end;

function GTK_TEXT_BUFFER_CLASS(klass : longint) : longint;
begin
  GTK_TEXT_BUFFER_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_TEXT_BUFFER,GtkTextBufferClass);
end;

function GTK_IS_TEXT_BUFFER(obj : longint) : longint;
begin
  GTK_IS_TEXT_BUFFER:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_TEXT_BUFFER);
end;

function GTK_IS_TEXT_BUFFER_CLASS(klass : longint) : longint;
begin
  GTK_IS_TEXT_BUFFER_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_TEXT_BUFFER);
end;

function GTK_TEXT_BUFFER_GET_CLASS(obj : longint) : longint;
begin
  GTK_TEXT_BUFFER_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_TEXT_BUFFER,GtkTextBufferClass);
end;


end.
