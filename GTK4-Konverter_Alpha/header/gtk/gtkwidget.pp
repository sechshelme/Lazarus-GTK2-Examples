
unit gtkwidget;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkwidget.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkwidget.h
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
    Pcairo_font_options_t  = ^cairo_font_options_t;
    Pchar  = ^char;
    Pdouble  = ^double;
    PGActionGroup  = ^GActionGroup;
    Pgboolean  = ^gboolean;
    PGBytes  = ^GBytes;
    PGdkClipboard  = ^GdkClipboard;
    PGdkCursor  = ^GdkCursor;
    PGdkDisplay  = ^GdkDisplay;
    PGdkFrameClock  = ^GdkFrameClock;
    PGList  = ^GList;
    PGListModel  = ^GListModel;
    PGObject  = ^GObject;
    PGskTransform  = ^GskTransform;
    PGtkAllocation  = ^GtkAllocation;
    PGtkBuilderScope  = ^GtkBuilderScope;
    PGtkCssStyleChange  = ^GtkCssStyleChange;
    PGtkEventController  = ^GtkEventController;
    PGtkLayoutManager  = ^GtkLayoutManager;
    PGtkNative  = ^GtkNative;
    PGtkRequisition  = ^GtkRequisition;
    PGtkRoot  = ^GtkRoot;
    PGtkSettings  = ^GtkSettings;
    PGtkShortcut  = ^GtkShortcut;
    PGtkSnapshot  = ^GtkSnapshot;
    PGtkStyleContext  = ^GtkStyleContext;
    PGtkTooltip  = ^GtkTooltip;
    PGtkWidget  = ^GtkWidget;
    PGtkWidgetClass  = ^GtkWidgetClass;
    PGtkWidgetClassPrivate  = ^GtkWidgetClassPrivate;
    PGtkWidgetPrivate  = ^GtkWidgetPrivate;
    PGType  = ^GType;
    PGVariant  = ^GVariant;
    PGVariantType  = ^GVariantType;
    Plongint  = ^longint;
    PPangoContext  = ^PangoContext;
    PPangoFontMap  = ^PangoFontMap;
    PPangoLayout  = ^PangoLayout;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef __GTK_WIDGET_H__}
{$define __GTK_WIDGET_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gdk/gdk.h>}
{$include <gsk/gsk.h>}
{$include <gtk/gtkaccelgroup.h>}
{$include <gtk/gtkborder.h>}
{$include <gtk/gtkshortcut.h>}
{$include <gtk/gtkshortcutaction.h>}
{$include <gtk/gtktypes.h>}



function GTK_TYPE_WIDGET : longint; { return type might be wrong }

function GTK_WIDGET(widget : longint) : longint;

function GTK_WIDGET_CLASS(klass : longint) : longint;

function GTK_IS_WIDGET(widget : longint) : longint;

function GTK_IS_WIDGET_CLASS(klass : longint) : longint;

function GTK_WIDGET_GET_CLASS(obj : longint) : longint;

function GTK_TYPE_REQUISITION : longint; { return type might be wrong }

