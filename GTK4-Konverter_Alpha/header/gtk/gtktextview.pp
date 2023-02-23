
unit gtktextview;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtktextview.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtktextview.h
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
PGdkEvent  = ^GdkEvent;
PGdkRectangle  = ^GdkRectangle;
PGMenuModel  = ^GMenuModel;
PGtkSnapshot  = ^GtkSnapshot;
PGtkTextBuffer  = ^GtkTextBuffer;
PGtkTextChildAnchor  = ^GtkTextChildAnchor;
PGtkTextExtendSelection  = ^GtkTextExtendSelection;
PGtkTextIter  = ^GtkTextIter;
PGtkTextMark  = ^GtkTextMark;
PGtkTextView  = ^GtkTextView;
PGtkTextViewClass  = ^GtkTextViewClass;
PGtkTextViewLayer  = ^GtkTextViewLayer;
PGtkTextViewPrivate  = ^GtkTextViewPrivate;
PGtkTextWindowType  = ^GtkTextWindowType;
PGtkWidget  = ^GtkWidget;
Plongint  = ^longint;
PPangoContext  = ^PangoContext;
PPangoTabArray  = ^PangoTabArray;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef __GTK_TEXT_VIEW_H__}
{$define __GTK_TEXT_VIEW_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwidget.h>}
{$include <gtk/gtkimcontext.h>}
{$include <gtk/gtktextbuffer.h>}


function GTK_TYPE_TEXT_VIEW : longint; { return type might be wrong }

function GTK_TEXT_VIEW(obj : longint) : longint;

function GTK_TEXT_VIEW_CLASS(klass : longint) : longint;

function GTK_IS_TEXT_VIEW(obj : longint) : longint;

function GTK_IS_TEXT_VIEW_CLASS(klass : longint) : longint;

function GTK_TEXT_VIEW_GET_CLASS(obj : longint) : longint;


type
  PGtkTextWindowType = ^TGtkTextWindowType;
  TGtkTextWindowType = (GTK_TEXT_WINDOW_WIDGET := 1,GTK_TEXT_WINDOW_TEXT,
    GTK_TEXT_WINDOW_LEFT,GTK_TEXT_WINDOW_RIGHT,
    GTK_TEXT_WINDOW_TOP,GTK_TEXT_WINDOW_BOTTOM
    );


  PGtkTextViewLayer = ^TGtkTextViewLayer;
  TGtkTextViewLayer = (GTK_TEXT_VIEW_LAYER_BELOW_TEXT,GTK_TEXT_VIEW_LAYER_ABOVE_TEXT
    );


  PGtkTextExtendSelection = ^TGtkTextExtendSelection;
  TGtkTextExtendSelection = (GTK_TEXT_EXTEND_SELECTION_WORD,GTK_TEXT_EXTEND_SELECTION_LINE
    );


const
  GTK_TEXT_VIEW_PRIORITY_VALIDATE = GDK_PRIORITY_REDRAW+5;  
type

  PGtkTextView = ^TGtkTextView;
  TGtkTextView = record
      parent_instance : TGtkWidget;
      priv : PGtkTextViewPrivate;
    end;




  PGtkTextViewClass = ^TGtkTextViewClass;
  TGtkTextViewClass = record
      parent_class : TGtkWidgetClass;
      move_cursor : procedure (text_view:PGtkTextView; step:TGtkMovementStep; count:longint; extend_selection:Tgboolean);cdecl;
      set_anchor : procedure (text_view:PGtkTextView);cdecl;
      insert_at_cursor : procedure (text_view:PGtkTextView; str:Pchar);cdecl;
      delete_from_cursor : procedure (text_view:PGtkTextView; _type:TGtkDeleteType; count:longint);cdecl;
      backspace : procedure (text_view:PGtkTextView);cdecl;
      cut_clipboard : procedure (text_view:PGtkTextView);cdecl;
      copy_clipboard : procedure (text_view:PGtkTextView);cdecl;
      paste_clipboard : procedure (text_view:PGtkTextView);cdecl;
      toggle_overwrite : procedure (text_view:PGtkTextView);cdecl;
      create_buffer : function (text_view:PGtkTextView):PGtkTextBuffer;cdecl;
      snapshot_layer : procedure (text_view:PGtkTextView; layer:TGtkTextViewLayer; snapshot:PGtkSnapshot);cdecl;
      extend_selection : function (text_view:PGtkTextView; granularity:TGtkTextExtendSelection; location:PGtkTextIter; start:PGtkTextIter; end:PGtkTextIter):Tgboolean;cdecl;
      insert_emoji : procedure (text_view:PGtkTextView);cdecl;
      padding : array[0..7] of Tgpointer;
    end;



