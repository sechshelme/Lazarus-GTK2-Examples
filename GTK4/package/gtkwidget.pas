unit gtkwidget;

interface

uses
 ctypes,pango,Cairo, glib2, common_GTK, gtkenums;

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


type
  PGtkAllocation = ^TGtkAllocation;
  TGtkAllocation = TGdkRectangle;

  PGtkRequisition = ^TGtkRequisition;
  TGtkRequisition = record
      width : cint;
      height : cint;
    end;

  TGtkWidgetPrivate=Pointer;    //  _GtkWidgetPrivate
  PGtkWidgetPrivate=^TGtkWidgetPrivate;


  PGtkWidget = ^TGtkWidget;
  TGtkWidget = record
      parent_instance : TGInitiallyUnowned;
      priv : PGtkWidgetPrivate;
    end;

  TGtkTickCallback = function (widget:PGtkWidget; frame_clock:PGdkFrameClock; user_data:Tgpointer):Tgboolean;cdecl;

  // ==== eigenes
  TGInitiallyUnownedClass=Pointer;   // /usr/include/glib-2.0/gobject/gobject.h
  PGInitiallyUnownedClass=^TGInitiallyUnownedClass;

  TGtkWidgetClassPrivate=Pointer;                  // _GtkWidgetClassPrivate
  PGtkWidgetClassPrivate=^TGtkWidgetClassPrivate;

{*
 * GtkWidgetClass:
 * @parent_class: The object class structure needs to be the first
 *   element in the widget class structure in order for the class mechanism
 *   to work correctly. This allows a GtkWidgetClass pointer to be cast to
 *   a GObjectClass pointer.
 * @show: Signal emitted when widget is shown
 * @hide: Signal emitted when widget is hidden.
 * @map: Signal emitted when widget is going to be mapped, that is
 *   when the widget is visible (which is controlled with
 *   gtk_widget_set_visible()) and all its parents up to the toplevel
 *   widget are also visible.
 * @unmap: Signal emitted when widget is going to be unmapped, which
 *   means that either it or any of its parents up to the toplevel
 *   widget have been set as hidden.
 * @realize: Signal emitted when widget is associated with a
 *   `GdkSurface`, which means that gtk_widget_realize() has been called or
 *   the widget has been mapped (that is, it is going to be drawn).
 * @unrealize: Signal emitted when the GdkSurface associated with
 *   widget is destroyed, which means that gtk_widget_unrealize() has
 *   been called or the widget has been unmapped (that is, it is going
 *   to be hidden).
 * @root: Called when the widget gets added to a `GtkRoot` widget. Must
 *   chain up
 * @unroot: Called when the widget is about to be removed from its
 *   `GtkRoot` widget. Must chain up
 * @size_allocate: Called to set the allocation, if the widget does
 *   not have a layout manager.
 * @state_flags_changed: Signal emitted when the widget state changes,
 *   see gtk_widget_get_state_flags().
 * @direction_changed: Signal emitted when the text direction of a
 *   widget changes.
 * @get_request_mode: Called to get the request mode, if the widget
 *   does not have a layout manager.
 *   This allows a widget to tell its parent container whether
 *   it prefers to be allocated in %GTK_SIZE_REQUEST_HEIGHT_FOR_WIDTH or
 *   %GTK_SIZE_REQUEST_WIDTH_FOR_HEIGHT mode.
 *   %GTK_SIZE_REQUEST_HEIGHT_FOR_WIDTH means the widget prefers to have
 *   `GtkWidgetClass.measure()` called first to get the default width (passing
 *   a for_size of -1), then again to get the height for said default width.
 *   %GTK_SIZE_REQUEST_CONSTANT_SIZE disables any height-for-width or
 *   width-for-height geometry management for said widget and is the
 *   default return.
 *   It’s important to note that any widget
 *   which trades height-for-width or width-for-height must respond properly
 *   to a for_size value >= -1 passed to `GtkWidgetClass.measure`, for both
 *   possible orientations.
 * @measure: Called to obtain the minimum and natural size of the widget,
 *   if the widget does not have a layout manager.
 *   Depending on the orientation parameter, the passed for_size can be
 *   interpreted as width or height. A widget will never be allocated less
 *   than its minimum size.
 * @mnemonic_activate: Activates the @widget if @group_cycling is
 *   %FALSE, and just grabs the focus if @group_cycling is %TRUE.
 * @grab_focus: Causes @widget to have the keyboard focus for the
 *   `GtkWindow` it’s inside.
 * @focus: Vfunc for gtk_widget_child_focus()
 * @set_focus_child: Sets the focused child of a widget. Must chain up
 * @move_focus: Signal emitted when a change of focus is requested
 * @keynav_failed: Signal emitted if keyboard navigation fails.
 * @query_tooltip: Signal emitted when “has-tooltip” is %TRUE and the
 *   hover timeout has expired with the cursor hovering “above”
 *   widget; or emitted when widget got focus in keyboard mode.
 * @compute_expand: Computes whether a container should give this
 *   widget extra space when possible.
 * @css_changed: Vfunc called when the CSS used by widget was changed. Widgets
 *   should then discard their caches that depend on CSS and queue resizes or
 *   redraws accordingly. The default implementation will take care of this for
 *   all the default CSS properties, so implementations must chain up.
 * @system_setting_changed: Emitted when a system setting was changed. Must chain up.
 * @snapshot: Vfunc called when a new snapshot of the widget has to be taken.
 * @contains: Vfunc for gtk_widget_contains().
  }
{< public > }
{ basics  }
{ size requests  }
{ Mnemonics  }
{ explicit focus  }
{ keyboard navigation  }
{< private > }
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