type


  PGtkAllocation = ^TGtkAllocation;
  TGtkAllocation = TGdkRectangle;


  TGtkTickCallback = function (widget:PGtkWidget; frame_clock:PGdkFrameClock; user_data:Tgpointer):Tgboolean;cdecl;

  PGtkRequisition = ^TGtkRequisition;
  TGtkRequisition = record
      width : longint;cdecl;
      height : longint;
    end;



  PGtkWidget = ^TGtkWidget;
  TGtkWidget = record
      parent_instance : TGInitiallyUnowned;
      priv : PGtkWidgetPrivate;
    end;









  PGtkWidgetClass = ^TGtkWidgetClass;
  TGtkWidgetClass = record
      parent_class : TGInitiallyUnownedClass;
      show : procedure (widget:PGtkWidget);cdecl;
      hide : procedure (widget:PGtkWidget);cdecl;
      map : procedure (widget:PGtkWidget);cdecl;
      unmap : procedure (widget:PGtkWidget);cdecl;
      realize : procedure (widget:PGtkWidget);cdecl;
      unrealize : procedure (widget:PGtkWidget);cdecl;
      root : procedure (widget:PGtkWidget);cdecl;
      unroot : procedure (widget:PGtkWidget);cdecl;
      size_allocate : procedure (widget:PGtkWidget; width:longint; height:longint; baseline:longint);cdecl;
      state_flags_changed : procedure (widget:PGtkWidget; previous_state_flags:TGtkStateFlags);cdecl;
      direction_changed : procedure (widget:PGtkWidget; previous_direction:TGtkTextDirection);cdecl;
      get_request_mode : function (widget:PGtkWidget):TGtkSizeRequestMode;cdecl;
      measure : procedure (widget:PGtkWidget; orientation:TGtkOrientation; for_size:longint; minimum:Plongint; natural:Plongint; 
                    minimum_baseline:Plongint; natural_baseline:Plongint);cdecl;
      mnemonic_activate : function (widget:PGtkWidget; group_cycling:Tgboolean):Tgboolean;cdecl;
      grab_focus : function (widget:PGtkWidget):Tgboolean;cdecl;
      focus : function (widget:PGtkWidget; direction:TGtkDirectionType):Tgboolean;cdecl;
      set_focus_child : procedure (widget:PGtkWidget; child:PGtkWidget);cdecl;
      move_focus : procedure (widget:PGtkWidget; direction:TGtkDirectionType);cdecl;
      keynav_failed : function (widget:PGtkWidget; direction:TGtkDirectionType):Tgboolean;cdecl;
      query_tooltip : function (widget:PGtkWidget; x:longint; y:longint; keyboard_tooltip:Tgboolean; tooltip:PGtkTooltip):Tgboolean;cdecl;
      compute_expand : procedure (widget:PGtkWidget; hexpand_p:Pgboolean; vexpand_p:Pgboolean);cdecl;
      css_changed : procedure (widget:PGtkWidget; change:PGtkCssStyleChange);cdecl;
      system_setting_changed : procedure (widget:PGtkWidget; settings:TGtkSystemSetting);cdecl;
      snapshot : procedure (widget:PGtkWidget; snapshot:PGtkSnapshot);cdecl;
      contains : function (widget:PGtkWidget; x:Tdouble; y:Tdouble):Tgboolean;cdecl;
      priv : PGtkWidgetClassPrivate;
      padding : array[0..7] of Tgpointer;
    end;



function gtk_widget_get_type:TGType;cdecl;external;

procedure gtk_widget_unparent(widget:PGtkWidget);cdecl;external;

procedure gtk_widget_show(widget:PGtkWidget);cdecl;external;

procedure gtk_widget_hide(widget:PGtkWidget);cdecl;external;

procedure gtk_widget_map(widget:PGtkWidget);cdecl;external;

procedure gtk_widget_unmap(widget:PGtkWidget);cdecl;external;

procedure gtk_widget_realize(widget:PGtkWidget);cdecl;external;

procedure gtk_widget_unrealize(widget:PGtkWidget);cdecl;external;


procedure gtk_widget_queue_draw(widget:PGtkWidget);cdecl;external;

procedure gtk_widget_queue_resize(widget:PGtkWidget);cdecl;external;

procedure gtk_widget_queue_allocate(widget:PGtkWidget);cdecl;external;

function gtk_widget_get_frame_clock(widget:PGtkWidget):PGdkFrameClock;cdecl;external;

procedure gtk_widget_size_allocate(widget:PGtkWidget; allocation:PGtkAllocation; baseline:longint);cdecl;external;

procedure gtk_widget_allocate(widget:PGtkWidget; width:longint; height:longint; baseline:longint; transform:PGskTransform);cdecl;external;