function gtk_text_view_get_type:TGType;cdecl;external;

function gtk_text_view_new:PGtkWidget;cdecl;external;

function gtk_text_view_new_with_buffer(buffer:PGtkTextBuffer):PGtkWidget;cdecl;external;

procedure gtk_text_view_set_buffer(text_view:PGtkTextView; buffer:PGtkTextBuffer);cdecl;external;

function gtk_text_view_get_buffer(text_view:PGtkTextView):PGtkTextBuffer;cdecl;external;

function gtk_text_view_scroll_to_iter(text_view:PGtkTextView; iter:PGtkTextIter; within_margin:Tdouble; use_align:Tgboolean; xalign:Tdouble; 
           yalign:Tdouble):Tgboolean;cdecl;external;

procedure gtk_text_view_scroll_to_mark(text_view:PGtkTextView; mark:PGtkTextMark; within_margin:Tdouble; use_align:Tgboolean; xalign:Tdouble; 
            yalign:Tdouble);cdecl;external;

procedure gtk_text_view_scroll_mark_onscreen(text_view:PGtkTextView; mark:PGtkTextMark);cdecl;external;

function gtk_text_view_move_mark_onscreen(text_view:PGtkTextView; mark:PGtkTextMark):Tgboolean;cdecl;external;

function gtk_text_view_place_cursor_onscreen(text_view:PGtkTextView):Tgboolean;cdecl;external;

procedure gtk_text_view_get_visible_rect(text_view:PGtkTextView; visible_rect:PGdkRectangle);cdecl;external;

procedure gtk_text_view_set_cursor_visible(text_view:PGtkTextView; setting:Tgboolean);cdecl;external;

function gtk_text_view_get_cursor_visible(text_view:PGtkTextView):Tgboolean;cdecl;external;

procedure gtk_text_view_reset_cursor_blink(text_view:PGtkTextView);cdecl;external;

procedure gtk_text_view_get_cursor_locations(text_view:PGtkTextView; iter:PGtkTextIter; strong:PGdkRectangle; weak:PGdkRectangle);cdecl;external;

procedure gtk_text_view_get_iter_location(text_view:PGtkTextView; iter:PGtkTextIter; location:PGdkRectangle);cdecl;external;

function gtk_text_view_get_iter_at_location(text_view:PGtkTextView; iter:PGtkTextIter; x:longint; y:longint):Tgboolean;cdecl;external;

function gtk_text_view_get_iter_at_position(text_view:PGtkTextView; iter:PGtkTextIter; trailing:Plongint; x:longint; y:longint):Tgboolean;cdecl;external;

procedure gtk_text_view_get_line_yrange(text_view:PGtkTextView; iter:PGtkTextIter; y:Plongint; height:Plongint);cdecl;external;

procedure gtk_text_view_get_line_at_y(text_view:PGtkTextView; target_iter:PGtkTextIter; y:longint; line_top:Plongint);cdecl;external;

procedure gtk_text_view_buffer_to_window_coords(text_view:PGtkTextView; win:TGtkTextWindowType; buffer_x:longint; buffer_y:longint; window_x:Plongint; 
            window_y:Plongint);cdecl;external;