function gtk_widget_get_type:TGType;cdecl;external gtklib;
procedure gtk_widget_unparent(widget:PGtkWidget);cdecl;external gtklib;
procedure gtk_widget_show(widget:PGtkWidget);cdecl;external gtklib;
procedure gtk_widget_hide(widget:PGtkWidget);cdecl;external gtklib;
procedure gtk_widget_map(widget:PGtkWidget);cdecl;external gtklib;
procedure gtk_widget_unmap(widget:PGtkWidget);cdecl;external gtklib;
procedure gtk_widget_realize(widget:PGtkWidget);cdecl;external gtklib;
procedure gtk_widget_unrealize(widget:PGtkWidget);cdecl;external gtklib;
{ Queuing draws  }
procedure gtk_widget_queue_draw(widget:PGtkWidget);cdecl;external gtklib;
procedure gtk_widget_queue_resize(widget:PGtkWidget);cdecl;external gtklib;
procedure gtk_widget_queue_allocate(widget:PGtkWidget);cdecl;external gtklib;
function gtk_widget_get_frame_clock(widget:PGtkWidget):PGdkFrameClock;cdecl;external gtklib;
(* Const before type ignored *)
procedure gtk_widget_size_allocate(widget:PGtkWidget; allocation:PGtkAllocation; baseline:longint);cdecl;external gtklib;
procedure gtk_widget_allocate(widget:PGtkWidget; width:longint; height:longint; baseline:longint; transform:PGskTransform);cdecl;external gtklib;
function gtk_widget_get_request_mode(widget:PGtkWidget):TGtkSizeRequestMode;cdecl;external gtklib;
procedure gtk_widget_measure(widget:PGtkWidget; orientation:TGtkOrientation; for_size:longint; minimum:Plongint; natural:Plongint; 
            minimum_baseline:Plongint; natural_baseline:Plongint);cdecl;external gtklib;
procedure gtk_widget_get_preferred_size(widget:PGtkWidget; minimum_size:PGtkRequisition; natural_size:PGtkRequisition);cdecl;external gtklib;
procedure gtk_widget_set_layout_manager(widget:PGtkWidget; layout_manager:PGtkLayoutManager);cdecl;external gtklib;
function gtk_widget_get_layout_manager(widget:PGtkWidget):PGtkLayoutManager;cdecl;external gtklib;
procedure gtk_widget_class_set_layout_manager_type(widget_class:PGtkWidgetClass; _type:TGType);cdecl;external gtklib;
function gtk_widget_class_get_layout_manager_type(widget_class:PGtkWidgetClass):TGType;cdecl;external gtklib;
(* Const before type ignored *)
procedure gtk_widget_class_add_binding(widget_class:PGtkWidgetClass; keyval:Tguint; mods:TGdkModifierType; callback:TGtkShortcutFunc; format_string:Pchar; 
            args:array of const);cdecl;external gtklib;
procedure gtk_widget_class_add_binding(widget_class:PGtkWidgetClass; keyval:Tguint; mods:TGdkModifierType; callback:TGtkShortcutFunc; format_string:Pchar);cdecl;external gtklib;
(* Const before type ignored *)
(* Const before type ignored *)
procedure gtk_widget_class_add_binding_signal(widget_class:PGtkWidgetClass; keyval:Tguint; mods:TGdkModifierType; signal:Pchar; format_string:Pchar; 
            args:array of const);cdecl;external gtklib;
procedure gtk_widget_class_add_binding_signal(widget_class:PGtkWidgetClass; keyval:Tguint; mods:TGdkModifierType; signal:Pchar; format_string:Pchar);cdecl;external gtklib;
(* Const before type ignored *)
(* Const before type ignored *)
procedure gtk_widget_class_add_binding_action(widget_class:PGtkWidgetClass; keyval:Tguint; mods:TGdkModifierType; action_name:Pchar; format_string:Pchar; 
            args:array of const);cdecl;external gtklib;