function gtk_widget_get_request_mode(widget:PGtkWidget):TGtkSizeRequestMode;cdecl;external;

procedure gtk_widget_measure(widget:PGtkWidget; orientation:TGtkOrientation; for_size:longint; minimum:Plongint; natural:Plongint; 
            minimum_baseline:Plongint; natural_baseline:Plongint);cdecl;external;

procedure gtk_widget_get_preferred_size(widget:PGtkWidget; minimum_size:PGtkRequisition; natural_size:PGtkRequisition);cdecl;external;

procedure gtk_widget_set_layout_manager(widget:PGtkWidget; layout_manager:PGtkLayoutManager);cdecl;external;

function gtk_widget_get_layout_manager(widget:PGtkWidget):PGtkLayoutManager;cdecl;external;

procedure gtk_widget_class_set_layout_manager_type(widget_class:PGtkWidgetClass; _type:TGType);cdecl;external;

function gtk_widget_class_get_layout_manager_type(widget_class:PGtkWidgetClass):TGType;cdecl;external;

procedure gtk_widget_class_add_binding(widget_class:PGtkWidgetClass; keyval:Tguint; mods:TGdkModifierType; callback:TGtkShortcutFunc; format_string:Pchar; 
            args:array of const);cdecl;external;
procedure gtk_widget_class_add_binding(widget_class:PGtkWidgetClass; keyval:Tguint; mods:TGdkModifierType; callback:TGtkShortcutFunc; format_string:Pchar);cdecl;external;

procedure gtk_widget_class_add_binding_signal(widget_class:PGtkWidgetClass; keyval:Tguint; mods:TGdkModifierType; signal:Pchar; format_string:Pchar; 
            args:array of const);cdecl;external;
procedure gtk_widget_class_add_binding_signal(widget_class:PGtkWidgetClass; keyval:Tguint; mods:TGdkModifierType; signal:Pchar; format_string:Pchar);cdecl;external;

procedure gtk_widget_class_add_binding_action(widget_class:PGtkWidgetClass; keyval:Tguint; mods:TGdkModifierType; action_name:Pchar; format_string:Pchar; 
            args:array of const);cdecl;external;
procedure gtk_widget_class_add_binding_action(widget_class:PGtkWidgetClass; keyval:Tguint; mods:TGdkModifierType; action_name:Pchar; format_string:Pchar);cdecl;external;

procedure gtk_widget_class_add_shortcut(widget_class:PGtkWidgetClass; shortcut:PGtkShortcut);cdecl;external;

procedure gtk_widget_class_set_activate_signal(widget_class:PGtkWidgetClass; signal_id:Tguint);cdecl;external;

procedure gtk_widget_class_set_activate_signal_from_name(widget_class:PGtkWidgetClass; signal_name:Pchar);cdecl;external;

function gtk_widget_class_get_activate_signal(widget_class:PGtkWidgetClass):Tguint;cdecl;external;

function gtk_widget_mnemonic_activate(widget:PGtkWidget; group_cycling:Tgboolean):Tgboolean;cdecl;external;

function gtk_widget_activate(widget:PGtkWidget):Tgboolean;cdecl;external;

procedure gtk_widget_set_can_focus(widget:PGtkWidget; can_focus:Tgboolean);cdecl;external;

function gtk_widget_get_can_focus(widget:PGtkWidget):Tgboolean;cdecl;external;

procedure gtk_widget_set_focusable(widget:PGtkWidget; focusable:Tgboolean);cdecl;external;

function gtk_widget_get_focusable(widget:PGtkWidget):Tgboolean;cdecl;external;

function gtk_widget_has_focus(widget:PGtkWidget):Tgboolean;cdecl;external;

function gtk_widget_is_focus(widget:PGtkWidget):Tgboolean;cdecl;external;

function gtk_widget_has_visible_focus(widget:PGtkWidget):Tgboolean;cdecl;external;