procedure gtk_text_view_window_to_buffer_coords(text_view:PGtkTextView; win:TGtkTextWindowType; window_x:longint; window_y:longint; buffer_x:Plongint; 
            buffer_y:Plongint);cdecl;external;

function gtk_text_view_forward_display_line(text_view:PGtkTextView; iter:PGtkTextIter):Tgboolean;cdecl;external;

function gtk_text_view_backward_display_line(text_view:PGtkTextView; iter:PGtkTextIter):Tgboolean;cdecl;external;

function gtk_text_view_forward_display_line_end(text_view:PGtkTextView; iter:PGtkTextIter):Tgboolean;cdecl;external;

function gtk_text_view_backward_display_line_start(text_view:PGtkTextView; iter:PGtkTextIter):Tgboolean;cdecl;external;

function gtk_text_view_starts_display_line(text_view:PGtkTextView; iter:PGtkTextIter):Tgboolean;cdecl;external;

function gtk_text_view_move_visually(text_view:PGtkTextView; iter:PGtkTextIter; count:longint):Tgboolean;cdecl;external;

function gtk_text_view_im_context_filter_keypress(text_view:PGtkTextView; event:PGdkEvent):Tgboolean;cdecl;external;

procedure gtk_text_view_reset_im_context(text_view:PGtkTextView);cdecl;external;


function gtk_text_view_get_gutter(text_view:PGtkTextView; win:TGtkTextWindowType):PGtkWidget;cdecl;external;

procedure gtk_text_view_set_gutter(text_view:PGtkTextView; win:TGtkTextWindowType; widget:PGtkWidget);cdecl;external;

procedure gtk_text_view_add_child_at_anchor(text_view:PGtkTextView; child:PGtkWidget; anchor:PGtkTextChildAnchor);cdecl;external;

procedure gtk_text_view_add_overlay(text_view:PGtkTextView; child:PGtkWidget; xpos:longint; ypos:longint);cdecl;external;

procedure gtk_text_view_move_overlay(text_view:PGtkTextView; child:PGtkWidget; xpos:longint; ypos:longint);cdecl;external;

procedure gtk_text_view_remove(text_view:PGtkTextView; child:PGtkWidget);cdecl;external;


procedure gtk_text_view_set_wrap_mode(text_view:PGtkTextView; wrap_mode:TGtkWrapMode);cdecl;external;

function gtk_text_view_get_wrap_mode(text_view:PGtkTextView):TGtkWrapMode;cdecl;external;

procedure gtk_text_view_set_editable(text_view:PGtkTextView; setting:Tgboolean);cdecl;external;

function gtk_text_view_get_editable(text_view:PGtkTextView):Tgboolean;cdecl;external;

procedure gtk_text_view_set_overwrite(text_view:PGtkTextView; overwrite:Tgboolean);cdecl;external;

function gtk_text_view_get_overwrite(text_view:PGtkTextView):Tgboolean;cdecl;external;

procedure gtk_text_view_set_accepts_tab(text_view:PGtkTextView; accepts_tab:Tgboolean);cdecl;external;

function gtk_text_view_get_accepts_tab(text_view:PGtkTextView):Tgboolean;cdecl;external;

procedure gtk_text_view_set_pixels_above_lines(text_view:PGtkTextView; pixels_above_lines:longint);cdecl;external;

function gtk_text_view_get_pixels_above_lines(text_view:PGtkTextView):longint;cdecl;external;

procedure gtk_text_view_set_pixels_below_lines(text_view:PGtkTextView; pixels_below_lines:longint);cdecl;external;

function gtk_text_view_get_pixels_below_lines(text_view:PGtkTextView):longint;cdecl;external;

procedure gtk_text_view_set_pixels_inside_wrap(text_view:PGtkTextView; pixels_inside_wrap:longint);cdecl;external;

