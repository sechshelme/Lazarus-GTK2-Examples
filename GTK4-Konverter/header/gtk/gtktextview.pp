
  Type
  Pchar  = ^char;
  PGdkEvent  = ^GdkEvent;
  PGdkRectangle  = ^GdkRectangle;
  PGMenuModel  = ^GMenuModel;
  PGtkSnapshot  = ^GtkSnapshot;
  PGtkTextBuffer  = ^GtkTextBuffer;
  PGtkTextChildAnchor  = ^GtkTextChildAnchor;
  PGtkTextIter  = ^GtkTextIter;
  PGtkTextMark  = ^GtkTextMark;
  PGtkTextView  = ^GtkTextView;
  PGtkWidget  = ^GtkWidget;
  Plongint  = ^longint;
  PPangoContext  = ^PangoContext;
  PPangoTabArray  = ^PangoTabArray;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { GTK - The GIMP Toolkit
   * gtktextview.h Copyright (C) 2000 Red Hat, Inc.
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
{$ifndef __GTK_TEXT_VIEW_H__}
{$define __GTK_TEXT_VIEW_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwidget.h>}
{$include <gtk/gtkimcontext.h>}
{$include <gtk/gtktextbuffer.h>}

  { was #define dname def_expr }
  function GTK_TYPE_TEXT_VIEW : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_TEXT_VIEW(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_TEXT_VIEW_CLASS(klass : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_TEXT_VIEW(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_TEXT_VIEW_CLASS(klass : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_TEXT_VIEW_GET_CLASS(obj : longint) : longint;  

  {*
   * GtkTextWindowType:
   * @GTK_TEXT_WINDOW_WIDGET: Window that floats over scrolling areas.
   * @GTK_TEXT_WINDOW_TEXT: Scrollable text window.
   * @GTK_TEXT_WINDOW_LEFT: Left side border window.
   * @GTK_TEXT_WINDOW_RIGHT: Right side border window.
   * @GTK_TEXT_WINDOW_TOP: Top border window.
   * @GTK_TEXT_WINDOW_BOTTOM: Bottom border window.
   *
   * Used to reference the parts of `GtkTextView`.
    }

  type
    GtkTextWindowType = (GTK_TEXT_WINDOW_WIDGET := 1,GTK_TEXT_WINDOW_TEXT,
      GTK_TEXT_WINDOW_LEFT,GTK_TEXT_WINDOW_RIGHT,
      GTK_TEXT_WINDOW_TOP,GTK_TEXT_WINDOW_BOTTOM
      );
  {*
   * GtkTextViewLayer:
   * @GTK_TEXT_VIEW_LAYER_BELOW_TEXT: The layer rendered below the text (but above the background).
   * @GTK_TEXT_VIEW_LAYER_ABOVE_TEXT: The layer rendered above the text.
   *
   * Used to reference the layers of `GtkTextView` for the purpose of customized
   * drawing with the ::snapshot_layer vfunc.
    }

    GtkTextViewLayer = (GTK_TEXT_VIEW_LAYER_BELOW_TEXT,GTK_TEXT_VIEW_LAYER_ABOVE_TEXT
      );
  {*
   * GtkTextExtendSelection:
   * @GTK_TEXT_EXTEND_SELECTION_WORD: Selects the current word. It is triggered by
   *   a double-click for example.
   * @GTK_TEXT_EXTEND_SELECTION_LINE: Selects the current line. It is triggered by
   *   a triple-click for example.
   *
   * Granularity types that extend the text selection. Use the
   * `GtkTextView::extend-selection` signal to customize the selection.
    }

    GtkTextExtendSelection = (GTK_TEXT_EXTEND_SELECTION_WORD,GTK_TEXT_EXTEND_SELECTION_LINE
      );
  {*
   * GTK_TEXT_VIEW_PRIORITY_VALIDATE: (value 125)
   *
   * The priority at which the text view validates onscreen lines
   * in an idle job in the background.
    }

  const
    GTK_TEXT_VIEW_PRIORITY_VALIDATE = GDK_PRIORITY_REDRAW+5;    

  type
    _GtkTextView = GtkTextView;
    _GtkTextViewPrivate = GtkTextViewPrivate;
    _GtkTextViewClass = GtkTextViewClass;
  {< private > }
    _GtkTextView = record
        parent_instance : GtkWidget;
        priv : ^GtkTextViewPrivate;
      end;

  {*
   * GtkTextViewClass:
   * @parent_class: The object class structure needs to be the first
   * @move_cursor: The class handler for the `GtkTextView::move-cursor`
   *   keybinding signal.
   * @set_anchor: The class handler for the `GtkTextView::set-anchor`
   *   keybinding signal.
   * @insert_at_cursor: The class handler for the `GtkTextView::insert-at-cursor`
   *   keybinding signal.
   * @delete_from_cursor: The class handler for the `GtkTextView::delete-from-cursor`
   *   keybinding signal.
   * @backspace: The class handler for the `GtkTextView::backspace`
   *   keybinding signal.
   * @cut_clipboard: The class handler for the `GtkTextView::cut-clipboard`
   *   keybinding signal
   * @copy_clipboard: The class handler for the `GtkTextView::copy-clipboard`
   *   keybinding signal.
   * @paste_clipboard: The class handler for the `GtkTextView::paste-clipboard`
   *   keybinding signal.
   * @toggle_overwrite: The class handler for the `GtkTextView::toggle-overwrite`
   *   keybinding signal.
   * @create_buffer: The create_buffer vfunc is called to create a `GtkTextBuffer`
   *   for the text view. The default implementation is to just call
   *   gtk_text_buffer_new().
   * @snapshot_layer: The snapshot_layer vfunc is called before and after the text
   *   view is drawing its own text. Applications can override this vfunc
   *   in a subclass to draw customized content underneath or above the
   *   text. In the %GTK_TEXT_VIEW_LAYER_BELOW_TEXT and %GTK_TEXT_VIEW_LAYER_ABOVE_TEXT
   *   layers the drawing is done in the buffer coordinate space.
   * @extend_selection: The class handler for the `GtkTextView::extend-selection` signal.
   * @insert_emoji: The class handler for the `GtkTextView::insert-emoji` signal.
    }
  {< public > }
(* Const before type ignored *)
(* Const before type ignored *)
  {< private > }
    _GtkTextViewClass = record
        parent_class : GtkWidgetClass;
        move_cursor : procedure (text_view:PGtkTextView; step:GtkMovementStep; count:longint; extend_selection:gboolean);cdecl;
        set_anchor : procedure (text_view:PGtkTextView);cdecl;
        insert_at_cursor : procedure (text_view:PGtkTextView; str:Pchar);cdecl;
        delete_from_cursor : procedure (text_view:PGtkTextView; _type:GtkDeleteType; count:longint);cdecl;
        backspace : procedure (text_view:PGtkTextView);cdecl;
        cut_clipboard : procedure (text_view:PGtkTextView);cdecl;
        copy_clipboard : procedure (text_view:PGtkTextView);cdecl;
        paste_clipboard : procedure (text_view:PGtkTextView);cdecl;
        toggle_overwrite : procedure (text_view:PGtkTextView);cdecl;
        create_buffer : function (text_view:PGtkTextView):PGtkTextBuffer;cdecl;
        snapshot_layer : procedure (text_view:PGtkTextView; layer:GtkTextViewLayer; snapshot:PGtkSnapshot);cdecl;
        extend_selection : function (text_view:PGtkTextView; granularity:GtkTextExtendSelection; location:PGtkTextIter; start:PGtkTextIter; end:PGtkTextIter):gboolean;cdecl;
        insert_emoji : procedure (text_view:PGtkTextView);cdecl;
        padding : array[0..7] of gpointer;
      end;

(* error 
GType          gtk_text_view_get_type              (void) G_GNUC_CONST;
 in declarator_list *)

    var
 : GType;

  function gtk_text_view_new:^GtkWidget;

  function gtk_text_view_new_with_buffer(buffer:PGtkTextBuffer):^GtkWidget;

  procedure gtk_text_view_set_buffer(text_view:PGtkTextView; buffer:PGtkTextBuffer);

  function gtk_text_view_get_buffer(text_view:PGtkTextView):^GtkTextBuffer;

  function gtk_text_view_scroll_to_iter(text_view:PGtkTextView; iter:PGtkTextIter; within_margin:double; use_align:gboolean; xalign:double; 
             yalign:double):gboolean;

  procedure gtk_text_view_scroll_to_mark(text_view:PGtkTextView; mark:PGtkTextMark; within_margin:double; use_align:gboolean; xalign:double; 
              yalign:double);

  procedure gtk_text_view_scroll_mark_onscreen(text_view:PGtkTextView; mark:PGtkTextMark);

  function gtk_text_view_move_mark_onscreen(text_view:PGtkTextView; mark:PGtkTextMark):gboolean;

  function gtk_text_view_place_cursor_onscreen(text_view:PGtkTextView):gboolean;

  procedure gtk_text_view_get_visible_rect(text_view:PGtkTextView; visible_rect:PGdkRectangle);

  procedure gtk_text_view_set_cursor_visible(text_view:PGtkTextView; setting:gboolean);

  function gtk_text_view_get_cursor_visible(text_view:PGtkTextView):gboolean;

  procedure gtk_text_view_reset_cursor_blink(text_view:PGtkTextView);

(* Const before type ignored *)
  procedure gtk_text_view_get_cursor_locations(text_view:PGtkTextView; iter:PGtkTextIter; strong:PGdkRectangle; weak:PGdkRectangle);

(* Const before type ignored *)
  procedure gtk_text_view_get_iter_location(text_view:PGtkTextView; iter:PGtkTextIter; location:PGdkRectangle);

  function gtk_text_view_get_iter_at_location(text_view:PGtkTextView; iter:PGtkTextIter; x:longint; y:longint):gboolean;

  function gtk_text_view_get_iter_at_position(text_view:PGtkTextView; iter:PGtkTextIter; trailing:Plongint; x:longint; y:longint):gboolean;

(* Const before type ignored *)
  procedure gtk_text_view_get_line_yrange(text_view:PGtkTextView; iter:PGtkTextIter; y:Plongint; height:Plongint);

  procedure gtk_text_view_get_line_at_y(text_view:PGtkTextView; target_iter:PGtkTextIter; y:longint; line_top:Plongint);

  procedure gtk_text_view_buffer_to_window_coords(text_view:PGtkTextView; win:GtkTextWindowType; buffer_x:longint; buffer_y:longint; window_x:Plongint; 
              window_y:Plongint);

  procedure gtk_text_view_window_to_buffer_coords(text_view:PGtkTextView; win:GtkTextWindowType; window_x:longint; window_y:longint; buffer_x:Plongint; 
              buffer_y:Plongint);

  function gtk_text_view_forward_display_line(text_view:PGtkTextView; iter:PGtkTextIter):gboolean;

  function gtk_text_view_backward_display_line(text_view:PGtkTextView; iter:PGtkTextIter):gboolean;

  function gtk_text_view_forward_display_line_end(text_view:PGtkTextView; iter:PGtkTextIter):gboolean;

  function gtk_text_view_backward_display_line_start(text_view:PGtkTextView; iter:PGtkTextIter):gboolean;

(* Const before type ignored *)
  function gtk_text_view_starts_display_line(text_view:PGtkTextView; iter:PGtkTextIter):gboolean;

  function gtk_text_view_move_visually(text_view:PGtkTextView; iter:PGtkTextIter; count:longint):gboolean;

  function gtk_text_view_im_context_filter_keypress(text_view:PGtkTextView; event:PGdkEvent):gboolean;

  procedure gtk_text_view_reset_im_context(text_view:PGtkTextView);

  { Adding child widgets  }
  function gtk_text_view_get_gutter(text_view:PGtkTextView; win:GtkTextWindowType):^GtkWidget;

  procedure gtk_text_view_set_gutter(text_view:PGtkTextView; win:GtkTextWindowType; widget:PGtkWidget);

  procedure gtk_text_view_add_child_at_anchor(text_view:PGtkTextView; child:PGtkWidget; anchor:PGtkTextChildAnchor);

  procedure gtk_text_view_add_overlay(text_view:PGtkTextView; child:PGtkWidget; xpos:longint; ypos:longint);

  procedure gtk_text_view_move_overlay(text_view:PGtkTextView; child:PGtkWidget; xpos:longint; ypos:longint);

  procedure gtk_text_view_remove(text_view:PGtkTextView; child:PGtkWidget);

  { Default style settings (fallbacks if no tag affects the property)  }
  procedure gtk_text_view_set_wrap_mode(text_view:PGtkTextView; wrap_mode:GtkWrapMode);

  function gtk_text_view_get_wrap_mode(text_view:PGtkTextView):GtkWrapMode;

  procedure gtk_text_view_set_editable(text_view:PGtkTextView; setting:gboolean);

  function gtk_text_view_get_editable(text_view:PGtkTextView):gboolean;

  procedure gtk_text_view_set_overwrite(text_view:PGtkTextView; overwrite:gboolean);

  function gtk_text_view_get_overwrite(text_view:PGtkTextView):gboolean;

  procedure gtk_text_view_set_accepts_tab(text_view:PGtkTextView; accepts_tab:gboolean);

  function gtk_text_view_get_accepts_tab(text_view:PGtkTextView):gboolean;

  procedure gtk_text_view_set_pixels_above_lines(text_view:PGtkTextView; pixels_above_lines:longint);

  function gtk_text_view_get_pixels_above_lines(text_view:PGtkTextView):longint;

  procedure gtk_text_view_set_pixels_below_lines(text_view:PGtkTextView; pixels_below_lines:longint);

  function gtk_text_view_get_pixels_below_lines(text_view:PGtkTextView):longint;

  procedure gtk_text_view_set_pixels_inside_wrap(text_view:PGtkTextView; pixels_inside_wrap:longint);

  function gtk_text_view_get_pixels_inside_wrap(text_view:PGtkTextView):longint;

  procedure gtk_text_view_set_justification(text_view:PGtkTextView; justification:GtkJustification);

  function gtk_text_view_get_justification(text_view:PGtkTextView):GtkJustification;

  procedure gtk_text_view_set_left_margin(text_view:PGtkTextView; left_margin:longint);

  function gtk_text_view_get_left_margin(text_view:PGtkTextView):longint;

  procedure gtk_text_view_set_right_margin(text_view:PGtkTextView; right_margin:longint);

  function gtk_text_view_get_right_margin(text_view:PGtkTextView):longint;

  procedure gtk_text_view_set_top_margin(text_view:PGtkTextView; top_margin:longint);

  function gtk_text_view_get_top_margin(text_view:PGtkTextView):longint;

  procedure gtk_text_view_set_bottom_margin(text_view:PGtkTextView; bottom_margin:longint);

  function gtk_text_view_get_bottom_margin(text_view:PGtkTextView):longint;

  procedure gtk_text_view_set_indent(text_view:PGtkTextView; indent:longint);

  function gtk_text_view_get_indent(text_view:PGtkTextView):longint;

  procedure gtk_text_view_set_tabs(text_view:PGtkTextView; tabs:PPangoTabArray);

  function gtk_text_view_get_tabs(text_view:PGtkTextView):^PangoTabArray;

  procedure gtk_text_view_set_input_purpose(text_view:PGtkTextView; purpose:GtkInputPurpose);

  function gtk_text_view_get_input_purpose(text_view:PGtkTextView):GtkInputPurpose;

  procedure gtk_text_view_set_input_hints(text_view:PGtkTextView; hints:GtkInputHints);

  function gtk_text_view_get_input_hints(text_view:PGtkTextView):GtkInputHints;

  procedure gtk_text_view_set_monospace(text_view:PGtkTextView; monospace:gboolean);

  function gtk_text_view_get_monospace(text_view:PGtkTextView):gboolean;

  procedure gtk_text_view_set_extra_menu(text_view:PGtkTextView; model:PGMenuModel);

  function gtk_text_view_get_extra_menu(text_view:PGtkTextView):^GMenuModel;

  function gtk_text_view_get_rtl_context(text_view:PGtkTextView):^PangoContext;

  function gtk_text_view_get_ltr_context(text_view:PGtkTextView):^PangoContext;

{$endif}
  { __GTK_TEXT_VIEW_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_TEXT_VIEW : longint; { return type might be wrong }
    begin
      GTK_TYPE_TEXT_VIEW:=gtk_text_view_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_TEXT_VIEW(obj : longint) : longint;
  begin
    GTK_TEXT_VIEW:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_TEXT_VIEW,GtkTextView);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_TEXT_VIEW_CLASS(klass : longint) : longint;
  begin
    GTK_TEXT_VIEW_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_TEXT_VIEW,GtkTextViewClass);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_TEXT_VIEW(obj : longint) : longint;
  begin
    GTK_IS_TEXT_VIEW:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_TEXT_VIEW);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_TEXT_VIEW_CLASS(klass : longint) : longint;
  begin
    GTK_IS_TEXT_VIEW_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_TEXT_VIEW);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_TEXT_VIEW_GET_CLASS(obj : longint) : longint;
  begin
    GTK_TEXT_VIEW_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_TEXT_VIEW,GtkTextViewClass);
  end;

  function gtk_text_view_new:PGtkWidget;
  begin
    { You must implement this function }
  end;
  function gtk_text_view_new_with_buffer(buffer:PGtkTextBuffer):PGtkWidget;
  begin
    { You must implement this function }
  end;
  procedure gtk_text_view_set_buffer(text_view:PGtkTextView; buffer:PGtkTextBuffer);
  begin
    { You must implement this function }
  end;
  function gtk_text_view_get_buffer(text_view:PGtkTextView):PGtkTextBuffer;
  begin
    { You must implement this function }
  end;
  function gtk_text_view_scroll_to_iter(text_view:PGtkTextView; iter:PGtkTextIter; within_margin:double; use_align:gboolean; xalign:double; 
             yalign:double):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_text_view_scroll_to_mark(text_view:PGtkTextView; mark:PGtkTextMark; within_margin:double; use_align:gboolean; xalign:double; 
              yalign:double);
  begin
    { You must implement this function }
  end;
  procedure gtk_text_view_scroll_mark_onscreen(text_view:PGtkTextView; mark:PGtkTextMark);
  begin
    { You must implement this function }
  end;
  function gtk_text_view_move_mark_onscreen(text_view:PGtkTextView; mark:PGtkTextMark):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_text_view_place_cursor_onscreen(text_view:PGtkTextView):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_text_view_get_visible_rect(text_view:PGtkTextView; visible_rect:PGdkRectangle);
  begin
    { You must implement this function }
  end;
  procedure gtk_text_view_set_cursor_visible(text_view:PGtkTextView; setting:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_text_view_get_cursor_visible(text_view:PGtkTextView):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_text_view_reset_cursor_blink(text_view:PGtkTextView);
  begin
    { You must implement this function }
  end;
  procedure gtk_text_view_get_cursor_locations(text_view:PGtkTextView; iter:PGtkTextIter; strong:PGdkRectangle; weak:PGdkRectangle);
  begin
    { You must implement this function }
  end;
  procedure gtk_text_view_get_iter_location(text_view:PGtkTextView; iter:PGtkTextIter; location:PGdkRectangle);
  begin
    { You must implement this function }
  end;
  function gtk_text_view_get_iter_at_location(text_view:PGtkTextView; iter:PGtkTextIter; x:longint; y:longint):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_text_view_get_iter_at_position(text_view:PGtkTextView; iter:PGtkTextIter; trailing:Plongint; x:longint; y:longint):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_text_view_get_line_yrange(text_view:PGtkTextView; iter:PGtkTextIter; y:Plongint; height:Plongint);
  begin
    { You must implement this function }
  end;
  procedure gtk_text_view_get_line_at_y(text_view:PGtkTextView; target_iter:PGtkTextIter; y:longint; line_top:Plongint);
  begin
    { You must implement this function }
  end;
  procedure gtk_text_view_buffer_to_window_coords(text_view:PGtkTextView; win:GtkTextWindowType; buffer_x:longint; buffer_y:longint; window_x:Plongint; 
              window_y:Plongint);
  begin
    { You must implement this function }
  end;
  procedure gtk_text_view_window_to_buffer_coords(text_view:PGtkTextView; win:GtkTextWindowType; window_x:longint; window_y:longint; buffer_x:Plongint; 
              buffer_y:Plongint);
  begin
    { You must implement this function }
  end;
  function gtk_text_view_forward_display_line(text_view:PGtkTextView; iter:PGtkTextIter):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_text_view_backward_display_line(text_view:PGtkTextView; iter:PGtkTextIter):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_text_view_forward_display_line_end(text_view:PGtkTextView; iter:PGtkTextIter):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_text_view_backward_display_line_start(text_view:PGtkTextView; iter:PGtkTextIter):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_text_view_starts_display_line(text_view:PGtkTextView; iter:PGtkTextIter):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_text_view_move_visually(text_view:PGtkTextView; iter:PGtkTextIter; count:longint):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_text_view_im_context_filter_keypress(text_view:PGtkTextView; event:PGdkEvent):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_text_view_reset_im_context(text_view:PGtkTextView);
  begin
    { You must implement this function }
  end;
  function gtk_text_view_get_gutter(text_view:PGtkTextView; win:GtkTextWindowType):PGtkWidget;
  begin
    { You must implement this function }
  end;
  procedure gtk_text_view_set_gutter(text_view:PGtkTextView; win:GtkTextWindowType; widget:PGtkWidget);
  begin
    { You must implement this function }
  end;
  procedure gtk_text_view_add_child_at_anchor(text_view:PGtkTextView; child:PGtkWidget; anchor:PGtkTextChildAnchor);
  begin
    { You must implement this function }
  end;
  procedure gtk_text_view_add_overlay(text_view:PGtkTextView; child:PGtkWidget; xpos:longint; ypos:longint);
  begin
    { You must implement this function }
  end;
  procedure gtk_text_view_move_overlay(text_view:PGtkTextView; child:PGtkWidget; xpos:longint; ypos:longint);
  begin
    { You must implement this function }
  end;
  procedure gtk_text_view_remove(text_view:PGtkTextView; child:PGtkWidget);
  begin
    { You must implement this function }
  end;
  procedure gtk_text_view_set_wrap_mode(text_view:PGtkTextView; wrap_mode:GtkWrapMode);
  begin
    { You must implement this function }
  end;
  function gtk_text_view_get_wrap_mode(text_view:PGtkTextView):GtkWrapMode;
  begin
    { You must implement this function }
  end;
  procedure gtk_text_view_set_editable(text_view:PGtkTextView; setting:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_text_view_get_editable(text_view:PGtkTextView):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_text_view_set_overwrite(text_view:PGtkTextView; overwrite:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_text_view_get_overwrite(text_view:PGtkTextView):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_text_view_set_accepts_tab(text_view:PGtkTextView; accepts_tab:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_text_view_get_accepts_tab(text_view:PGtkTextView):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_text_view_set_pixels_above_lines(text_view:PGtkTextView; pixels_above_lines:longint);
  begin
    { You must implement this function }
  end;
  function gtk_text_view_get_pixels_above_lines(text_view:PGtkTextView):longint;
  begin
    { You must implement this function }
  end;
  procedure gtk_text_view_set_pixels_below_lines(text_view:PGtkTextView; pixels_below_lines:longint);
  begin
    { You must implement this function }
  end;
  function gtk_text_view_get_pixels_below_lines(text_view:PGtkTextView):longint;
  begin
    { You must implement this function }
  end;
  procedure gtk_text_view_set_pixels_inside_wrap(text_view:PGtkTextView; pixels_inside_wrap:longint);
  begin
    { You must implement this function }
  end;
  function gtk_text_view_get_pixels_inside_wrap(text_view:PGtkTextView):longint;
  begin
    { You must implement this function }
  end;
  procedure gtk_text_view_set_justification(text_view:PGtkTextView; justification:GtkJustification);
  begin
    { You must implement this function }
  end;
  function gtk_text_view_get_justification(text_view:PGtkTextView):GtkJustification;
  begin
    { You must implement this function }
  end;
  procedure gtk_text_view_set_left_margin(text_view:PGtkTextView; left_margin:longint);
  begin
    { You must implement this function }
  end;
  function gtk_text_view_get_left_margin(text_view:PGtkTextView):longint;
  begin
    { You must implement this function }
  end;
  procedure gtk_text_view_set_right_margin(text_view:PGtkTextView; right_margin:longint);
  begin
    { You must implement this function }
  end;
  function gtk_text_view_get_right_margin(text_view:PGtkTextView):longint;
  begin
    { You must implement this function }
  end;
  procedure gtk_text_view_set_top_margin(text_view:PGtkTextView; top_margin:longint);
  begin
    { You must implement this function }
  end;
  function gtk_text_view_get_top_margin(text_view:PGtkTextView):longint;
  begin
    { You must implement this function }
  end;
  procedure gtk_text_view_set_bottom_margin(text_view:PGtkTextView; bottom_margin:longint);
  begin
    { You must implement this function }
  end;
  function gtk_text_view_get_bottom_margin(text_view:PGtkTextView):longint;
  begin
    { You must implement this function }
  end;
  procedure gtk_text_view_set_indent(text_view:PGtkTextView; indent:longint);
  begin
    { You must implement this function }
  end;
  function gtk_text_view_get_indent(text_view:PGtkTextView):longint;
  begin
    { You must implement this function }
  end;
  procedure gtk_text_view_set_tabs(text_view:PGtkTextView; tabs:PPangoTabArray);
  begin
    { You must implement this function }
  end;
  function gtk_text_view_get_tabs(text_view:PGtkTextView):PPangoTabArray;
  begin
    { You must implement this function }
  end;
  procedure gtk_text_view_set_input_purpose(text_view:PGtkTextView; purpose:GtkInputPurpose);
  begin
    { You must implement this function }
  end;
  function gtk_text_view_get_input_purpose(text_view:PGtkTextView):GtkInputPurpose;
  begin
    { You must implement this function }
  end;
  procedure gtk_text_view_set_input_hints(text_view:PGtkTextView; hints:GtkInputHints);
  begin
    { You must implement this function }
  end;
  function gtk_text_view_get_input_hints(text_view:PGtkTextView):GtkInputHints;
  begin
    { You must implement this function }
  end;
  procedure gtk_text_view_set_monospace(text_view:PGtkTextView; monospace:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_text_view_get_monospace(text_view:PGtkTextView):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_text_view_set_extra_menu(text_view:PGtkTextView; model:PGMenuModel);
  begin
    { You must implement this function }
  end;
  function gtk_text_view_get_extra_menu(text_view:PGtkTextView):PGMenuModel;
  begin
    { You must implement this function }
  end;
  function gtk_text_view_get_rtl_context(text_view:PGtkTextView):PPangoContext;
  begin
    { You must implement this function }
  end;
  function gtk_text_view_get_ltr_context(text_view:PGtkTextView):PPangoContext;
  begin
    { You must implement this function }
  end;