function gtk_widget_grab_focus(widget:PGtkWidget):Tgboolean;cdecl;external;

procedure gtk_widget_set_focus_on_click(widget:PGtkWidget; focus_on_click:Tgboolean);cdecl;external;

function gtk_widget_get_focus_on_click(widget:PGtkWidget):Tgboolean;cdecl;external;

procedure gtk_widget_set_can_target(widget:PGtkWidget; can_target:Tgboolean);cdecl;external;

function gtk_widget_get_can_target(widget:PGtkWidget):Tgboolean;cdecl;external;

function gtk_widget_has_default(widget:PGtkWidget):Tgboolean;cdecl;external;

procedure gtk_widget_set_receives_default(widget:PGtkWidget; receives_default:Tgboolean);cdecl;external;

function gtk_widget_get_receives_default(widget:PGtkWidget):Tgboolean;cdecl;external;

procedure gtk_widget_set_name(widget:PGtkWidget; name:Pchar);cdecl;external;

function gtk_widget_get_name(widget:PGtkWidget):Pchar;cdecl;external;

procedure gtk_widget_set_state_flags(widget:PGtkWidget; flags:TGtkStateFlags; clear:Tgboolean);cdecl;external;

procedure gtk_widget_unset_state_flags(widget:PGtkWidget; flags:TGtkStateFlags);cdecl;external;

function gtk_widget_get_state_flags(widget:PGtkWidget):TGtkStateFlags;cdecl;external;

procedure gtk_widget_set_sensitive(widget:PGtkWidget; sensitive:Tgboolean);cdecl;external;

function gtk_widget_get_sensitive(widget:PGtkWidget):Tgboolean;cdecl;external;

function gtk_widget_is_sensitive(widget:PGtkWidget):Tgboolean;cdecl;external;

procedure gtk_widget_set_visible(widget:PGtkWidget; visible:Tgboolean);cdecl;external;

function gtk_widget_get_visible(widget:PGtkWidget):Tgboolean;cdecl;external;

function gtk_widget_is_visible(widget:PGtkWidget):Tgboolean;cdecl;external;

function gtk_widget_is_drawable(widget:PGtkWidget):Tgboolean;cdecl;external;

function gtk_widget_get_realized(widget:PGtkWidget):Tgboolean;cdecl;external;

function gtk_widget_get_mapped(widget:PGtkWidget):Tgboolean;cdecl;external;

procedure gtk_widget_set_parent(widget:PGtkWidget; parent:PGtkWidget);cdecl;external;

function gtk_widget_get_parent(widget:PGtkWidget):PGtkWidget;cdecl;external;

function gtk_widget_get_root(widget:PGtkWidget):PGtkRoot;cdecl;external;

function gtk_widget_get_native(widget:PGtkWidget):PGtkNative;cdecl;external;

procedure gtk_widget_set_child_visible(widget:PGtkWidget; child_visible:Tgboolean);cdecl;external;

function gtk_widget_get_child_visible(widget:PGtkWidget):Tgboolean;cdecl;external;

function gtk_widget_get_allocated_width(widget:PGtkWidget):longint;cdecl;external;

function gtk_widget_get_allocated_height(widget:PGtkWidget):longint;cdecl;external;

function gtk_widget_get_allocated_baseline(widget:PGtkWidget):longint;cdecl;external;

procedure gtk_widget_get_allocation(widget:PGtkWidget; allocation:PGtkAllocation);cdecl;external;

(* error 
                                                                 graphene_matrix_t      *out_transform) G_GNUC_WARN_UNUSED_RESULT;
 in declarator_list *)
  var
 : Tgboolean;

(* error 
                                                                 graphene_rect_t        *out_bounds) G_GNUC_WARN_UNUSED_RESULT;
 in declarator_list *)
 : Tgboolean;

(* error 
                                                                 graphene_point_t       *out_point) G_GNUC_WARN_UNUSED_RESULT;
 in declarator_list *)
 : Tgboolean;