function gtk_text_view_get_pixels_inside_wrap(text_view:PGtkTextView):longint;cdecl;external;

procedure gtk_text_view_set_justification(text_view:PGtkTextView; justification:TGtkJustification);cdecl;external;

function gtk_text_view_get_justification(text_view:PGtkTextView):TGtkJustification;cdecl;external;

procedure gtk_text_view_set_left_margin(text_view:PGtkTextView; left_margin:longint);cdecl;external;

function gtk_text_view_get_left_margin(text_view:PGtkTextView):longint;cdecl;external;

procedure gtk_text_view_set_right_margin(text_view:PGtkTextView; right_margin:longint);cdecl;external;

function gtk_text_view_get_right_margin(text_view:PGtkTextView):longint;cdecl;external;

procedure gtk_text_view_set_top_margin(text_view:PGtkTextView; top_margin:longint);cdecl;external;

function gtk_text_view_get_top_margin(text_view:PGtkTextView):longint;cdecl;external;

procedure gtk_text_view_set_bottom_margin(text_view:PGtkTextView; bottom_margin:longint);cdecl;external;

function gtk_text_view_get_bottom_margin(text_view:PGtkTextView):longint;cdecl;external;

procedure gtk_text_view_set_indent(text_view:PGtkTextView; indent:longint);cdecl;external;

function gtk_text_view_get_indent(text_view:PGtkTextView):longint;cdecl;external;

procedure gtk_text_view_set_tabs(text_view:PGtkTextView; tabs:PPangoTabArray);cdecl;external;

function gtk_text_view_get_tabs(text_view:PGtkTextView):PPangoTabArray;cdecl;external;

procedure gtk_text_view_set_input_purpose(text_view:PGtkTextView; purpose:TGtkInputPurpose);cdecl;external;

function gtk_text_view_get_input_purpose(text_view:PGtkTextView):TGtkInputPurpose;cdecl;external;

procedure gtk_text_view_set_input_hints(text_view:PGtkTextView; hints:TGtkInputHints);cdecl;external;

function gtk_text_view_get_input_hints(text_view:PGtkTextView):TGtkInputHints;cdecl;external;

procedure gtk_text_view_set_monospace(text_view:PGtkTextView; monospace:Tgboolean);cdecl;external;

function gtk_text_view_get_monospace(text_view:PGtkTextView):Tgboolean;cdecl;external;

procedure gtk_text_view_set_extra_menu(text_view:PGtkTextView; model:PGMenuModel);cdecl;external;

function gtk_text_view_get_extra_menu(text_view:PGtkTextView):PGMenuModel;cdecl;external;

function gtk_text_view_get_rtl_context(text_view:PGtkTextView):PPangoContext;cdecl;external;

function gtk_text_view_get_ltr_context(text_view:PGtkTextView):PPangoContext;cdecl;external;

{$endif}


implementation

function GTK_TYPE_TEXT_VIEW : longint; { return type might be wrong }
  begin
    GTK_TYPE_TEXT_VIEW:=gtk_text_view_get_type;
  end;

function GTK_TEXT_VIEW(obj : longint) : longint;
begin
  GTK_TEXT_VIEW:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_TEXT_VIEW,GtkTextView);
end;

function GTK_TEXT_VIEW_CLASS(klass : longint) : longint;
begin
  GTK_TEXT_VIEW_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_TEXT_VIEW,GtkTextViewClass);
end;

function GTK_IS_TEXT_VIEW(obj : longint) : longint;
begin
  GTK_IS_TEXT_VIEW:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_TEXT_VIEW);
end;

function GTK_IS_TEXT_VIEW_CLASS(klass : longint) : longint;
begin
  GTK_IS_TEXT_VIEW_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_TEXT_VIEW);
end;

function GTK_TEXT_VIEW_GET_CLASS(obj : longint) : longint;
begin
  GTK_TEXT_VIEW_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_TEXT_VIEW,GtkTextViewClass);
end;


end.
