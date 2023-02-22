
  Type
  Pchar  = ^char;
  PGdkClipboard  = ^GdkClipboard;
  PGdkContentProvider  = ^GdkContentProvider;
  PGdkPaintable  = ^GdkPaintable;
  PGtkTextBuffer  = ^GtkTextBuffer;
  PGtkTextChildAnchor  = ^GtkTextChildAnchor;
  PGtkTextIter  = ^GtkTextIter;
  PGtkTextMark  = ^GtkTextMark;
  PGtkTextTag  = ^GtkTextTag;
  PGtkTextTagTable  = ^GtkTextTagTable;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { GTK - The GIMP Toolkit
   * gtktextbuffer.h Copyright (C) 2000 Red Hat, Inc.
   *
   * This library is free software; you can redistribute it and/or
   * modify it under the terms of the GNU Lesser General Public
   * License as published by the Free Software Foundation; either
   * version 2 of the License, or (at your option) any later version.
   *
   * This library is distributed in the hope that it will be useful,
   * but WITHOUT ANY WARRANTY; without even the implied warranty of
   * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   * Lesser General Public License for more details.
   *
   * You should have received a copy of the GNU Lesser General Public
   * License along with this library. If not, see <http://www.gnu.org/licenses/>.
    }
  {
   * Modified by the GTK+ Team and others 1997-2000.  See the AUTHORS
   * file for a list of people on the GTK+ Team.  See the ChangeLog
   * files for a list of changes.  These files are distributed with
   * GTK+ at ftp://ftp.gtk.org/pub/gtk/.
    }
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

  { was #define dname def_expr }
  function GTK_TYPE_TEXT_BUFFER : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_TEXT_BUFFER(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_TEXT_BUFFER_CLASS(klass : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_TEXT_BUFFER(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_TEXT_BUFFER_CLASS(klass : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_TEXT_BUFFER_GET_CLASS(obj : longint) : longint;  


  type
    _GtkTextBufferPrivate = GtkTextBufferPrivate;
    _GtkTextBufferClass = GtkTextBufferClass;
    _GtkTextBuffer = record
        parent_instance : GObject;
        priv : ^GtkTextBufferPrivate;
      end;

  {*
   * GtkTextBufferClass:
   * @parent_class: The object class structure needs to be the first.
   * @insert_text: The class handler for the `GtkTextBuffer::insert-text` signal.
   * @insert_paintable: The class handler for the `GtkTextBuffer::insert-paintable` signal.
   * @insert_child_anchor: The class handler for the `GtkTextBuffer::insert-child-anchor` signal.
   * @delete_range: The class handler for the `GtkTextBuffer::delete-range` signal.
   * @changed: The class handler for the `GtkTextBuffer::changed` signal.
   * @modified_changed: The class handler for the `GtkTextBuffer::modified-changed` signal.
   * @mark_set: The class handler for the `GtkTextBuffer::mark-set` signal.
   * @mark_deleted: The class handler for the `GtkTextBuffer::mark-deleted` signal.
   * @apply_tag: The class handler for the `GtkTextBuffer::apply-tag` signal.
   * @remove_tag: The class handler for the `GtkTextBuffer::remove-tag` signal.
   * @begin_user_action: The class handler for the `GtkTextBuffer::begin-user-action` signal.
   * @end_user_action: The class handler for the `GtkTextBuffer::end-user-action` signal.
   * @paste_done: The class handler for the `GtkTextBuffer::paste-done` signal.
   * @undo: The class handler for the `GtkTextBuffer::undo` signal
   * @redo: The class handler for the `GtkTextBuffer::redo` signal
   *
   * The class structure for `GtkTextBuffer`.
    }
(* Const before type ignored *)
(* Const before type ignored *)
(* Const before type ignored *)
(* Const before type ignored *)
(* Const before type ignored *)
(* Const before type ignored *)
  {< private > }
  { Padding for future expansion  }
    _GtkTextBufferClass = record
        parent_class : GObjectClass;
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

(* error 
GType        gtk_text_buffer_get_type       (void) G_GNUC_CONST;
 in declarator_list *)

    var
 : GType;
  { table is NULL to create a new one  }

  function gtk_text_buffer_new(table:PGtkTextTagTable):^GtkTextBuffer;

  function gtk_text_buffer_get_line_count(buffer:PGtkTextBuffer):longint;

  function gtk_text_buffer_get_char_count(buffer:PGtkTextBuffer):longint;

  function gtk_text_buffer_get_tag_table(buffer:PGtkTextBuffer):^GtkTextTagTable;

  { Delete whole buffer, then insert  }
(* Const before type ignored *)
  procedure gtk_text_buffer_set_text(buffer:PGtkTextBuffer; text:Pchar; len:longint);

  { Insert into the buffer  }
(* Const before type ignored *)
  procedure gtk_text_buffer_insert(buffer:PGtkTextBuffer; iter:PGtkTextIter; text:Pchar; len:longint);

(* Const before type ignored *)
  procedure gtk_text_buffer_insert_at_cursor(buffer:PGtkTextBuffer; text:Pchar; len:longint);

(* Const before type ignored *)
  function gtk_text_buffer_insert_interactive(buffer:PGtkTextBuffer; iter:PGtkTextIter; text:Pchar; len:longint; default_editable:gboolean):gboolean;

(* Const before type ignored *)
  function gtk_text_buffer_insert_interactive_at_cursor(buffer:PGtkTextBuffer; text:Pchar; len:longint; default_editable:gboolean):gboolean;

(* Const before type ignored *)
(* Const before type ignored *)
  procedure gtk_text_buffer_insert_range(buffer:PGtkTextBuffer; iter:PGtkTextIter; start:PGtkTextIter; end:PGtkTextIter);

(* Const before type ignored *)
(* Const before type ignored *)
  function gtk_text_buffer_insert_range_interactive(buffer:PGtkTextBuffer; iter:PGtkTextIter; start:PGtkTextIter; end:PGtkTextIter; default_editable:gboolean):gboolean;

(* Const before type ignored *)
(* error 
                                                   ...) G_GNUC_NULL_TERMINATED;
 in declarator_list *)

    var
 : pointer;
(* Const before type ignored *)
(* Const before type ignored *)
(* error 
                                                   ...) G_GNUC_NULL_TERMINATED;
 in declarator_list *)
 : pointer;
(* Const before type ignored *)

  procedure gtk_text_buffer_insert_markup(buffer:PGtkTextBuffer; iter:PGtkTextIter; markup:Pchar; len:longint);

  { Delete from the buffer  }
  procedure gtk_text_buffer_delete(buffer:PGtkTextBuffer; start:PGtkTextIter; end:PGtkTextIter);

  function gtk_text_buffer_delete_interactive(buffer:PGtkTextBuffer; start_iter:PGtkTextIter; end_iter:PGtkTextIter; default_editable:gboolean):gboolean;

  function gtk_text_buffer_backspace(buffer:PGtkTextBuffer; iter:PGtkTextIter; interactive:gboolean; default_editable:gboolean):gboolean;

  { Obtain strings from the buffer  }
(* Const before type ignored *)
(* Const before type ignored *)
  function gtk_text_buffer_get_text(buffer:PGtkTextBuffer; start:PGtkTextIter; end:PGtkTextIter; include_hidden_chars:gboolean):^char;

(* Const before type ignored *)
(* Const before type ignored *)
  function gtk_text_buffer_get_slice(buffer:PGtkTextBuffer; start:PGtkTextIter; end:PGtkTextIter; include_hidden_chars:gboolean):^char;

  { Insert a paintable  }
  procedure gtk_text_buffer_insert_paintable(buffer:PGtkTextBuffer; iter:PGtkTextIter; paintable:PGdkPaintable);

  { Insert a child anchor  }
  procedure gtk_text_buffer_insert_child_anchor(buffer:PGtkTextBuffer; iter:PGtkTextIter; anchor:PGtkTextChildAnchor);

  { Convenience, create and insert a child anchor  }
  function gtk_text_buffer_create_child_anchor(buffer:PGtkTextBuffer; iter:PGtkTextIter):^GtkTextChildAnchor;

  { Mark manipulation  }
(* Const before type ignored *)
  procedure gtk_text_buffer_add_mark(buffer:PGtkTextBuffer; mark:PGtkTextMark; where:PGtkTextIter);

(* Const before type ignored *)
(* Const before type ignored *)
  function gtk_text_buffer_create_mark(buffer:PGtkTextBuffer; mark_name:Pchar; where:PGtkTextIter; left_gravity:gboolean):^GtkTextMark;

(* Const before type ignored *)
  procedure gtk_text_buffer_move_mark(buffer:PGtkTextBuffer; mark:PGtkTextMark; where:PGtkTextIter);

  procedure gtk_text_buffer_delete_mark(buffer:PGtkTextBuffer; mark:PGtkTextMark);

(* Const before type ignored *)
  function gtk_text_buffer_get_mark(buffer:PGtkTextBuffer; name:Pchar):^GtkTextMark;

(* Const before type ignored *)
(* Const before type ignored *)
  procedure gtk_text_buffer_move_mark_by_name(buffer:PGtkTextBuffer; name:Pchar; where:PGtkTextIter);

(* Const before type ignored *)
  procedure gtk_text_buffer_delete_mark_by_name(buffer:PGtkTextBuffer; name:Pchar);

  function gtk_text_buffer_get_insert(buffer:PGtkTextBuffer):^GtkTextMark;

  function gtk_text_buffer_get_selection_bound(buffer:PGtkTextBuffer):^GtkTextMark;

  { efficiently move insert and selection_bound at the same time  }
(* Const before type ignored *)
  procedure gtk_text_buffer_place_cursor(buffer:PGtkTextBuffer; where:PGtkTextIter);

(* Const before type ignored *)
(* Const before type ignored *)
  procedure gtk_text_buffer_select_range(buffer:PGtkTextBuffer; ins:PGtkTextIter; bound:PGtkTextIter);

  { Tag manipulation  }
(* Const before type ignored *)
(* Const before type ignored *)
  procedure gtk_text_buffer_apply_tag(buffer:PGtkTextBuffer; tag:PGtkTextTag; start:PGtkTextIter; end:PGtkTextIter);

(* Const before type ignored *)
(* Const before type ignored *)
  procedure gtk_text_buffer_remove_tag(buffer:PGtkTextBuffer; tag:PGtkTextTag; start:PGtkTextIter; end:PGtkTextIter);

(* Const before type ignored *)
(* Const before type ignored *)
(* Const before type ignored *)
  procedure gtk_text_buffer_apply_tag_by_name(buffer:PGtkTextBuffer; name:Pchar; start:PGtkTextIter; end:PGtkTextIter);

(* Const before type ignored *)
(* Const before type ignored *)
(* Const before type ignored *)
  procedure gtk_text_buffer_remove_tag_by_name(buffer:PGtkTextBuffer; name:Pchar; start:PGtkTextIter; end:PGtkTextIter);

(* Const before type ignored *)
(* Const before type ignored *)
  procedure gtk_text_buffer_remove_all_tags(buffer:PGtkTextBuffer; start:PGtkTextIter; end:PGtkTextIter);

  { You can either ignore the return value, or use it to
   * set the attributes of the tag. tag_name can be NULL
    }
(* Const before type ignored *)
(* Const before type ignored *)
  function gtk_text_buffer_create_tag(buffer:PGtkTextBuffer; tag_name:Pchar; first_property_name:Pchar; args:array of const):^GtkTextTag;

  { Obtain iterators pointed at various places, then you can move the
   * iterator around using the GtkTextIter operators
    }
  function gtk_text_buffer_get_iter_at_line_offset(buffer:PGtkTextBuffer; iter:PGtkTextIter; line_number:longint; char_offset:longint):gboolean;

  function gtk_text_buffer_get_iter_at_line_index(buffer:PGtkTextBuffer; iter:PGtkTextIter; line_number:longint; byte_index:longint):gboolean;

  procedure gtk_text_buffer_get_iter_at_offset(buffer:PGtkTextBuffer; iter:PGtkTextIter; char_offset:longint);

  function gtk_text_buffer_get_iter_at_line(buffer:PGtkTextBuffer; iter:PGtkTextIter; line_number:longint):gboolean;

  procedure gtk_text_buffer_get_start_iter(buffer:PGtkTextBuffer; iter:PGtkTextIter);

  procedure gtk_text_buffer_get_end_iter(buffer:PGtkTextBuffer; iter:PGtkTextIter);

  procedure gtk_text_buffer_get_bounds(buffer:PGtkTextBuffer; start:PGtkTextIter; end:PGtkTextIter);

  procedure gtk_text_buffer_get_iter_at_mark(buffer:PGtkTextBuffer; iter:PGtkTextIter; mark:PGtkTextMark);

  procedure gtk_text_buffer_get_iter_at_child_anchor(buffer:PGtkTextBuffer; iter:PGtkTextIter; anchor:PGtkTextChildAnchor);

  { There's no get_first_iter because you just get the iter for
     line or char 0  }
  { Used to keep track of whether the buffer needs saving; anytime the
     buffer contents change, the modified flag is turned on. Whenever
     you save, turn it off. Tags and marks do not affect the modified
     flag, but if you would like them to you can connect a handler to
     the tag/mark signals and call set_modified in your handler  }
  function gtk_text_buffer_get_modified(buffer:PGtkTextBuffer):gboolean;

  procedure gtk_text_buffer_set_modified(buffer:PGtkTextBuffer; setting:gboolean);

  function gtk_text_buffer_get_has_selection(buffer:PGtkTextBuffer):gboolean;

  procedure gtk_text_buffer_add_selection_clipboard(buffer:PGtkTextBuffer; clipboard:PGdkClipboard);

  procedure gtk_text_buffer_remove_selection_clipboard(buffer:PGtkTextBuffer; clipboard:PGdkClipboard);

  procedure gtk_text_buffer_cut_clipboard(buffer:PGtkTextBuffer; clipboard:PGdkClipboard; default_editable:gboolean);

  procedure gtk_text_buffer_copy_clipboard(buffer:PGtkTextBuffer; clipboard:PGdkClipboard);

  procedure gtk_text_buffer_paste_clipboard(buffer:PGtkTextBuffer; clipboard:PGdkClipboard; override_location:PGtkTextIter; default_editable:gboolean);

  function gtk_text_buffer_get_selection_bounds(buffer:PGtkTextBuffer; start:PGtkTextIter; end:PGtkTextIter):gboolean;

  function gtk_text_buffer_delete_selection(buffer:PGtkTextBuffer; interactive:gboolean; default_editable:gboolean):gboolean;

  function gtk_text_buffer_get_selection_content(buffer:PGtkTextBuffer):^GdkContentProvider;

  function gtk_text_buffer_get_can_undo(buffer:PGtkTextBuffer):gboolean;

  function gtk_text_buffer_get_can_redo(buffer:PGtkTextBuffer):gboolean;

  function gtk_text_buffer_get_enable_undo(buffer:PGtkTextBuffer):gboolean;

  procedure gtk_text_buffer_set_enable_undo(buffer:PGtkTextBuffer; enable_undo:gboolean);

  function gtk_text_buffer_get_max_undo_levels(buffer:PGtkTextBuffer):guint;

  procedure gtk_text_buffer_set_max_undo_levels(buffer:PGtkTextBuffer; max_undo_levels:guint);

  procedure gtk_text_buffer_undo(buffer:PGtkTextBuffer);

  procedure gtk_text_buffer_redo(buffer:PGtkTextBuffer);

  procedure gtk_text_buffer_begin_irreversible_action(buffer:PGtkTextBuffer);

  procedure gtk_text_buffer_end_irreversible_action(buffer:PGtkTextBuffer);

  procedure gtk_text_buffer_begin_user_action(buffer:PGtkTextBuffer);

  procedure gtk_text_buffer_end_user_action(buffer:PGtkTextBuffer);

{$endif}
  { was #define dname def_expr }
  function GTK_TYPE_TEXT_BUFFER : longint; { return type might be wrong }
    begin
      GTK_TYPE_TEXT_BUFFER:=gtk_text_buffer_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_TEXT_BUFFER(obj : longint) : longint;
  begin
    GTK_TEXT_BUFFER:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_TEXT_BUFFER,GtkTextBuffer);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_TEXT_BUFFER_CLASS(klass : longint) : longint;
  begin
    GTK_TEXT_BUFFER_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_TEXT_BUFFER,GtkTextBufferClass);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_TEXT_BUFFER(obj : longint) : longint;
  begin
    GTK_IS_TEXT_BUFFER:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_TEXT_BUFFER);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_TEXT_BUFFER_CLASS(klass : longint) : longint;
  begin
    GTK_IS_TEXT_BUFFER_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_TEXT_BUFFER);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_TEXT_BUFFER_GET_CLASS(obj : longint) : longint;
  begin
    GTK_TEXT_BUFFER_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_TEXT_BUFFER,GtkTextBufferClass);
  end;

  function gtk_text_buffer_new(table:PGtkTextTagTable):PGtkTextBuffer;
  begin
    { You must implement this function }
  end;
  function gtk_text_buffer_get_line_count(buffer:PGtkTextBuffer):longint;
  begin
    { You must implement this function }
  end;
  function gtk_text_buffer_get_char_count(buffer:PGtkTextBuffer):longint;
  begin
    { You must implement this function }
  end;
  function gtk_text_buffer_get_tag_table(buffer:PGtkTextBuffer):PGtkTextTagTable;
  begin
    { You must implement this function }
  end;
  procedure gtk_text_buffer_set_text(buffer:PGtkTextBuffer; text:Pchar; len:longint);
  begin
    { You must implement this function }
  end;
  procedure gtk_text_buffer_insert(buffer:PGtkTextBuffer; iter:PGtkTextIter; text:Pchar; len:longint);
  begin
    { You must implement this function }
  end;
  procedure gtk_text_buffer_insert_at_cursor(buffer:PGtkTextBuffer; text:Pchar; len:longint);
  begin
    { You must implement this function }
  end;
  function gtk_text_buffer_insert_interactive(buffer:PGtkTextBuffer; iter:PGtkTextIter; text:Pchar; len:longint; default_editable:gboolean):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_text_buffer_insert_interactive_at_cursor(buffer:PGtkTextBuffer; text:Pchar; len:longint; default_editable:gboolean):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_text_buffer_insert_range(buffer:PGtkTextBuffer; iter:PGtkTextIter; start:PGtkTextIter; end:PGtkTextIter);
  begin
    { You must implement this function }
  end;
  function gtk_text_buffer_insert_range_interactive(buffer:PGtkTextBuffer; iter:PGtkTextIter; start:PGtkTextIter; end:PGtkTextIter; default_editable:gboolean):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_text_buffer_insert_markup(buffer:PGtkTextBuffer; iter:PGtkTextIter; markup:Pchar; len:longint);
  begin
    { You must implement this function }
  end;
  procedure gtk_text_buffer_delete(buffer:PGtkTextBuffer; start:PGtkTextIter; end:PGtkTextIter);
  begin
    { You must implement this function }
  end;
  function gtk_text_buffer_delete_interactive(buffer:PGtkTextBuffer; start_iter:PGtkTextIter; end_iter:PGtkTextIter; default_editable:gboolean):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_text_buffer_backspace(buffer:PGtkTextBuffer; iter:PGtkTextIter; interactive:gboolean; default_editable:gboolean):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_text_buffer_get_text(buffer:PGtkTextBuffer; start:PGtkTextIter; end:PGtkTextIter; include_hidden_chars:gboolean):Pchar;
  begin
    { You must implement this function }
  end;
  function gtk_text_buffer_get_slice(buffer:PGtkTextBuffer; start:PGtkTextIter; end:PGtkTextIter; include_hidden_chars:gboolean):Pchar;
  begin
    { You must implement this function }
  end;
  procedure gtk_text_buffer_insert_paintable(buffer:PGtkTextBuffer; iter:PGtkTextIter; paintable:PGdkPaintable);
  begin
    { You must implement this function }
  end;
  procedure gtk_text_buffer_insert_child_anchor(buffer:PGtkTextBuffer; iter:PGtkTextIter; anchor:PGtkTextChildAnchor);
  begin
    { You must implement this function }
  end;
  function gtk_text_buffer_create_child_anchor(buffer:PGtkTextBuffer; iter:PGtkTextIter):PGtkTextChildAnchor;
  begin
    { You must implement this function }
  end;
  procedure gtk_text_buffer_add_mark(buffer:PGtkTextBuffer; mark:PGtkTextMark; where:PGtkTextIter);
  begin
    { You must implement this function }
  end;
  function gtk_text_buffer_create_mark(buffer:PGtkTextBuffer; mark_name:Pchar; where:PGtkTextIter; left_gravity:gboolean):PGtkTextMark;
  begin
    { You must implement this function }
  end;
  procedure gtk_text_buffer_move_mark(buffer:PGtkTextBuffer; mark:PGtkTextMark; where:PGtkTextIter);
  begin
    { You must implement this function }
  end;
  procedure gtk_text_buffer_delete_mark(buffer:PGtkTextBuffer; mark:PGtkTextMark);
  begin
    { You must implement this function }
  end;
  function gtk_text_buffer_get_mark(buffer:PGtkTextBuffer; name:Pchar):PGtkTextMark;
  begin
    { You must implement this function }
  end;
  procedure gtk_text_buffer_move_mark_by_name(buffer:PGtkTextBuffer; name:Pchar; where:PGtkTextIter);
  begin
    { You must implement this function }
  end;
  procedure gtk_text_buffer_delete_mark_by_name(buffer:PGtkTextBuffer; name:Pchar);
  begin
    { You must implement this function }
  end;
  function gtk_text_buffer_get_insert(buffer:PGtkTextBuffer):PGtkTextMark;
  begin
    { You must implement this function }
  end;
  function gtk_text_buffer_get_selection_bound(buffer:PGtkTextBuffer):PGtkTextMark;
  begin
    { You must implement this function }
  end;
  procedure gtk_text_buffer_place_cursor(buffer:PGtkTextBuffer; where:PGtkTextIter);
  begin
    { You must implement this function }
  end;
  procedure gtk_text_buffer_select_range(buffer:PGtkTextBuffer; ins:PGtkTextIter; bound:PGtkTextIter);
  begin
    { You must implement this function }
  end;
  procedure gtk_text_buffer_apply_tag(buffer:PGtkTextBuffer; tag:PGtkTextTag; start:PGtkTextIter; end:PGtkTextIter);
  begin
    { You must implement this function }
  end;
  procedure gtk_text_buffer_remove_tag(buffer:PGtkTextBuffer; tag:PGtkTextTag; start:PGtkTextIter; end:PGtkTextIter);
  begin
    { You must implement this function }
  end;
  procedure gtk_text_buffer_apply_tag_by_name(buffer:PGtkTextBuffer; name:Pchar; start:PGtkTextIter; end:PGtkTextIter);
  begin
    { You must implement this function }
  end;
  procedure gtk_text_buffer_remove_tag_by_name(buffer:PGtkTextBuffer; name:Pchar; start:PGtkTextIter; end:PGtkTextIter);
  begin
    { You must implement this function }
  end;
  procedure gtk_text_buffer_remove_all_tags(buffer:PGtkTextBuffer; start:PGtkTextIter; end:PGtkTextIter);
  begin
    { You must implement this function }
  end;
  function gtk_text_buffer_create_tag(buffer:PGtkTextBuffer; tag_name:Pchar; first_property_name:Pchar):PGtkTextTag;
  begin
    { You must implement this function }
  end;
  function gtk_text_buffer_get_iter_at_line_offset(buffer:PGtkTextBuffer; iter:PGtkTextIter; line_number:longint; char_offset:longint):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_text_buffer_get_iter_at_line_index(buffer:PGtkTextBuffer; iter:PGtkTextIter; line_number:longint; byte_index:longint):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_text_buffer_get_iter_at_offset(buffer:PGtkTextBuffer; iter:PGtkTextIter; char_offset:longint);
  begin
    { You must implement this function }
  end;
  function gtk_text_buffer_get_iter_at_line(buffer:PGtkTextBuffer; iter:PGtkTextIter; line_number:longint):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_text_buffer_get_start_iter(buffer:PGtkTextBuffer; iter:PGtkTextIter);
  begin
    { You must implement this function }
  end;
  procedure gtk_text_buffer_get_end_iter(buffer:PGtkTextBuffer; iter:PGtkTextIter);
  begin
    { You must implement this function }
  end;
  procedure gtk_text_buffer_get_bounds(buffer:PGtkTextBuffer; start:PGtkTextIter; end:PGtkTextIter);
  begin
    { You must implement this function }
  end;
  procedure gtk_text_buffer_get_iter_at_mark(buffer:PGtkTextBuffer; iter:PGtkTextIter; mark:PGtkTextMark);
  begin
    { You must implement this function }
  end;
  procedure gtk_text_buffer_get_iter_at_child_anchor(buffer:PGtkTextBuffer; iter:PGtkTextIter; anchor:PGtkTextChildAnchor);
  begin
    { You must implement this function }
  end;
  function gtk_text_buffer_get_modified(buffer:PGtkTextBuffer):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_text_buffer_set_modified(buffer:PGtkTextBuffer; setting:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_text_buffer_get_has_selection(buffer:PGtkTextBuffer):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_text_buffer_add_selection_clipboard(buffer:PGtkTextBuffer; clipboard:PGdkClipboard);
  begin
    { You must implement this function }
  end;
  procedure gtk_text_buffer_remove_selection_clipboard(buffer:PGtkTextBuffer; clipboard:PGdkClipboard);
  begin
    { You must implement this function }
  end;
  procedure gtk_text_buffer_cut_clipboard(buffer:PGtkTextBuffer; clipboard:PGdkClipboard; default_editable:gboolean);
  begin
    { You must implement this function }
  end;
  procedure gtk_text_buffer_copy_clipboard(buffer:PGtkTextBuffer; clipboard:PGdkClipboard);
  begin
    { You must implement this function }
  end;
  procedure gtk_text_buffer_paste_clipboard(buffer:PGtkTextBuffer; clipboard:PGdkClipboard; override_location:PGtkTextIter; default_editable:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_text_buffer_get_selection_bounds(buffer:PGtkTextBuffer; start:PGtkTextIter; end:PGtkTextIter):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_text_buffer_delete_selection(buffer:PGtkTextBuffer; interactive:gboolean; default_editable:gboolean):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_text_buffer_get_selection_content(buffer:PGtkTextBuffer):PGdkContentProvider;
  begin
    { You must implement this function }
  end;
  function gtk_text_buffer_get_can_undo(buffer:PGtkTextBuffer):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_text_buffer_get_can_redo(buffer:PGtkTextBuffer):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_text_buffer_get_enable_undo(buffer:PGtkTextBuffer):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_text_buffer_set_enable_undo(buffer:PGtkTextBuffer; enable_undo:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_text_buffer_get_max_undo_levels(buffer:PGtkTextBuffer):guint;
  begin
    { You must implement this function }
  end;
  procedure gtk_text_buffer_set_max_undo_levels(buffer:PGtkTextBuffer; max_undo_levels:guint);
  begin
    { You must implement this function }
  end;
  procedure gtk_text_buffer_undo(buffer:PGtkTextBuffer);
  begin
    { You must implement this function }
  end;
  procedure gtk_text_buffer_redo(buffer:PGtkTextBuffer);
  begin
    { You must implement this function }
  end;
  procedure gtk_text_buffer_begin_irreversible_action(buffer:PGtkTextBuffer);
  begin
    { You must implement this function }
  end;
  procedure gtk_text_buffer_end_irreversible_action(buffer:PGtkTextBuffer);
  begin
    { You must implement this function }
  end;
  procedure gtk_text_buffer_begin_user_action(buffer:PGtkTextBuffer);
  begin
    { You must implement this function }
  end;
  procedure gtk_text_buffer_end_user_action(buffer:PGtkTextBuffer);
  begin
    { You must implement this function }
  end;