function gtk_widget_get_width(widget:PGtkWidget):longint;cdecl;external;

function gtk_widget_get_height(widget:PGtkWidget):longint;cdecl;external;

function gtk_widget_get_size(widget:PGtkWidget; orientation:TGtkOrientation):longint;cdecl;external;

function gtk_widget_child_focus(widget:PGtkWidget; direction:TGtkDirectionType):Tgboolean;cdecl;external;

function gtk_widget_keynav_failed(widget:PGtkWidget; direction:TGtkDirectionType):Tgboolean;cdecl;external;

procedure gtk_widget_error_bell(widget:PGtkWidget);cdecl;external;

procedure gtk_widget_set_size_request(widget:PGtkWidget; width:longint; height:longint);cdecl;external;

procedure gtk_widget_get_size_request(widget:PGtkWidget; width:Plongint; height:Plongint);cdecl;external;

procedure gtk_widget_set_opacity(widget:PGtkWidget; opacity:Tdouble);cdecl;external;

function gtk_widget_get_opacity(widget:PGtkWidget):Tdouble;cdecl;external;

procedure gtk_widget_set_overflow(widget:PGtkWidget; overflow:TGtkOverflow);cdecl;external;

function gtk_widget_get_overflow(widget:PGtkWidget):TGtkOverflow;cdecl;external;

function gtk_widget_get_ancestor(widget:PGtkWidget; widget_type:TGType):PGtkWidget;cdecl;external;

function gtk_widget_get_scale_factor(widget:PGtkWidget):longint;cdecl;external;

function gtk_widget_get_display(widget:PGtkWidget):PGdkDisplay;cdecl;external;

function gtk_widget_get_settings(widget:PGtkWidget):PGtkSettings;cdecl;external;

function gtk_widget_get_clipboard(widget:PGtkWidget):PGdkClipboard;cdecl;external;

function gtk_widget_get_primary_clipboard(widget:PGtkWidget):PGdkClipboard;cdecl;external;


function gtk_widget_get_hexpand(widget:PGtkWidget):Tgboolean;cdecl;external;

procedure gtk_widget_set_hexpand(widget:PGtkWidget; expand:Tgboolean);cdecl;external;

function gtk_widget_get_hexpand_set(widget:PGtkWidget):Tgboolean;cdecl;external;

procedure gtk_widget_set_hexpand_set(widget:PGtkWidget; set:Tgboolean);cdecl;external;

function gtk_widget_get_vexpand(widget:PGtkWidget):Tgboolean;cdecl;external;

procedure gtk_widget_set_vexpand(widget:PGtkWidget; expand:Tgboolean);cdecl;external;

function gtk_widget_get_vexpand_set(widget:PGtkWidget):Tgboolean;cdecl;external;

procedure gtk_widget_set_vexpand_set(widget:PGtkWidget; set:Tgboolean);cdecl;external;

function gtk_widget_compute_expand(widget:PGtkWidget; orientation:TGtkOrientation):Tgboolean;cdecl;external;


function gtk_widget_get_halign(widget:PGtkWidget):TGtkAlign;cdecl;external;

procedure gtk_widget_set_halign(widget:PGtkWidget; align:TGtkAlign);cdecl;external;

function gtk_widget_get_valign(widget:PGtkWidget):TGtkAlign;cdecl;external;

procedure gtk_widget_set_valign(widget:PGtkWidget; align:TGtkAlign);cdecl;external;

function gtk_widget_get_margin_start(widget:PGtkWidget):longint;cdecl;external;

procedure gtk_widget_set_margin_start(widget:PGtkWidget; margin:longint);cdecl;external;

function gtk_widget_get_margin_end(widget:PGtkWidget):longint;cdecl;external;

procedure gtk_widget_set_margin_end(widget:PGtkWidget; margin:longint);cdecl;external;