procedure gtk_widget_class_add_binding_action(widget_class:PGtkWidgetClass; keyval:Tguint; mods:TGdkModifierType; action_name:Pchar; format_string:Pchar);cdecl;external gtklib;
procedure gtk_widget_class_add_shortcut(widget_class:PGtkWidgetClass; shortcut:PGtkShortcut);cdecl;external gtklib;
procedure gtk_widget_class_set_activate_signal(widget_class:PGtkWidgetClass; signal_id:Tguint);cdecl;external gtklib;
(* Const before type ignored *)
procedure gtk_widget_class_set_activate_signal_from_name(widget_class:PGtkWidgetClass; signal_name:Pchar);cdecl;external gtklib;
function gtk_widget_class_get_activate_signal(widget_class:PGtkWidgetClass):Tguint;cdecl;external gtklib;
function gtk_widget_mnemonic_activate(widget:PGtkWidget; group_cycling:Tgboolean):Tgboolean;cdecl;external gtklib;
function gtk_widget_activate(widget:PGtkWidget):Tgboolean;cdecl;external gtklib;
procedure gtk_widget_set_can_focus(widget:PGtkWidget; can_focus:Tgboolean);cdecl;external gtklib;
function gtk_widget_get_can_focus(widget:PGtkWidget):Tgboolean;cdecl;external gtklib;
procedure gtk_widget_set_focusable(widget:PGtkWidget; focusable:Tgboolean);cdecl;external gtklib;
function gtk_widget_get_focusable(widget:PGtkWidget):Tgboolean;cdecl;external gtklib;
function gtk_widget_has_focus(widget:PGtkWidget):Tgboolean;cdecl;external gtklib;
function gtk_widget_is_focus(widget:PGtkWidget):Tgboolean;cdecl;external gtklib;
function gtk_widget_has_visible_focus(widget:PGtkWidget):Tgboolean;cdecl;external gtklib;
function gtk_widget_grab_focus(widget:PGtkWidget):Tgboolean;cdecl;external gtklib;
procedure gtk_widget_set_focus_on_click(widget:PGtkWidget; focus_on_click:Tgboolean);cdecl;external gtklib;
function gtk_widget_get_focus_on_click(widget:PGtkWidget):Tgboolean;cdecl;external gtklib;
procedure gtk_widget_set_can_target(widget:PGtkWidget; can_target:Tgboolean);cdecl;external gtklib;
function gtk_widget_get_can_target(widget:PGtkWidget):Tgboolean;cdecl;external gtklib;
function gtk_widget_has_default(widget:PGtkWidget):Tgboolean;cdecl;external gtklib;
procedure gtk_widget_set_receives_default(widget:PGtkWidget; receives_default:Tgboolean);cdecl;external gtklib;
function gtk_widget_get_receives_default(widget:PGtkWidget):Tgboolean;cdecl;external gtklib;
(* Const before type ignored *)
procedure gtk_widget_set_name(widget:PGtkWidget; name:Pchar);cdecl;external gtklib;
(* Const before type ignored *)
function gtk_widget_get_name(widget:PGtkWidget):Pchar;cdecl;external gtklib;
procedure gtk_widget_set_state_flags(widget:PGtkWidget; flags:TGtkStateFlags; clear:Tgboolean);cdecl;external gtklib;
procedure gtk_widget_unset_state_flags(widget:PGtkWidget; flags:TGtkStateFlags);cdecl;external gtklib;
function gtk_widget_get_state_flags(widget:PGtkWidget):TGtkStateFlags;cdecl;external gtklib;
procedure gtk_widget_set_sensitive(widget:PGtkWidget; sensitive:Tgboolean);cdecl;external gtklib;
function gtk_widget_get_sensitive(widget:PGtkWidget):Tgboolean;cdecl;external gtklib;
function gtk_widget_is_sensitive(widget:PGtkWidget):Tgboolean;cdecl;external gtklib;
procedure gtk_widget_set_visible(widget:PGtkWidget; visible:Tgboolean);cdecl;external gtklib;
function gtk_widget_get_visible(widget:PGtkWidget):Tgboolean;cdecl;external gtklib;
function gtk_widget_is_visible(widget:PGtkWidget):Tgboolean;cdecl;external gtklib;
function gtk_widget_is_drawable(widget:PGtkWidget):Tgboolean;cdecl;external gtklib;
function gtk_widget_get_realized(widget:PGtkWidget):Tgboolean;cdecl;external gtklib;
function gtk_widget_get_mapped(widget:PGtkWidget):Tgboolean;cdecl;external gtklib;
procedure gtk_widget_set_parent(widget:PGtkWidget; parent:PGtkWidget);cdecl;external gtklib;
function gtk_widget_get_parent(widget:PGtkWidget):PGtkWidget;cdecl;external gtklib;
function gtk_widget_get_root(widget:PGtkWidget):PGtkRoot;cdecl;external gtklib;
function gtk_widget_get_native(widget:PGtkWidget):PGtkNative;cdecl;external gtklib;
procedure gtk_widget_set_child_visible(widget:PGtkWidget; child_visible:Tgboolean);cdecl;external gtklib;
function gtk_widget_get_child_visible(widget:PGtkWidget):Tgboolean;cdecl;external gtklib;
function gtk_widget_get_allocated_width(widget:PGtkWidget):longint;cdecl;external gtklib;
function gtk_widget_get_allocated_height(widget:PGtkWidget):longint;cdecl;external gtklib;
function gtk_widget_get_allocated_baseline(widget:PGtkWidget):longint;cdecl;external gtklib;
procedure gtk_widget_get_allocation(widget:PGtkWidget; allocation:PGtkAllocation);cdecl;external gtklib;
function gtk_widget_compute_transform(widget:PGtkWidget; target:PGtkWidget; out_transform:Pgraphene_matrix_t):Tgboolean;cdecl;external gtklib;
function gtk_widget_compute_bounds(widget:PGtkWidget; target:PGtkWidget; out_bounds:Pgraphene_rect_t):Tgboolean;cdecl;external gtklib;
(* Const before type ignored *)
function gtk_widget_compute_point(widget:PGtkWidget; target:PGtkWidget; point:Pgraphene_point_t; out_point:Pgraphene_point_t):Tgboolean;cdecl;external gtklib;
function gtk_widget_get_width(widget:PGtkWidget):longint;cdecl;external gtklib;
function gtk_widget_get_height(widget:PGtkWidget):longint;cdecl;external gtklib;
function gtk_widget_get_size(widget:PGtkWidget; orientation:TGtkOrientation):longint;cdecl;external gtklib;
function gtk_widget_child_focus(widget:PGtkWidget; direction:TGtkDirectionType):Tgboolean;cdecl;external gtklib;
function gtk_widget_keynav_failed(widget:PGtkWidget; direction:TGtkDirectionType):Tgboolean;cdecl;external gtklib;
procedure gtk_widget_error_bell(widget:PGtkWidget);cdecl;external gtklib;
procedure gtk_widget_set_size_request(widget:PGtkWidget; width:longint; height:longint);cdecl;external gtklib;
procedure gtk_widget_get_size_request(widget:PGtkWidget; width:Plongint; height:Plongint);cdecl;external gtklib;
procedure gtk_widget_set_opacity(widget:PGtkWidget; opacity:Tdouble);cdecl;external gtklib;
function gtk_widget_get_opacity(widget:PGtkWidget):Tdouble;cdecl;external gtklib;
procedure gtk_widget_set_overflow(widget:PGtkWidget; overflow:TGtkOverflow);cdecl;external gtklib;
function gtk_widget_get_overflow(widget:PGtkWidget):TGtkOverflow;cdecl;external gtklib;
function gtk_widget_get_ancestor(widget:PGtkWidget; widget_type:TGType):PGtkWidget;cdecl;external gtklib;
function gtk_widget_get_scale_factor(widget:PGtkWidget):longint;cdecl;external gtklib;
function gtk_widget_get_display(widget:PGtkWidget):PGdkDisplay;cdecl;external gtklib;
function gtk_widget_get_settings(widget:PGtkWidget):PGtkSettings;cdecl;external gtklib;
function gtk_widget_get_clipboard(widget:PGtkWidget):PGdkClipboard;cdecl;external gtklib;
function gtk_widget_get_primary_clipboard(widget:PGtkWidget):PGdkClipboard;cdecl;external gtklib;
{ Expand flags and related support  }
function gtk_widget_get_hexpand(widget:PGtkWidget):Tgboolean;cdecl;external gtklib;
procedure gtk_widget_set_hexpand(widget:PGtkWidget; expand:Tgboolean);cdecl;external gtklib;
function gtk_widget_get_hexpand_set(widget:PGtkWidget):Tgboolean;cdecl;external gtklib;
procedure gtk_widget_set_hexpand_set(widget:PGtkWidget; set_:Tgboolean);cdecl;external gtklib;
function gtk_widget_get_vexpand(widget:PGtkWidget):Tgboolean;cdecl;external gtklib;
procedure gtk_widget_set_vexpand(widget:PGtkWidget; expand:Tgboolean);cdecl;external gtklib;
function gtk_widget_get_vexpand_set(widget:PGtkWidget):Tgboolean;cdecl;external gtklib;
procedure gtk_widget_set_vexpand_set(widget:PGtkWidget; set_:Tgboolean);cdecl;external gtklib;
function gtk_widget_compute_expand(widget:PGtkWidget; orientation:TGtkOrientation):Tgboolean;cdecl;external gtklib;
{ Margin and alignment  }
function gtk_widget_get_halign(widget:PGtkWidget):TGtkAlign;cdecl;external gtklib;
procedure gtk_widget_set_halign(widget:PGtkWidget; align:TGtkAlign);cdecl;external gtklib;
function gtk_widget_get_valign(widget:PGtkWidget):TGtkAlign;cdecl;external gtklib;
procedure gtk_widget_set_valign(widget:PGtkWidget; align:TGtkAlign);cdecl;external gtklib;
function gtk_widget_get_margin_start(widget:PGtkWidget):longint;cdecl;external gtklib;
procedure gtk_widget_set_margin_start(widget:PGtkWidget; margin:longint);cdecl;external gtklib;
function gtk_widget_get_margin_end(widget:PGtkWidget):longint;cdecl;external gtklib;
procedure gtk_widget_set_margin_end(widget:PGtkWidget; margin:longint);cdecl;external gtklib;
function gtk_widget_get_margin_top(widget:PGtkWidget):longint;cdecl;external gtklib;
procedure gtk_widget_set_margin_top(widget:PGtkWidget; margin:longint);cdecl;external gtklib;
function gtk_widget_get_margin_bottom(widget:PGtkWidget):longint;cdecl;external gtklib;
procedure gtk_widget_set_margin_bottom(widget:PGtkWidget; margin:longint);cdecl;external gtklib;
function gtk_widget_is_ancestor(widget:PGtkWidget; ancestor:PGtkWidget):Tgboolean;cdecl;external gtklib;
function gtk_widget_translate_coordinates(src_widget:PGtkWidget; dest_widget:PGtkWidget; src_x:Tdouble; src_y:Tdouble; dest_x:Pdouble; 
           dest_y:Pdouble):Tgboolean;cdecl;external gtklib;