function gtk_widget_get_margin_top(widget:PGtkWidget):longint;cdecl;external;

procedure gtk_widget_set_margin_top(widget:PGtkWidget; margin:longint);cdecl;external;

function gtk_widget_get_margin_bottom(widget:PGtkWidget):longint;cdecl;external;

procedure gtk_widget_set_margin_bottom(widget:PGtkWidget; margin:longint);cdecl;external;

function gtk_widget_is_ancestor(widget:PGtkWidget; ancestor:PGtkWidget):Tgboolean;cdecl;external;

function gtk_widget_translate_coordinates(src_widget:PGtkWidget; dest_widget:PGtkWidget; src_x:Tdouble; src_y:Tdouble; dest_x:Pdouble; 
           dest_y:Pdouble):Tgboolean;cdecl;external;

function gtk_widget_contains(widget:PGtkWidget; x:Tdouble; y:Tdouble):Tgboolean;cdecl;external;

function gtk_widget_pick(widget:PGtkWidget; x:Tdouble; y:Tdouble; flags:TGtkPickFlags):PGtkWidget;cdecl;external;

procedure gtk_widget_add_controller(widget:PGtkWidget; controller:PGtkEventController);cdecl;external;

procedure gtk_widget_remove_controller(widget:PGtkWidget; controller:PGtkEventController);cdecl;external;

function gtk_widget_create_pango_context(widget:PGtkWidget):PPangoContext;cdecl;external;

function gtk_widget_get_pango_context(widget:PGtkWidget):PPangoContext;cdecl;external;

procedure gtk_widget_set_font_options(widget:PGtkWidget; options:Pcairo_font_options_t);cdecl;external;

function gtk_widget_get_font_options(widget:PGtkWidget):Pcairo_font_options_t;cdecl;external;

function gtk_widget_create_pango_layout(widget:PGtkWidget; text:Pchar):PPangoLayout;cdecl;external;


procedure gtk_widget_set_direction(widget:PGtkWidget; dir:TGtkTextDirection);cdecl;external;

function gtk_widget_get_direction(widget:PGtkWidget):TGtkTextDirection;cdecl;external;

procedure gtk_widget_set_default_direction(dir:TGtkTextDirection);cdecl;external;

function gtk_widget_get_default_direction:TGtkTextDirection;cdecl;external;

procedure gtk_widget_set_cursor(widget:PGtkWidget; cursor:PGdkCursor);cdecl;external;

procedure gtk_widget_set_cursor_from_name(widget:PGtkWidget; name:Pchar);cdecl;external;

function gtk_widget_get_cursor(widget:PGtkWidget):PGdkCursor;cdecl;external;

function gtk_widget_list_mnemonic_labels(widget:PGtkWidget):PGList;cdecl;external;

procedure gtk_widget_add_mnemonic_label(widget:PGtkWidget; _label:PGtkWidget);cdecl;external;

procedure gtk_widget_remove_mnemonic_label(widget:PGtkWidget; _label:PGtkWidget);cdecl;external;

procedure gtk_widget_trigger_tooltip_query(widget:PGtkWidget);cdecl;external;

procedure gtk_widget_set_tooltip_text(widget:PGtkWidget; text:Pchar);cdecl;external;

function gtk_widget_get_tooltip_text(widget:PGtkWidget):Pchar;cdecl;external;

procedure gtk_widget_set_tooltip_markup(widget:PGtkWidget; markup:Pchar);cdecl;external;

function gtk_widget_get_tooltip_markup(widget:PGtkWidget):Pchar;cdecl;external;

procedure gtk_widget_set_has_tooltip(widget:PGtkWidget; has_tooltip:Tgboolean);cdecl;external;

function gtk_widget_get_has_tooltip(widget:PGtkWidget):Tgboolean;cdecl;external;

function gtk_requisition_get_type:TGType;cdecl;external;

(* error 
GtkRequisition *gtk_requisition_new      (void) G_GNUC_MALLOC;
 in declarator_list *)
  var
 : TGtkRequisition;


function gtk_requisition_copy(requisition:PGtkRequisition):PGtkRequisition;cdecl;external;

procedure gtk_requisition_free(requisition:PGtkRequisition);cdecl;external;

function gtk_widget_in_destruction(widget:PGtkWidget):Tgboolean;cdecl;external;

function gtk_widget_get_style_context(widget:PGtkWidget):PGtkStyleContext;cdecl;external;

procedure gtk_widget_class_set_css_name(widget_class:PGtkWidgetClass; name:Pchar);cdecl;external;

function gtk_widget_class_get_css_name(widget_class:PGtkWidgetClass):Pchar;cdecl;external;

function gtk_widget_add_tick_callback(widget:PGtkWidget; callback:TGtkTickCallback; user_data:Tgpointer; notify:TGDestroyNotify):Tguint;cdecl;external;

procedure gtk_widget_remove_tick_callback(widget:PGtkWidget; id:Tguint);cdecl;external;

(* error 
                                                #callback, \
in define line 743 *)

(* error 
                                             #member_name, \
in define line 763 *)

(* error 
                                             #member_name, \
in define line 785 *)

(* error 
                                             #member_name, \
in define line 806 *)

(* error 
                                             #member_name, \
in define line 828 *)

procedure gtk_widget_init_template(widget:PGtkWidget);cdecl;external;

function gtk_widget_get_template_child(widget:PGtkWidget; widget_type:TGType; name:Pchar):PGObject;cdecl;external;

procedure gtk_widget_class_set_template(widget_class:PGtkWidgetClass; template_bytes:PGBytes);cdecl;external;

procedure gtk_widget_class_set_template_from_resource(widget_class:PGtkWidgetClass; resource_name:Pchar);cdecl;external;

procedure gtk_widget_class_bind_template_callback_full(widget_class:PGtkWidgetClass; callback_name:Pchar; callback_symbol:TGCallback);cdecl;external;

procedure gtk_widget_class_set_template_scope(widget_class:PGtkWidgetClass; scope:PGtkBuilderScope);cdecl;external;

procedure gtk_widget_class_bind_template_child_full(widget_class:PGtkWidgetClass; name:Pchar; internal_child:Tgboolean; struct_offset:Tgssize);cdecl;external;

procedure gtk_widget_insert_action_group(widget:PGtkWidget; name:Pchar; group:PGActionGroup);cdecl;external;

function gtk_widget_activate_action(widget:PGtkWidget; name:Pchar; format_string:Pchar; args:array of const):Tgboolean;cdecl;external;
function gtk_widget_activate_action(widget:PGtkWidget; name:Pchar; format_string:Pchar):Tgboolean;cdecl;external;

function gtk_widget_activate_action_variant(widget:PGtkWidget; name:Pchar; args:PGVariant):Tgboolean;cdecl;external;

procedure gtk_widget_activate_default(widget:PGtkWidget);cdecl;external;

procedure gtk_widget_set_font_map(widget:PGtkWidget; font_map:PPangoFontMap);cdecl;external;

function gtk_widget_get_font_map(widget:PGtkWidget):PPangoFontMap;cdecl;external;

function gtk_widget_get_first_child(widget:PGtkWidget):PGtkWidget;cdecl;external;

function gtk_widget_get_last_child(widget:PGtkWidget):PGtkWidget;cdecl;external;

function gtk_widget_get_next_sibling(widget:PGtkWidget):PGtkWidget;cdecl;external;

function gtk_widget_get_prev_sibling(widget:PGtkWidget):PGtkWidget;cdecl;external;

function gtk_widget_observe_children(widget:PGtkWidget):PGListModel;cdecl;external;

function gtk_widget_observe_controllers(widget:PGtkWidget):PGListModel;cdecl;external;