function gtk_widget_contains(widget:PGtkWidget; x:Tdouble; y:Tdouble):Tgboolean;cdecl;external gtklib;
function gtk_widget_pick(widget:PGtkWidget; x:Tdouble; y:Tdouble; flags:TGtkPickFlags):PGtkWidget;cdecl;external gtklib;
procedure gtk_widget_add_controller(widget:PGtkWidget; controller:PGtkEventController);cdecl;external gtklib;
procedure gtk_widget_remove_controller(widget:PGtkWidget; controller:PGtkEventController);cdecl;external gtklib;
function gtk_widget_create_pango_context(widget:PGtkWidget):PPangoContext;cdecl;external gtklib;
function gtk_widget_get_pango_context(widget:PGtkWidget):PPangoContext;cdecl;external gtklib;
(* Const before type ignored *)
procedure gtk_widget_set_font_options(widget:PGtkWidget; options:Pcairo_font_options_t);cdecl;external gtklib;
(* Const before type ignored *)
function gtk_widget_get_font_options(widget:PGtkWidget):Pcairo_font_options_t;cdecl;external gtklib;
(* Const before type ignored *)
function gtk_widget_create_pango_layout(widget:PGtkWidget; text:Pchar):PPangoLayout;cdecl;external gtklib;
{ Functions for setting directionality for widgets  }
procedure gtk_widget_set_direction(widget:PGtkWidget; dir:TGtkTextDirection);cdecl;external gtklib;
function gtk_widget_get_direction(widget:PGtkWidget):TGtkTextDirection;cdecl;external gtklib;
procedure gtk_widget_set_default_direction(dir:TGtkTextDirection);cdecl;external gtklib;
function gtk_widget_get_default_direction:TGtkTextDirection;cdecl;external gtklib;
procedure gtk_widget_set_cursor(widget:PGtkWidget; cursor:PGdkCursor);cdecl;external gtklib;
(* Const before type ignored *)
procedure gtk_widget_set_cursor_from_name(widget:PGtkWidget; name:Pchar);cdecl;external gtklib;
function gtk_widget_get_cursor(widget:PGtkWidget):PGdkCursor;cdecl;external gtklib;
function gtk_widget_list_mnemonic_labels(widget:PGtkWidget):PGList;cdecl;external gtklib;
procedure gtk_widget_add_mnemonic_label(widget:PGtkWidget; _label:PGtkWidget);cdecl;external gtklib;
procedure gtk_widget_remove_mnemonic_label(widget:PGtkWidget; _label:PGtkWidget);cdecl;external gtklib;
procedure gtk_widget_trigger_tooltip_query(widget:PGtkWidget);cdecl;external gtklib;
(* Const before type ignored *)
procedure gtk_widget_set_tooltip_text(widget:PGtkWidget; text:Pchar);cdecl;external gtklib;
(* Const before type ignored *)
function gtk_widget_get_tooltip_text(widget:PGtkWidget):Pchar;cdecl;external gtklib;
(* Const before type ignored *)
procedure gtk_widget_set_tooltip_markup(widget:PGtkWidget; markup:Pchar);cdecl;external gtklib;
(* Const before type ignored *)
function gtk_widget_get_tooltip_markup(widget:PGtkWidget):Pchar;cdecl;external gtklib;
procedure gtk_widget_set_has_tooltip(widget:PGtkWidget; has_tooltip:Tgboolean);cdecl;external gtklib;
function gtk_widget_get_has_tooltip(widget:PGtkWidget):Tgboolean;cdecl;external gtklib;
function gtk_requisition_get_type:TGType;cdecl;external gtklib;
function gtk_requisition_new:PGtkRequisition;cdecl;external gtklib;
(* Const before type ignored *)
function gtk_requisition_copy(requisition:PGtkRequisition):PGtkRequisition;cdecl;external gtklib;
procedure gtk_requisition_free(requisition:PGtkRequisition);cdecl;external gtklib;
function gtk_widget_in_destruction(widget:PGtkWidget):Tgboolean;cdecl;external gtklib;
function gtk_widget_get_style_context(widget:PGtkWidget):PGtkStyleContext;cdecl;external gtklib;
(* Const before type ignored *)
procedure gtk_widget_class_set_css_name(widget_class:PGtkWidgetClass; name:Pchar);cdecl;external gtklib;
(* Const before type ignored *)
function gtk_widget_class_get_css_name(widget_class:PGtkWidgetClass):Pchar;cdecl;external gtklib;
function gtk_widget_add_tick_callback(widget:PGtkWidget; callback:TGtkTickCallback; user_data:Tgpointer; notify:TGDestroyNotify):Tguint;cdecl;external gtklib;
procedure gtk_widget_remove_tick_callback(widget:PGtkWidget; id:Tguint);cdecl;external gtklib;
{*
 * gtk_widget_class_bind_template_callback:
 * @widget_class: a `GtkWidgetClass`
 * @callback: the callback symbol
 *
 * Binds a callback function defined in a template to the @widget_class.
 *
 * This macro is a convenience wrapper around the
 * gtk_widget_class_bind_template_callback_full() function. It is not
 * supported after gtk_widget_class_set_template_scope() has been used
 * on @widget_class.
  }
{#define gtk_widget_class_bind_template_callback(widget_class, callback) \ }
{  gtk_widget_class_bind_template_callback_full (GTK_WIDGET_CLASS (widget_class), \ }
{                                                #callback, \ }
{                                                G_CALLBACK (callback)) }
{*
 * gtk_widget_class_bind_template_child:
 * @widget_class: a `GtkWidgetClass`
 * @TypeName: the type name of this widget
 * @member_name: name of the instance member in the instance struct for @data_type
 *
 * Binds a child widget defined in a template to the @widget_class.
 *
 * This macro is a convenience wrapper around the
 * gtk_widget_class_bind_template_child_full() function.
 *
 * This macro will use the offset of the @member_name inside the @TypeName
 * instance structure.
  }
{#define gtk_widget_class_bind_template_child(widget_class, TypeName, member_name) \ }
{  gtk_widget_class_bind_template_child_full (widget_class, \ }
{                                             #member_name, \ }
{                                             FALSE, \ }
{                                             G_STRUCT_OFFSET (TypeName, member_name)) }
{*
 * gtk_widget_class_bind_template_child_internal:
 * @widget_class: a `GtkWidgetClass`
 * @TypeName: the type name, in CamelCase
 * @member_name: name of the instance member in the instance struct for @data_type
 *
 * Binds a child widget defined in a template to the @widget_class, and
 * also makes it available as an internal child in GtkBuilder, under the
 * name @member_name.
 *
 * This macro is a convenience wrapper around the
 * gtk_widget_class_bind_template_child_full() function.
 *
 * This macro will use the offset of the @member_name inside the @TypeName
 * instance structure.
  }
{#define gtk_widget_class_bind_template_child_internal(widget_class, TypeName, member_name) \ }
{  gtk_widget_class_bind_template_child_full (widget_class, \ }
{                                             #member_name, \ }
{                                             TRUE, \ }
{                                             G_STRUCT_OFFSET (TypeName, member_name)) }
{*
 * gtk_widget_class_bind_template_child_private:
 * @widget_class: a `GtkWidgetClass`
 * @TypeName: the type name of this widget
 * @member_name: name of the instance private member in the private struct for @data_type
 *
 * Binds a child widget defined in a template to the @widget_class.
 *
 * This macro is a convenience wrapper around the
 * gtk_widget_class_bind_template_child_full() function.
 *
 * This macro will use the offset of the @member_name inside the @TypeName
 * private data structure (it uses G_PRIVATE_OFFSET(), so the private struct
 * must be added with G_ADD_PRIVATE()).
  }
{#define gtk_widget_class_bind_template_child_private(widget_class, TypeName, member_name) \ }
{  gtk_widget_class_bind_template_child_full (widget_class, \ }
{                                             #member_name, \ }
{                                             FALSE, \ }
{                                             G_PRIVATE_OFFSET (TypeName, member_name)) }
{*
 * gtk_widget_class_bind_template_child_internal_private:
 * @widget_class: a `GtkWidgetClass`
 * @TypeName: the type name, in CamelCase
 * @member_name: name of the instance private member on the private struct for @data_type
 *
 * Binds a child widget defined in a template to the @widget_class, and
 * also makes it available as an internal child in GtkBuilder, under the
 * name @member_name.
 *
 * This macro is a convenience wrapper around the
 * gtk_widget_class_bind_template_child_full() function.
 *
 * This macro will use the offset of the @member_name inside the @TypeName
 * private data structure.
  }
{#define gtk_widget_class_bind_template_child_internal_private(widget_class, TypeName, member_name) \ }
{  gtk_widget_class_bind_template_child_full (widget_class, \ }
{                                             #member_name, \ }
{                                             TRUE, \ }
{                                             G_PRIVATE_OFFSET (TypeName, member_name)) }
procedure gtk_widget_init_template(widget:PGtkWidget);cdecl;external gtklib;
(* Const before type ignored *)
function gtk_widget_get_template_child(widget:PGtkWidget; widget_type:TGType; name:Pchar):PGObject;cdecl;external gtklib;
procedure gtk_widget_class_set_template(widget_class:PGtkWidgetClass; template_bytes:PGBytes);cdecl;external gtklib;
(* Const before type ignored *)
procedure gtk_widget_class_set_template_from_resource(widget_class:PGtkWidgetClass; resource_name:Pchar);cdecl;external gtklib;
(* Const before type ignored *)
procedure gtk_widget_class_bind_template_callback_full(widget_class:PGtkWidgetClass; callback_name:Pchar; callback_symbol:TGCallback);cdecl;external gtklib;
procedure gtk_widget_class_set_template_scope(widget_class:PGtkWidgetClass; scope:PGtkBuilderScope);cdecl;external gtklib;
(* Const before type ignored *)
procedure gtk_widget_class_bind_template_child_full(widget_class:PGtkWidgetClass; name:Pchar; internal_child:Tgboolean; struct_offset:Tgssize);cdecl;external gtklib;
(* Const before type ignored *)
procedure gtk_widget_insert_action_group(widget:PGtkWidget; name:Pchar; group:PGActionGroup);cdecl;external gtklib;
(* Const before type ignored *)
(* Const before type ignored *)
function gtk_widget_activate_action(widget:PGtkWidget; name:Pchar; format_string:Pchar; args:array of const):Tgboolean;cdecl;external gtklib;
function gtk_widget_activate_action(widget:PGtkWidget; name:Pchar; format_string:Pchar):Tgboolean;cdecl;external gtklib;
(* Const before type ignored *)
function gtk_widget_activate_action_variant(widget:PGtkWidget; name:Pchar; args:PGVariant):Tgboolean;cdecl;external gtklib;
procedure gtk_widget_activate_default(widget:PGtkWidget);cdecl;external gtklib;
procedure gtk_widget_set_font_map(widget:PGtkWidget; font_map:PPangoFontMap);cdecl;external gtklib;
function gtk_widget_get_font_map(widget:PGtkWidget):PPangoFontMap;cdecl;external gtklib;
function gtk_widget_get_first_child(widget:PGtkWidget):PGtkWidget;cdecl;external gtklib;
function gtk_widget_get_last_child(widget:PGtkWidget):PGtkWidget;cdecl;external gtklib;
function gtk_widget_get_next_sibling(widget:PGtkWidget):PGtkWidget;cdecl;external gtklib;
function gtk_widget_get_prev_sibling(widget:PGtkWidget):PGtkWidget;cdecl;external gtklib;
function gtk_widget_observe_children(widget:PGtkWidget):PGListModel;cdecl;external gtklib;
function gtk_widget_observe_controllers(widget:PGtkWidget):PGListModel;cdecl;external gtklib;
procedure gtk_widget_insert_after(widget:PGtkWidget; parent:PGtkWidget; previous_sibling:PGtkWidget);cdecl;external gtklib;
procedure gtk_widget_insert_before(widget:PGtkWidget; parent:PGtkWidget; next_sibling:PGtkWidget);cdecl;external gtklib;
procedure gtk_widget_set_focus_child(widget:PGtkWidget; child:PGtkWidget);cdecl;external gtklib;
function gtk_widget_get_focus_child(widget:PGtkWidget):PGtkWidget;cdecl;external gtklib;
procedure gtk_widget_snapshot_child(widget:PGtkWidget; child:PGtkWidget; snapshot:PGtkSnapshot);cdecl;external gtklib;
function gtk_widget_should_layout(widget:PGtkWidget):Tgboolean;cdecl;external gtklib;
(* Const before type ignored *)
function gtk_widget_get_css_name(self:PGtkWidget):Pchar;cdecl;external gtklib;
(* Const before type ignored *)
procedure gtk_widget_add_css_class(widget:PGtkWidget; css_class:Pchar);cdecl;external gtklib;
(* Const before type ignored *)
procedure gtk_widget_remove_css_class(widget:PGtkWidget; css_class:Pchar);cdecl;external gtklib;
(* Const before type ignored *)
function gtk_widget_has_css_class(widget:PGtkWidget; css_class:Pchar):Tgboolean;cdecl;external gtklib;
function gtk_widget_get_css_classes(widget:PGtkWidget):PPchar;cdecl;external gtklib;
(* Const before type ignored *)
procedure gtk_widget_set_css_classes(widget:PGtkWidget; classes:PPchar);cdecl;external gtklib;
{*
 * GtkWidgetActionActivateFunc:
 * @widget: the widget to which the action belongs
 * @action_name: the action name
 * @parameter: parameter for activation
 *
 * The type of the callback functions used for activating
 * actions installed with gtk_widget_class_install_action().
 *
 * The @parameter must match the @parameter_type of the action.
  }
(* Const before type ignored *)
type

  TGtkWidgetActionActivateFunc = procedure (widget:PGtkWidget; action_name:Pchar; parameter:PGVariant);cdecl;
(* Const before type ignored *)
(* Const before type ignored *)

procedure gtk_widget_class_install_action(widget_class:PGtkWidgetClass; action_name:Pchar; parameter_type:Pchar; activate:TGtkWidgetActionActivateFunc);cdecl;external gtklib;
(* Const before type ignored *)
(* Const before type ignored *)
procedure gtk_widget_class_install_property_action(widget_class:PGtkWidgetClass; action_name:Pchar; property_name:Pchar);cdecl;external gtklib;
(* Const before type ignored *)
(* Const before type ignored *)
(* Const before type ignored *)
function gtk_widget_class_query_action(widget_class:PGtkWidgetClass; index_:Tguint; owner:PGType; action_name:PPchar; parameter_type:PPGVariantType; 
           property_name:PPchar):Tgboolean;cdecl;external gtklib;
(* Const before type ignored *)
procedure gtk_widget_action_set_enabled(widget:PGtkWidget; action_name:Pchar; enabled:Tgboolean);cdecl;external gtklib;
procedure gtk_widget_class_set_accessible_role(widget_class:PGtkWidgetClass; accessible_role:TGtkAccessibleRole);cdecl;external gtklib;
function gtk_widget_class_get_accessible_role(widget_class:PGtkWidgetClass):TGtkAccessibleRole;cdecl;external gtklib;

{ was #define dname def_expr }
function GTK_TYPE_REQUISITION : TGType;

// === Konventiert am: 10-7-24 19:22:54 ===

function GTK_TYPE_WIDGET : TGType;
function GTK_WIDGET(widget : Pointer) : PGtkWidget;
function GTK_WIDGET_CLASS(klass : Pointer) : PGtkWidgetClass;
function GTK_IS_WIDGET(widget : Pointer) : Tgboolean;
function GTK_IS_WIDGET_CLASS(klass : Pointer) : Tgboolean;
function GTK_WIDGET_GET_CLASS(obj : Pointer) : PGtkWidgetClass;

implementation

function GTK_TYPE_WIDGET : TGType;
  begin
    GTK_TYPE_WIDGET:=gtk_widget_get_type;
  end;

function GTK_WIDGET(widget: Pointer): PGtkWidget;
begin
  Result := PGtkWidget(g_type_check_instance_cast(widget, GTK_TYPE_WIDGET));
end;

function GTK_WIDGET_CLASS(klass : Pointer) : PGtkWidgetClass;
begin
  Result := PGtkWidgetClass(g_type_check_class_cast(klass, GTK_TYPE_WIDGET));
end;

function GTK_IS_WIDGET(widget: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(widget,  GTK_TYPE_WIDGET);
end;

function GTK_IS_WIDGET_CLASS(klass : Pointer) : Tgboolean;
begin
  Result := g_type_check_class_is_a(klass,  GTK_TYPE_WIDGET);
end;

function GTK_WIDGET_GET_CLASS(obj : Pointer) : PGtkWidgetClass;
begin
  Result := PGtkWidgetClass(PGTypeInstance(obj)^.g_class);
end;


function GTK_TYPE_REQUISITION: TGType; { return type might be wrong }
  begin
    GTK_TYPE_REQUISITION:=gtk_requisition_get_type;
  end;


end.