procedure gtk_widget_insert_after(widget:PGtkWidget; parent:PGtkWidget; previous_sibling:PGtkWidget);cdecl;external;

procedure gtk_widget_insert_before(widget:PGtkWidget; parent:PGtkWidget; next_sibling:PGtkWidget);cdecl;external;

procedure gtk_widget_set_focus_child(widget:PGtkWidget; child:PGtkWidget);cdecl;external;

function gtk_widget_get_focus_child(widget:PGtkWidget):PGtkWidget;cdecl;external;

procedure gtk_widget_snapshot_child(widget:PGtkWidget; child:PGtkWidget; snapshot:PGtkSnapshot);cdecl;external;

function gtk_widget_should_layout(widget:PGtkWidget):Tgboolean;cdecl;external;

function gtk_widget_get_css_name(self:PGtkWidget):Pchar;cdecl;external;

procedure gtk_widget_add_css_class(widget:PGtkWidget; css_class:Pchar);cdecl;external;

procedure gtk_widget_remove_css_class(widget:PGtkWidget; css_class:Pchar);cdecl;external;

function gtk_widget_has_css_class(widget:PGtkWidget; css_class:Pchar):Tgboolean;cdecl;external;

function gtk_widget_get_css_classes(widget:PGtkWidget):^Pchar;cdecl;external;

procedure gtk_widget_set_css_classes(widget:PGtkWidget; classes:PPchar);cdecl;external;

    type

      TGtkWidgetActionActivateFunc = procedure (widget:PGtkWidget; action_name:Pchar; parameter:PGVariant);cdecl;


procedure gtk_widget_class_install_action(widget_class:PGtkWidgetClass; action_name:Pchar; parameter_type:Pchar; activate:TGtkWidgetActionActivateFunc);cdecl;external;

procedure gtk_widget_class_install_property_action(widget_class:PGtkWidgetClass; action_name:Pchar; property_name:Pchar);cdecl;external;

function gtk_widget_class_query_action(widget_class:PGtkWidgetClass; index_:Tguint; owner:PGType; action_name:PPchar; parameter_type:PPGVariantType; 
               property_name:PPchar):Tgboolean;cdecl;external;

procedure gtk_widget_action_set_enabled(widget:PGtkWidget; action_name:Pchar; enabled:Tgboolean);cdecl;external;

procedure gtk_widget_class_set_accessible_role(widget_class:PGtkWidgetClass; accessible_role:TGtkAccessibleRole);cdecl;external;

function gtk_widget_class_get_accessible_role(widget_class:PGtkWidgetClass):TGtkAccessibleRole;cdecl;external;



{$endif}


implementation

function GTK_TYPE_WIDGET : longint; { return type might be wrong }
  begin
    GTK_TYPE_WIDGET:=gtk_widget_get_type;
  end;

function GTK_WIDGET(widget : longint) : longint;
begin
  GTK_WIDGET:=G_TYPE_CHECK_INSTANCE_CAST(widget,GTK_TYPE_WIDGET,GtkWidget);
end;

function GTK_WIDGET_CLASS(klass : longint) : longint;
begin
  GTK_WIDGET_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_WIDGET,GtkWidgetClass);
end;

function GTK_IS_WIDGET(widget : longint) : longint;
begin
  GTK_IS_WIDGET:=G_TYPE_CHECK_INSTANCE_TYPE(widget,GTK_TYPE_WIDGET);
end;

function GTK_IS_WIDGET_CLASS(klass : longint) : longint;
begin
  GTK_IS_WIDGET_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_WIDGET);
end;

function GTK_WIDGET_GET_CLASS(obj : longint) : longint;
begin
  GTK_WIDGET_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_WIDGET,GtkWidgetClass);
end;

function GTK_TYPE_REQUISITION : longint; { return type might be wrong }
  begin
    GTK_TYPE_REQUISITION:=gtk_requisition_get_type;
  end;


end.
