
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


  { GTK - The GIMP Toolkit
   * Copyright (C) 1995-1997 Peter Mattis, Spencer Kimball and Josh MacDonald
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
  { Zeile entfernt  }
  { Macro for casting a pointer to a GtkWidget or GtkWidgetClass pointer.
   * Macros for testing whether widget or klass are of type GTK_TYPE_WIDGET.
    }

  { was #define dname def_expr }
  function GTK_TYPE_WIDGET : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_WIDGET(widget : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_WIDGET_CLASS(klass : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_WIDGET(widget : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_WIDGET_CLASS(klass : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_WIDGET_GET_CLASS(obj : longint) : longint;  

  { was #define dname def_expr }
  function GTK_TYPE_REQUISITION : longint; { return type might be wrong }


  type
    _GtkWidgetPrivate = GtkWidgetPrivate;
    _GtkWidgetClass = GtkWidgetClass;
    _GtkWidgetClassPrivate = GtkWidgetClassPrivate;
  {*
   * GtkAllocation:
   * @x: the X position of the widget’s area relative to its parents allocation.
   * @y: the Y position of the widget’s area relative to its parents allocation.
   * @width: the width of the widget’s allocated area.
   * @height: the height of the widget’s allocated area.
   *
   * The rectangle representing the area allocated for a widget by its parent.
    }

    GtkAllocation = GdkRectangle;
  {*
   * GtkTickCallback:
   * @widget: the widget
   * @frame_clock: the frame clock for the widget (same as calling gtk_widget_get_frame_clock())
   * @user_data: user data passed to gtk_widget_add_tick_callback().
   *
   * Callback type for adding a function to update animations. See gtk_widget_add_tick_callback().
   *
   * Returns: %G_SOURCE_CONTINUE if the tick callback should continue to be called,
   *  %G_SOURCE_REMOVE if the tick callback should be removed.
    }

    GtkTickCallback = function (widget:PGtkWidget; frame_clock:PGdkFrameClock; user_data:gpointer):gboolean;cdecl;
  {*
   * GtkRequisition:
   * @width: the widget’s desired width
   * @height: the widget’s desired height
   *
   * A `GtkRequisition` represents the desired size of a widget. See
   * [GtkWidget’s geometry management section](class.Widget.html#height-for-width-geometry-management) for
   * more information.
    }
    _GtkRequisition = record
        width : longint;cdecl;
        height : longint;
      end;

  { The widget is the base of the tree for displayable objects.
   *  (A displayable object is one which takes up some amount
   *  of screen real estate). It provides a common base and interface
   *  which actual widgets must adhere to.
    }
  {< private > }
    _GtkWidget = record
        parent_instance : GInitiallyUnowned;
        priv : ^GtkWidgetPrivate;
      end;

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
    _GtkWidgetClass = record
        parent_class : GInitiallyUnownedClass;
        show : procedure (widget:PGtkWidget);cdecl;
        hide : procedure (widget:PGtkWidget);cdecl;
        map : procedure (widget:PGtkWidget);cdecl;
        unmap : procedure (widget:PGtkWidget);cdecl;
        realize : procedure (widget:PGtkWidget);cdecl;
        unrealize : procedure (widget:PGtkWidget);cdecl;
        root : procedure (widget:PGtkWidget);cdecl;
        unroot : procedure (widget:PGtkWidget);cdecl;
        size_allocate : procedure (widget:PGtkWidget; width:longint; height:longint; baseline:longint);cdecl;
        state_flags_changed : procedure (widget:PGtkWidget; previous_state_flags:GtkStateFlags);cdecl;
        direction_changed : procedure (widget:PGtkWidget; previous_direction:GtkTextDirection);cdecl;
        get_request_mode : function (widget:PGtkWidget):GtkSizeRequestMode;cdecl;
        measure : procedure (widget:PGtkWidget; orientation:GtkOrientation; for_size:longint; minimum:Plongint; natural:Plongint; 
                      minimum_baseline:Plongint; natural_baseline:Plongint);cdecl;
        mnemonic_activate : function (widget:PGtkWidget; group_cycling:gboolean):gboolean;cdecl;
        grab_focus : function (widget:PGtkWidget):gboolean;cdecl;
        focus : function (widget:PGtkWidget; direction:GtkDirectionType):gboolean;cdecl;
        set_focus_child : procedure (widget:PGtkWidget; child:PGtkWidget);cdecl;
        move_focus : procedure (widget:PGtkWidget; direction:GtkDirectionType);cdecl;
        keynav_failed : function (widget:PGtkWidget; direction:GtkDirectionType):gboolean;cdecl;
        query_tooltip : function (widget:PGtkWidget; x:longint; y:longint; keyboard_tooltip:gboolean; tooltip:PGtkTooltip):gboolean;cdecl;
        compute_expand : procedure (widget:PGtkWidget; hexpand_p:Pgboolean; vexpand_p:Pgboolean);cdecl;
        css_changed : procedure (widget:PGtkWidget; change:PGtkCssStyleChange);cdecl;
        system_setting_changed : procedure (widget:PGtkWidget; settings:GtkSystemSetting);cdecl;
        snapshot : procedure (widget:PGtkWidget; snapshot:PGtkSnapshot);cdecl;
        contains : function (widget:PGtkWidget; x:double; y:double):gboolean;cdecl;
        priv : ^GtkWidgetClassPrivate;
        padding : array[0..7] of gpointer;
      end;

  { Zeile entfernt  }

  function gtk_widget_get_type:GType;

  { Zeile entfernt  }
  procedure gtk_widget_unparent(widget:PGtkWidget);

  { Zeile entfernt  }
  procedure gtk_widget_show(widget:PGtkWidget);

  { Zeile entfernt  }
  procedure gtk_widget_hide(widget:PGtkWidget);

  { Zeile entfernt  }
  procedure gtk_widget_map(widget:PGtkWidget);

  { Zeile entfernt  }
  procedure gtk_widget_unmap(widget:PGtkWidget);

  { Zeile entfernt  }
  procedure gtk_widget_realize(widget:PGtkWidget);

  { Zeile entfernt  }
  procedure gtk_widget_unrealize(widget:PGtkWidget);

  { Queuing draws  }
  { Zeile entfernt  }
  procedure gtk_widget_queue_draw(widget:PGtkWidget);

  { Zeile entfernt  }
  procedure gtk_widget_queue_resize(widget:PGtkWidget);

  { Zeile entfernt  }
  procedure gtk_widget_queue_allocate(widget:PGtkWidget);

  { Zeile entfernt  }
  function gtk_widget_get_frame_clock(widget:PGtkWidget):^GdkFrameClock;

  { Zeile entfernt  }
(* Const before type ignored *)
  procedure gtk_widget_size_allocate(widget:PGtkWidget; allocation:PGtkAllocation; baseline:longint);

  { Zeile entfernt  }
  procedure gtk_widget_allocate(widget:PGtkWidget; width:longint; height:longint; baseline:longint; transform:PGskTransform);

  { Zeile entfernt  }
  function gtk_widget_get_request_mode(widget:PGtkWidget):GtkSizeRequestMode;

  { Zeile entfernt  }
  procedure gtk_widget_measure(widget:PGtkWidget; orientation:GtkOrientation; for_size:longint; minimum:Plongint; natural:Plongint; 
              minimum_baseline:Plongint; natural_baseline:Plongint);

  { Zeile entfernt  }
  procedure gtk_widget_get_preferred_size(widget:PGtkWidget; minimum_size:PGtkRequisition; natural_size:PGtkRequisition);

  { Zeile entfernt  }
  procedure gtk_widget_set_layout_manager(widget:PGtkWidget; layout_manager:PGtkLayoutManager);

  { Zeile entfernt  }
  function gtk_widget_get_layout_manager(widget:PGtkWidget):^GtkLayoutManager;

  { Zeile entfernt  }
  procedure gtk_widget_class_set_layout_manager_type(widget_class:PGtkWidgetClass; _type:GType);

  { Zeile entfernt  }
  function gtk_widget_class_get_layout_manager_type(widget_class:PGtkWidgetClass):GType;

  { Zeile entfernt  }
(* Const before type ignored *)
  procedure gtk_widget_class_add_binding(widget_class:PGtkWidgetClass; keyval:guint; mods:GdkModifierType; callback:GtkShortcutFunc; format_string:Pchar; 
              args:array of const);

  { Zeile entfernt  }
(* Const before type ignored *)
(* Const before type ignored *)
  procedure gtk_widget_class_add_binding_signal(widget_class:PGtkWidgetClass; keyval:guint; mods:GdkModifierType; signal:Pchar; format_string:Pchar; 
              args:array of const);

  { Zeile entfernt  }
(* Const before type ignored *)
(* Const before type ignored *)
  procedure gtk_widget_class_add_binding_action(widget_class:PGtkWidgetClass; keyval:guint; mods:GdkModifierType; action_name:Pchar; format_string:Pchar; 
              args:array of const);

  { Zeile entfernt  }
  procedure gtk_widget_class_add_shortcut(widget_class:PGtkWidgetClass; shortcut:PGtkShortcut);

  { Zeile entfernt  }
  procedure gtk_widget_class_set_activate_signal(widget_class:PGtkWidgetClass; signal_id:guint);

  { Zeile entfernt  }
(* Const before type ignored *)
  procedure gtk_widget_class_set_activate_signal_from_name(widget_class:PGtkWidgetClass; signal_name:Pchar);

  { Zeile entfernt  }
  function gtk_widget_class_get_activate_signal(widget_class:PGtkWidgetClass):guint;

  { Zeile entfernt  }
  function gtk_widget_mnemonic_activate(widget:PGtkWidget; group_cycling:gboolean):gboolean;

  { Zeile entfernt  }
  function gtk_widget_activate(widget:PGtkWidget):gboolean;

  { Zeile entfernt  }
  procedure gtk_widget_set_can_focus(widget:PGtkWidget; can_focus:gboolean);

  { Zeile entfernt  }
  function gtk_widget_get_can_focus(widget:PGtkWidget):gboolean;

  { Zeile entfernt  }
  procedure gtk_widget_set_focusable(widget:PGtkWidget; focusable:gboolean);

  { Zeile entfernt  }
  function gtk_widget_get_focusable(widget:PGtkWidget):gboolean;

  { Zeile entfernt  }
  function gtk_widget_has_focus(widget:PGtkWidget):gboolean;

  { Zeile entfernt  }
  function gtk_widget_is_focus(widget:PGtkWidget):gboolean;

  { Zeile entfernt  }
  function gtk_widget_has_visible_focus(widget:PGtkWidget):gboolean;

  { Zeile entfernt  }
  function gtk_widget_grab_focus(widget:PGtkWidget):gboolean;

  { Zeile entfernt  }
  procedure gtk_widget_set_focus_on_click(widget:PGtkWidget; focus_on_click:gboolean);

  { Zeile entfernt  }
  function gtk_widget_get_focus_on_click(widget:PGtkWidget):gboolean;

  { Zeile entfernt  }
  procedure gtk_widget_set_can_target(widget:PGtkWidget; can_target:gboolean);

  { Zeile entfernt  }
  function gtk_widget_get_can_target(widget:PGtkWidget):gboolean;

  { Zeile entfernt  }
  function gtk_widget_has_default(widget:PGtkWidget):gboolean;

  { Zeile entfernt  }
  procedure gtk_widget_set_receives_default(widget:PGtkWidget; receives_default:gboolean);

  { Zeile entfernt  }
  function gtk_widget_get_receives_default(widget:PGtkWidget):gboolean;

  { Zeile entfernt  }
(* Const before type ignored *)
  procedure gtk_widget_set_name(widget:PGtkWidget; name:Pchar);

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_widget_get_name(widget:PGtkWidget):^char;

  { Zeile entfernt  }
  procedure gtk_widget_set_state_flags(widget:PGtkWidget; flags:GtkStateFlags; clear:gboolean);

  { Zeile entfernt  }
  procedure gtk_widget_unset_state_flags(widget:PGtkWidget; flags:GtkStateFlags);

  { Zeile entfernt  }
  function gtk_widget_get_state_flags(widget:PGtkWidget):GtkStateFlags;

  { Zeile entfernt  }
  procedure gtk_widget_set_sensitive(widget:PGtkWidget; sensitive:gboolean);

  { Zeile entfernt  }
  function gtk_widget_get_sensitive(widget:PGtkWidget):gboolean;

  { Zeile entfernt  }
  function gtk_widget_is_sensitive(widget:PGtkWidget):gboolean;

  { Zeile entfernt  }
  procedure gtk_widget_set_visible(widget:PGtkWidget; visible:gboolean);

  { Zeile entfernt  }
  function gtk_widget_get_visible(widget:PGtkWidget):gboolean;

  { Zeile entfernt  }
  function gtk_widget_is_visible(widget:PGtkWidget):gboolean;

  { Zeile entfernt  }
  function gtk_widget_is_drawable(widget:PGtkWidget):gboolean;

  { Zeile entfernt  }
  function gtk_widget_get_realized(widget:PGtkWidget):gboolean;

  { Zeile entfernt  }
  function gtk_widget_get_mapped(widget:PGtkWidget):gboolean;

  { Zeile entfernt  }
  procedure gtk_widget_set_parent(widget:PGtkWidget; parent:PGtkWidget);

  { Zeile entfernt  }
  function gtk_widget_get_parent(widget:PGtkWidget):^GtkWidget;

  { Zeile entfernt  }
  function gtk_widget_get_root(widget:PGtkWidget):^GtkRoot;

  { Zeile entfernt  }
  function gtk_widget_get_native(widget:PGtkWidget):^GtkNative;

  { Zeile entfernt  }
  procedure gtk_widget_set_child_visible(widget:PGtkWidget; child_visible:gboolean);

  { Zeile entfernt  }
  function gtk_widget_get_child_visible(widget:PGtkWidget):gboolean;

  { Zeile entfernt  }
  function gtk_widget_get_allocated_width(widget:PGtkWidget):longint;

  { Zeile entfernt  }
  function gtk_widget_get_allocated_height(widget:PGtkWidget):longint;

  { Zeile entfernt  }
  function gtk_widget_get_allocated_baseline(widget:PGtkWidget):longint;

  { Zeile entfernt  }
  procedure gtk_widget_get_allocation(widget:PGtkWidget; allocation:PGtkAllocation);

  { Zeile entfernt  }
(* error 
                                                                 graphene_matrix_t      *out_transform) G_GNUC_WARN_UNUSED_RESULT;
 in declarator_list *)

    var
 : gboolean;
  { Zeile entfernt  }
(* error 
                                                                 graphene_rect_t        *out_bounds) G_GNUC_WARN_UNUSED_RESULT;
 in declarator_list *)
 : gboolean;
  { Zeile entfernt  }
(* Const before type ignored *)
(* error 
                                                                 graphene_point_t       *out_point) G_GNUC_WARN_UNUSED_RESULT;
 in declarator_list *)
 : gboolean;
  { Zeile entfernt  }

  function gtk_widget_get_width(widget:PGtkWidget):longint;

  { Zeile entfernt  }
  function gtk_widget_get_height(widget:PGtkWidget):longint;

  { Zeile entfernt  }
  function gtk_widget_get_size(widget:PGtkWidget; orientation:GtkOrientation):longint;

  { Zeile entfernt  }
  function gtk_widget_child_focus(widget:PGtkWidget; direction:GtkDirectionType):gboolean;

  { Zeile entfernt  }
  function gtk_widget_keynav_failed(widget:PGtkWidget; direction:GtkDirectionType):gboolean;

  { Zeile entfernt  }
  procedure gtk_widget_error_bell(widget:PGtkWidget);

  { Zeile entfernt  }
  procedure gtk_widget_set_size_request(widget:PGtkWidget; width:longint; height:longint);

  { Zeile entfernt  }
  procedure gtk_widget_get_size_request(widget:PGtkWidget; width:Plongint; height:Plongint);

  { Zeile entfernt  }
  procedure gtk_widget_set_opacity(widget:PGtkWidget; opacity:double);

  { Zeile entfernt  }
  function gtk_widget_get_opacity(widget:PGtkWidget):double;

  { Zeile entfernt  }
  procedure gtk_widget_set_overflow(widget:PGtkWidget; overflow:GtkOverflow);

  { Zeile entfernt  }
  function gtk_widget_get_overflow(widget:PGtkWidget):GtkOverflow;

  { Zeile entfernt  }
  function gtk_widget_get_ancestor(widget:PGtkWidget; widget_type:GType):^GtkWidget;

  { Zeile entfernt  }
  function gtk_widget_get_scale_factor(widget:PGtkWidget):longint;

  { Zeile entfernt  }
  function gtk_widget_get_display(widget:PGtkWidget):^GdkDisplay;

  { Zeile entfernt  }
  function gtk_widget_get_settings(widget:PGtkWidget):^GtkSettings;

  { Zeile entfernt  }
  function gtk_widget_get_clipboard(widget:PGtkWidget):^GdkClipboard;

  { Zeile entfernt  }
  function gtk_widget_get_primary_clipboard(widget:PGtkWidget):^GdkClipboard;

  { Expand flags and related support  }
  { Zeile entfernt  }
  function gtk_widget_get_hexpand(widget:PGtkWidget):gboolean;

  { Zeile entfernt  }
  procedure gtk_widget_set_hexpand(widget:PGtkWidget; expand:gboolean);

  { Zeile entfernt  }
  function gtk_widget_get_hexpand_set(widget:PGtkWidget):gboolean;

  { Zeile entfernt  }
  procedure gtk_widget_set_hexpand_set(widget:PGtkWidget; set:gboolean);

  { Zeile entfernt  }
  function gtk_widget_get_vexpand(widget:PGtkWidget):gboolean;

  { Zeile entfernt  }
  procedure gtk_widget_set_vexpand(widget:PGtkWidget; expand:gboolean);

  { Zeile entfernt  }
  function gtk_widget_get_vexpand_set(widget:PGtkWidget):gboolean;

  { Zeile entfernt  }
  procedure gtk_widget_set_vexpand_set(widget:PGtkWidget; set:gboolean);

  { Zeile entfernt  }
  function gtk_widget_compute_expand(widget:PGtkWidget; orientation:GtkOrientation):gboolean;

  { Margin and alignment  }
  { Zeile entfernt  }
  function gtk_widget_get_halign(widget:PGtkWidget):GtkAlign;

  { Zeile entfernt  }
  procedure gtk_widget_set_halign(widget:PGtkWidget; align:GtkAlign);

  { Zeile entfernt  }
  function gtk_widget_get_valign(widget:PGtkWidget):GtkAlign;

  { Zeile entfernt  }
  procedure gtk_widget_set_valign(widget:PGtkWidget; align:GtkAlign);

  { Zeile entfernt  }
  function gtk_widget_get_margin_start(widget:PGtkWidget):longint;

  { Zeile entfernt  }
  procedure gtk_widget_set_margin_start(widget:PGtkWidget; margin:longint);

  { Zeile entfernt  }
  function gtk_widget_get_margin_end(widget:PGtkWidget):longint;

  { Zeile entfernt  }
  procedure gtk_widget_set_margin_end(widget:PGtkWidget; margin:longint);

  { Zeile entfernt  }
  function gtk_widget_get_margin_top(widget:PGtkWidget):longint;

  { Zeile entfernt  }
  procedure gtk_widget_set_margin_top(widget:PGtkWidget; margin:longint);

  { Zeile entfernt  }
  function gtk_widget_get_margin_bottom(widget:PGtkWidget):longint;

  { Zeile entfernt  }
  procedure gtk_widget_set_margin_bottom(widget:PGtkWidget; margin:longint);

  { Zeile entfernt  }
  function gtk_widget_is_ancestor(widget:PGtkWidget; ancestor:PGtkWidget):gboolean;

  { Zeile entfernt  }
  function gtk_widget_translate_coordinates(src_widget:PGtkWidget; dest_widget:PGtkWidget; src_x:double; src_y:double; dest_x:Pdouble; 
             dest_y:Pdouble):gboolean;

  { Zeile entfernt  }
  function gtk_widget_contains(widget:PGtkWidget; x:double; y:double):gboolean;

  { Zeile entfernt  }
  function gtk_widget_pick(widget:PGtkWidget; x:double; y:double; flags:GtkPickFlags):^GtkWidget;

  { Zeile entfernt  }
  procedure gtk_widget_add_controller(widget:PGtkWidget; controller:PGtkEventController);

  { Zeile entfernt  }
  procedure gtk_widget_remove_controller(widget:PGtkWidget; controller:PGtkEventController);

  { Zeile entfernt  }
  function gtk_widget_create_pango_context(widget:PGtkWidget):^PangoContext;

  { Zeile entfernt  }
  function gtk_widget_get_pango_context(widget:PGtkWidget):^PangoContext;

  { Zeile entfernt  }
(* Const before type ignored *)
  procedure gtk_widget_set_font_options(widget:PGtkWidget; options:Pcairo_font_options_t);

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_widget_get_font_options(widget:PGtkWidget):^cairo_font_options_t;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_widget_create_pango_layout(widget:PGtkWidget; text:Pchar):^PangoLayout;

  { Functions for setting directionality for widgets  }
  { Zeile entfernt  }
  procedure gtk_widget_set_direction(widget:PGtkWidget; dir:GtkTextDirection);

  { Zeile entfernt  }
  function gtk_widget_get_direction(widget:PGtkWidget):GtkTextDirection;

  { Zeile entfernt  }
  procedure gtk_widget_set_default_direction(dir:GtkTextDirection);

  { Zeile entfernt  }
  function gtk_widget_get_default_direction:GtkTextDirection;

  { Zeile entfernt  }
  procedure gtk_widget_set_cursor(widget:PGtkWidget; cursor:PGdkCursor);

  { Zeile entfernt  }
(* Const before type ignored *)
  procedure gtk_widget_set_cursor_from_name(widget:PGtkWidget; name:Pchar);

  { Zeile entfernt  }
  function gtk_widget_get_cursor(widget:PGtkWidget):^GdkCursor;

  { Zeile entfernt  }
  function gtk_widget_list_mnemonic_labels(widget:PGtkWidget):^GList;

  { Zeile entfernt  }
  procedure gtk_widget_add_mnemonic_label(widget:PGtkWidget; _label:PGtkWidget);

  { Zeile entfernt  }
  procedure gtk_widget_remove_mnemonic_label(widget:PGtkWidget; _label:PGtkWidget);

  { Zeile entfernt  }
  procedure gtk_widget_trigger_tooltip_query(widget:PGtkWidget);

  { Zeile entfernt  }
(* Const before type ignored *)
  procedure gtk_widget_set_tooltip_text(widget:PGtkWidget; text:Pchar);

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_widget_get_tooltip_text(widget:PGtkWidget):^char;

  { Zeile entfernt  }
(* Const before type ignored *)
  procedure gtk_widget_set_tooltip_markup(widget:PGtkWidget; markup:Pchar);

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_widget_get_tooltip_markup(widget:PGtkWidget):^char;

  { Zeile entfernt  }
  procedure gtk_widget_set_has_tooltip(widget:PGtkWidget; has_tooltip:gboolean);

  { Zeile entfernt  }
  function gtk_widget_get_has_tooltip(widget:PGtkWidget):gboolean;

  { Zeile entfernt  }
  function gtk_requisition_get_type:GType;

  { Zeile entfernt  }
(* error 
GtkRequisition *gtk_requisition_new      (void) G_GNUC_MALLOC;
 in declarator_list *)

    var
 : GtkRequisition;
  { Zeile entfernt  }
(* Const before type ignored *)

  function gtk_requisition_copy(requisition:PGtkRequisition):^GtkRequisition;

  { Zeile entfernt  }
  procedure gtk_requisition_free(requisition:PGtkRequisition);

  { Zeile entfernt  }
  function gtk_widget_in_destruction(widget:PGtkWidget):gboolean;

  { Zeile entfernt  }
  function gtk_widget_get_style_context(widget:PGtkWidget):^GtkStyleContext;

  { Zeile entfernt  }
(* Const before type ignored *)
  procedure gtk_widget_class_set_css_name(widget_class:PGtkWidgetClass; name:Pchar);

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_widget_class_get_css_name(widget_class:PGtkWidgetClass):^char;

  { Zeile entfernt  }
  function gtk_widget_add_tick_callback(widget:PGtkWidget; callback:GtkTickCallback; user_data:gpointer; notify:GDestroyNotify):guint;

  { Zeile entfernt  }
  procedure gtk_widget_remove_tick_callback(widget:PGtkWidget; id:guint);

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
(* error 
                                                #callback, \
in define line 743 *)
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
(* error 
                                             #member_name, \
in define line 763 *)
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
(* error 
                                             #member_name, \
in define line 785 *)
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
(* error 
                                             #member_name, \
in define line 806 *)
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
(* error 
                                             #member_name, \
in define line 828 *)
    { Zeile entfernt  }
    procedure gtk_widget_init_template(widget:PGtkWidget);

    { Zeile entfernt  }
(* Const before type ignored *)
    function gtk_widget_get_template_child(widget:PGtkWidget; widget_type:GType; name:Pchar):^GObject;

(* error 
void    gtk_widget_dispose_template                     (GtkWidget             *widget,
in declaration at line 838 *)
    { Zeile entfernt  }
    procedure gtk_widget_class_set_template(widget_class:PGtkWidgetClass; template_bytes:PGBytes);

    { Zeile entfernt  }
(* Const before type ignored *)
    procedure gtk_widget_class_set_template_from_resource(widget_class:PGtkWidgetClass; resource_name:Pchar);

    { Zeile entfernt  }
(* Const before type ignored *)
    procedure gtk_widget_class_bind_template_callback_full(widget_class:PGtkWidgetClass; callback_name:Pchar; callback_symbol:GCallback);

    { Zeile entfernt  }
    procedure gtk_widget_class_set_template_scope(widget_class:PGtkWidgetClass; scope:PGtkBuilderScope);

    { Zeile entfernt  }
(* Const before type ignored *)
    procedure gtk_widget_class_bind_template_child_full(widget_class:PGtkWidgetClass; name:Pchar; internal_child:gboolean; struct_offset:gssize);

    { Zeile entfernt  }
(* Const before type ignored *)
    procedure gtk_widget_insert_action_group(widget:PGtkWidget; name:Pchar; group:PGActionGroup);

    { Zeile entfernt  }
(* Const before type ignored *)
(* Const before type ignored *)
    function gtk_widget_activate_action(widget:PGtkWidget; name:Pchar; format_string:Pchar; args:array of const):gboolean;

    { Zeile entfernt  }
(* Const before type ignored *)
    function gtk_widget_activate_action_variant(widget:PGtkWidget; name:Pchar; args:PGVariant):gboolean;

    { Zeile entfernt  }
    procedure gtk_widget_activate_default(widget:PGtkWidget);

    { Zeile entfernt  }
    procedure gtk_widget_set_font_map(widget:PGtkWidget; font_map:PPangoFontMap);

    { Zeile entfernt  }
    function gtk_widget_get_font_map(widget:PGtkWidget):^PangoFontMap;

    { Zeile entfernt  }
    function gtk_widget_get_first_child(widget:PGtkWidget):^GtkWidget;

    { Zeile entfernt  }
    function gtk_widget_get_last_child(widget:PGtkWidget):^GtkWidget;

    { Zeile entfernt  }
    function gtk_widget_get_next_sibling(widget:PGtkWidget):^GtkWidget;

    { Zeile entfernt  }
    function gtk_widget_get_prev_sibling(widget:PGtkWidget):^GtkWidget;

    { Zeile entfernt  }
    function gtk_widget_observe_children(widget:PGtkWidget):^GListModel;

    { Zeile entfernt  }
    function gtk_widget_observe_controllers(widget:PGtkWidget):^GListModel;

    { Zeile entfernt  }
    procedure gtk_widget_insert_after(widget:PGtkWidget; parent:PGtkWidget; previous_sibling:PGtkWidget);

    { Zeile entfernt  }
    procedure gtk_widget_insert_before(widget:PGtkWidget; parent:PGtkWidget; next_sibling:PGtkWidget);

    { Zeile entfernt  }
    procedure gtk_widget_set_focus_child(widget:PGtkWidget; child:PGtkWidget);

    { Zeile entfernt  }
    function gtk_widget_get_focus_child(widget:PGtkWidget):^GtkWidget;

    { Zeile entfernt  }
    procedure gtk_widget_snapshot_child(widget:PGtkWidget; child:PGtkWidget; snapshot:PGtkSnapshot);

    { Zeile entfernt  }
    function gtk_widget_should_layout(widget:PGtkWidget):gboolean;

    { Zeile entfernt  }
(* Const before type ignored *)
    function gtk_widget_get_css_name(self:PGtkWidget):^char;

    { Zeile entfernt  }
(* Const before type ignored *)
    procedure gtk_widget_add_css_class(widget:PGtkWidget; css_class:Pchar);

    { Zeile entfernt  }
(* Const before type ignored *)
    procedure gtk_widget_remove_css_class(widget:PGtkWidget; css_class:Pchar);

    { Zeile entfernt  }
(* Const before type ignored *)
    function gtk_widget_has_css_class(widget:PGtkWidget; css_class:Pchar):gboolean;

    { Zeile entfernt  }
    function gtk_widget_get_css_classes(widget:PGtkWidget):^^char;

    { Zeile entfernt  }
(* Const before type ignored *)
    procedure gtk_widget_set_css_classes(widget:PGtkWidget; classes:PPchar);

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

      GtkWidgetActionActivateFunc = procedure (widget:PGtkWidget; action_name:Pchar; parameter:PGVariant);cdecl;
    { Zeile entfernt  }
(* Const before type ignored *)
(* Const before type ignored *)

    procedure gtk_widget_class_install_action(widget_class:PGtkWidgetClass; action_name:Pchar; parameter_type:Pchar; activate:GtkWidgetActionActivateFunc);

    { Zeile entfernt  }
(* Const before type ignored *)
(* Const before type ignored *)
    procedure gtk_widget_class_install_property_action(widget_class:PGtkWidgetClass; action_name:Pchar; property_name:Pchar);

    { Zeile entfernt  }
(* Const before type ignored *)
(* Const before type ignored *)
(* Const before type ignored *)
    function gtk_widget_class_query_action(widget_class:PGtkWidgetClass; index_:guint; owner:PGType; action_name:PPchar; parameter_type:PPGVariantType; 
               property_name:PPchar):gboolean;

    { Zeile entfernt  }
(* Const before type ignored *)
    procedure gtk_widget_action_set_enabled(widget:PGtkWidget; action_name:Pchar; enabled:gboolean);

    { Zeile entfernt  }
    procedure gtk_widget_class_set_accessible_role(widget_class:PGtkWidgetClass; accessible_role:GtkAccessibleRole);

    { Zeile entfernt  }
    function gtk_widget_class_get_accessible_role(widget_class:PGtkWidgetClass):GtkAccessibleRole;

    { Zeile entfernt  }
    { Zeile entfernt  }
    { Zeile entfernt  }
{$endif}
    { __GTK_WIDGET_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_WIDGET : longint; { return type might be wrong }
    begin
      GTK_TYPE_WIDGET:=gtk_widget_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_WIDGET(widget : longint) : longint;
  begin
    GTK_WIDGET:=G_TYPE_CHECK_INSTANCE_CAST(widget,GTK_TYPE_WIDGET,GtkWidget);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_WIDGET_CLASS(klass : longint) : longint;
  begin
    GTK_WIDGET_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_WIDGET,GtkWidgetClass);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_WIDGET(widget : longint) : longint;
  begin
    GTK_IS_WIDGET:=G_TYPE_CHECK_INSTANCE_TYPE(widget,GTK_TYPE_WIDGET);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_WIDGET_CLASS(klass : longint) : longint;
  begin
    GTK_IS_WIDGET_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_WIDGET);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_WIDGET_GET_CLASS(obj : longint) : longint;
  begin
    GTK_WIDGET_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_WIDGET,GtkWidgetClass);
  end;

  { was #define dname def_expr }
  function GTK_TYPE_REQUISITION : longint; { return type might be wrong }
    begin
      GTK_TYPE_REQUISITION:=gtk_requisition_get_type;
    end;

  function gtk_widget_get_type:GType;
  begin
    { You must implement this function }
  end;
  procedure gtk_widget_unparent(widget:PGtkWidget);
  begin
    { You must implement this function }
  end;
  procedure gtk_widget_show(widget:PGtkWidget);
  begin
    { You must implement this function }
  end;
  procedure gtk_widget_hide(widget:PGtkWidget);
  begin
    { You must implement this function }
  end;
  procedure gtk_widget_map(widget:PGtkWidget);
  begin
    { You must implement this function }
  end;
  procedure gtk_widget_unmap(widget:PGtkWidget);
  begin
    { You must implement this function }
  end;
  procedure gtk_widget_realize(widget:PGtkWidget);
  begin
    { You must implement this function }
  end;
  procedure gtk_widget_unrealize(widget:PGtkWidget);
  begin
    { You must implement this function }
  end;
  procedure gtk_widget_queue_draw(widget:PGtkWidget);
  begin
    { You must implement this function }
  end;
  procedure gtk_widget_queue_resize(widget:PGtkWidget);
  begin
    { You must implement this function }
  end;
  procedure gtk_widget_queue_allocate(widget:PGtkWidget);
  begin
    { You must implement this function }
  end;
  function gtk_widget_get_frame_clock(widget:PGtkWidget):PGdkFrameClock;
  begin
    { You must implement this function }
  end;
  procedure gtk_widget_size_allocate(widget:PGtkWidget; allocation:PGtkAllocation; baseline:longint);
  begin
    { You must implement this function }
  end;
  procedure gtk_widget_allocate(widget:PGtkWidget; width:longint; height:longint; baseline:longint; transform:PGskTransform);
  begin
    { You must implement this function }
  end;
  function gtk_widget_get_request_mode(widget:PGtkWidget):GtkSizeRequestMode;
  begin
    { You must implement this function }
  end;
  procedure gtk_widget_measure(widget:PGtkWidget; orientation:GtkOrientation; for_size:longint; minimum:Plongint; natural:Plongint; 
              minimum_baseline:Plongint; natural_baseline:Plongint);
  begin
    { You must implement this function }
  end;
  procedure gtk_widget_get_preferred_size(widget:PGtkWidget; minimum_size:PGtkRequisition; natural_size:PGtkRequisition);
  begin
    { You must implement this function }
  end;
  procedure gtk_widget_set_layout_manager(widget:PGtkWidget; layout_manager:PGtkLayoutManager);
  begin
    { You must implement this function }
  end;
  function gtk_widget_get_layout_manager(widget:PGtkWidget):PGtkLayoutManager;
  begin
    { You must implement this function }
  end;
  procedure gtk_widget_class_set_layout_manager_type(widget_class:PGtkWidgetClass; _type:GType);
  begin
    { You must implement this function }
  end;
  function gtk_widget_class_get_layout_manager_type(widget_class:PGtkWidgetClass):GType;
  begin
    { You must implement this function }
  end;
  procedure gtk_widget_class_add_binding(widget_class:PGtkWidgetClass; keyval:guint; mods:GdkModifierType; callback:GtkShortcutFunc; format_string:Pchar);
  begin
    { You must implement this function }
  end;
  procedure gtk_widget_class_add_binding_signal(widget_class:PGtkWidgetClass; keyval:guint; mods:GdkModifierType; signal:Pchar; format_string:Pchar);
  begin
    { You must implement this function }
  end;
  procedure gtk_widget_class_add_binding_action(widget_class:PGtkWidgetClass; keyval:guint; mods:GdkModifierType; action_name:Pchar; format_string:Pchar);
  begin
    { You must implement this function }
  end;
  procedure gtk_widget_class_add_shortcut(widget_class:PGtkWidgetClass; shortcut:PGtkShortcut);
  begin
    { You must implement this function }
  end;
  procedure gtk_widget_class_set_activate_signal(widget_class:PGtkWidgetClass; signal_id:guint);
  begin
    { You must implement this function }
  end;
  procedure gtk_widget_class_set_activate_signal_from_name(widget_class:PGtkWidgetClass; signal_name:Pchar);
  begin
    { You must implement this function }
  end;
  function gtk_widget_class_get_activate_signal(widget_class:PGtkWidgetClass):guint;
  begin
    { You must implement this function }
  end;
  function gtk_widget_mnemonic_activate(widget:PGtkWidget; group_cycling:gboolean):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_widget_activate(widget:PGtkWidget):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_widget_set_can_focus(widget:PGtkWidget; can_focus:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_widget_get_can_focus(widget:PGtkWidget):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_widget_set_focusable(widget:PGtkWidget; focusable:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_widget_get_focusable(widget:PGtkWidget):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_widget_has_focus(widget:PGtkWidget):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_widget_is_focus(widget:PGtkWidget):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_widget_has_visible_focus(widget:PGtkWidget):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_widget_grab_focus(widget:PGtkWidget):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_widget_set_focus_on_click(widget:PGtkWidget; focus_on_click:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_widget_get_focus_on_click(widget:PGtkWidget):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_widget_set_can_target(widget:PGtkWidget; can_target:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_widget_get_can_target(widget:PGtkWidget):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_widget_has_default(widget:PGtkWidget):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_widget_set_receives_default(widget:PGtkWidget; receives_default:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_widget_get_receives_default(widget:PGtkWidget):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_widget_set_name(widget:PGtkWidget; name:Pchar);
  begin
    { You must implement this function }
  end;
  function gtk_widget_get_name(widget:PGtkWidget):Pchar;
  begin
    { You must implement this function }
  end;
  procedure gtk_widget_set_state_flags(widget:PGtkWidget; flags:GtkStateFlags; clear:gboolean);
  begin
    { You must implement this function }
  end;
  procedure gtk_widget_unset_state_flags(widget:PGtkWidget; flags:GtkStateFlags);
  begin
    { You must implement this function }
  end;
  function gtk_widget_get_state_flags(widget:PGtkWidget):GtkStateFlags;
  begin
    { You must implement this function }
  end;
  procedure gtk_widget_set_sensitive(widget:PGtkWidget; sensitive:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_widget_get_sensitive(widget:PGtkWidget):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_widget_is_sensitive(widget:PGtkWidget):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_widget_set_visible(widget:PGtkWidget; visible:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_widget_get_visible(widget:PGtkWidget):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_widget_is_visible(widget:PGtkWidget):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_widget_is_drawable(widget:PGtkWidget):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_widget_get_realized(widget:PGtkWidget):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_widget_get_mapped(widget:PGtkWidget):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_widget_set_parent(widget:PGtkWidget; parent:PGtkWidget);
  begin
    { You must implement this function }
  end;
  function gtk_widget_get_parent(widget:PGtkWidget):PGtkWidget;
  begin
    { You must implement this function }
  end;
  function gtk_widget_get_root(widget:PGtkWidget):PGtkRoot;
  begin
    { You must implement this function }
  end;
  function gtk_widget_get_native(widget:PGtkWidget):PGtkNative;
  begin
    { You must implement this function }
  end;
  procedure gtk_widget_set_child_visible(widget:PGtkWidget; child_visible:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_widget_get_child_visible(widget:PGtkWidget):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_widget_get_allocated_width(widget:PGtkWidget):longint;
  begin
    { You must implement this function }
  end;
  function gtk_widget_get_allocated_height(widget:PGtkWidget):longint;
  begin
    { You must implement this function }
  end;
  function gtk_widget_get_allocated_baseline(widget:PGtkWidget):longint;
  begin
    { You must implement this function }
  end;
  procedure gtk_widget_get_allocation(widget:PGtkWidget; allocation:PGtkAllocation);
  begin
    { You must implement this function }
  end;
  function gtk_widget_get_width(widget:PGtkWidget):longint;
  begin
    { You must implement this function }
  end;
  function gtk_widget_get_height(widget:PGtkWidget):longint;
  begin
    { You must implement this function }
  end;
  function gtk_widget_get_size(widget:PGtkWidget; orientation:GtkOrientation):longint;
  begin
    { You must implement this function }
  end;
  function gtk_widget_child_focus(widget:PGtkWidget; direction:GtkDirectionType):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_widget_keynav_failed(widget:PGtkWidget; direction:GtkDirectionType):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_widget_error_bell(widget:PGtkWidget);
  begin
    { You must implement this function }
  end;
  procedure gtk_widget_set_size_request(widget:PGtkWidget; width:longint; height:longint);
  begin
    { You must implement this function }
  end;
  procedure gtk_widget_get_size_request(widget:PGtkWidget; width:Plongint; height:Plongint);
  begin
    { You must implement this function }
  end;
  procedure gtk_widget_set_opacity(widget:PGtkWidget; opacity:double);
  begin
    { You must implement this function }
  end;
  function gtk_widget_get_opacity(widget:PGtkWidget):double;
  begin
    { You must implement this function }
  end;
  procedure gtk_widget_set_overflow(widget:PGtkWidget; overflow:GtkOverflow);
  begin
    { You must implement this function }
  end;
  function gtk_widget_get_overflow(widget:PGtkWidget):GtkOverflow;
  begin
    { You must implement this function }
  end;
  function gtk_widget_get_ancestor(widget:PGtkWidget; widget_type:GType):PGtkWidget;
  begin
    { You must implement this function }
  end;
  function gtk_widget_get_scale_factor(widget:PGtkWidget):longint;
  begin
    { You must implement this function }
  end;
  function gtk_widget_get_display(widget:PGtkWidget):PGdkDisplay;
  begin
    { You must implement this function }
  end;
  function gtk_widget_get_settings(widget:PGtkWidget):PGtkSettings;
  begin
    { You must implement this function }
  end;
  function gtk_widget_get_clipboard(widget:PGtkWidget):PGdkClipboard;
  begin
    { You must implement this function }
  end;
  function gtk_widget_get_primary_clipboard(widget:PGtkWidget):PGdkClipboard;
  begin
    { You must implement this function }
  end;
  function gtk_widget_get_hexpand(widget:PGtkWidget):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_widget_set_hexpand(widget:PGtkWidget; expand:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_widget_get_hexpand_set(widget:PGtkWidget):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_widget_set_hexpand_set(widget:PGtkWidget; set:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_widget_get_vexpand(widget:PGtkWidget):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_widget_set_vexpand(widget:PGtkWidget; expand:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_widget_get_vexpand_set(widget:PGtkWidget):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_widget_set_vexpand_set(widget:PGtkWidget; set:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_widget_compute_expand(widget:PGtkWidget; orientation:GtkOrientation):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_widget_get_halign(widget:PGtkWidget):GtkAlign;
  begin
    { You must implement this function }
  end;
  procedure gtk_widget_set_halign(widget:PGtkWidget; align:GtkAlign);
  begin
    { You must implement this function }
  end;
  function gtk_widget_get_valign(widget:PGtkWidget):GtkAlign;
  begin
    { You must implement this function }
  end;
  procedure gtk_widget_set_valign(widget:PGtkWidget; align:GtkAlign);
  begin
    { You must implement this function }
  end;
  function gtk_widget_get_margin_start(widget:PGtkWidget):longint;
  begin
    { You must implement this function }
  end;
  procedure gtk_widget_set_margin_start(widget:PGtkWidget; margin:longint);
  begin
    { You must implement this function }
  end;
  function gtk_widget_get_margin_end(widget:PGtkWidget):longint;
  begin
    { You must implement this function }
  end;
  procedure gtk_widget_set_margin_end(widget:PGtkWidget; margin:longint);
  begin
    { You must implement this function }
  end;
  function gtk_widget_get_margin_top(widget:PGtkWidget):longint;
  begin
    { You must implement this function }
  end;
  procedure gtk_widget_set_margin_top(widget:PGtkWidget; margin:longint);
  begin
    { You must implement this function }
  end;
  function gtk_widget_get_margin_bottom(widget:PGtkWidget):longint;
  begin
    { You must implement this function }
  end;
  procedure gtk_widget_set_margin_bottom(widget:PGtkWidget; margin:longint);
  begin
    { You must implement this function }
  end;
  function gtk_widget_is_ancestor(widget:PGtkWidget; ancestor:PGtkWidget):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_widget_translate_coordinates(src_widget:PGtkWidget; dest_widget:PGtkWidget; src_x:double; src_y:double; dest_x:Pdouble; 
             dest_y:Pdouble):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_widget_contains(widget:PGtkWidget; x:double; y:double):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_widget_pick(widget:PGtkWidget; x:double; y:double; flags:GtkPickFlags):PGtkWidget;
  begin
    { You must implement this function }
  end;
  procedure gtk_widget_add_controller(widget:PGtkWidget; controller:PGtkEventController);
  begin
    { You must implement this function }
  end;
  procedure gtk_widget_remove_controller(widget:PGtkWidget; controller:PGtkEventController);
  begin
    { You must implement this function }
  end;
  function gtk_widget_create_pango_context(widget:PGtkWidget):PPangoContext;
  begin
    { You must implement this function }
  end;
  function gtk_widget_get_pango_context(widget:PGtkWidget):PPangoContext;
  begin
    { You must implement this function }
  end;
  procedure gtk_widget_set_font_options(widget:PGtkWidget; options:Pcairo_font_options_t);
  begin
    { You must implement this function }
  end;
  function gtk_widget_get_font_options(widget:PGtkWidget):Pcairo_font_options_t;
  begin
    { You must implement this function }
  end;
  function gtk_widget_create_pango_layout(widget:PGtkWidget; text:Pchar):PPangoLayout;
  begin
    { You must implement this function }
  end;
  procedure gtk_widget_set_direction(widget:PGtkWidget; dir:GtkTextDirection);
  begin
    { You must implement this function }
  end;
  function gtk_widget_get_direction(widget:PGtkWidget):GtkTextDirection;
  begin
    { You must implement this function }
  end;
  procedure gtk_widget_set_default_direction(dir:GtkTextDirection);
  begin
    { You must implement this function }
  end;
  function gtk_widget_get_default_direction:GtkTextDirection;
  begin
    { You must implement this function }
  end;
  procedure gtk_widget_set_cursor(widget:PGtkWidget; cursor:PGdkCursor);
  begin
    { You must implement this function }
  end;
  procedure gtk_widget_set_cursor_from_name(widget:PGtkWidget; name:Pchar);
  begin
    { You must implement this function }
  end;
  function gtk_widget_get_cursor(widget:PGtkWidget):PGdkCursor;
  begin
    { You must implement this function }
  end;
  function gtk_widget_list_mnemonic_labels(widget:PGtkWidget):PGList;
  begin
    { You must implement this function }
  end;
  procedure gtk_widget_add_mnemonic_label(widget:PGtkWidget; _label:PGtkWidget);
  begin
    { You must implement this function }
  end;
  procedure gtk_widget_remove_mnemonic_label(widget:PGtkWidget; _label:PGtkWidget);
  begin
    { You must implement this function }
  end;
  procedure gtk_widget_trigger_tooltip_query(widget:PGtkWidget);
  begin
    { You must implement this function }
  end;
  procedure gtk_widget_set_tooltip_text(widget:PGtkWidget; text:Pchar);
  begin
    { You must implement this function }
  end;
  function gtk_widget_get_tooltip_text(widget:PGtkWidget):Pchar;
  begin
    { You must implement this function }
  end;
  procedure gtk_widget_set_tooltip_markup(widget:PGtkWidget; markup:Pchar);
  begin
    { You must implement this function }
  end;
  function gtk_widget_get_tooltip_markup(widget:PGtkWidget):Pchar;
  begin
    { You must implement this function }
  end;
  procedure gtk_widget_set_has_tooltip(widget:PGtkWidget; has_tooltip:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_widget_get_has_tooltip(widget:PGtkWidget):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_requisition_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gtk_requisition_copy(requisition:PGtkRequisition):PGtkRequisition;
  begin
    { You must implement this function }
  end;
  procedure gtk_requisition_free(requisition:PGtkRequisition);
  begin
    { You must implement this function }
  end;
  function gtk_widget_in_destruction(widget:PGtkWidget):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_widget_get_style_context(widget:PGtkWidget):PGtkStyleContext;
  begin
    { You must implement this function }
  end;
  procedure gtk_widget_class_set_css_name(widget_class:PGtkWidgetClass; name:Pchar);
  begin
    { You must implement this function }
  end;
  function gtk_widget_class_get_css_name(widget_class:PGtkWidgetClass):Pchar;
  begin
    { You must implement this function }
  end;
  function gtk_widget_add_tick_callback(widget:PGtkWidget; callback:GtkTickCallback; user_data:gpointer; notify:GDestroyNotify):guint;
  begin
    { You must implement this function }
  end;
  procedure gtk_widget_remove_tick_callback(widget:PGtkWidget; id:guint);
  begin
    { You must implement this function }
  end;
    procedure gtk_widget_init_template(widget:PGtkWidget);
    begin
      { You must implement this function }
    end;
    function gtk_widget_get_template_child(widget:PGtkWidget; widget_type:GType; name:Pchar):PGObject;
    begin
      { You must implement this function }
    end;
    procedure gtk_widget_class_set_template(widget_class:PGtkWidgetClass; template_bytes:PGBytes);
    begin
      { You must implement this function }
    end;
    procedure gtk_widget_class_set_template_from_resource(widget_class:PGtkWidgetClass; resource_name:Pchar);
    begin
      { You must implement this function }
    end;
    procedure gtk_widget_class_bind_template_callback_full(widget_class:PGtkWidgetClass; callback_name:Pchar; callback_symbol:GCallback);
    begin
      { You must implement this function }
    end;
    procedure gtk_widget_class_set_template_scope(widget_class:PGtkWidgetClass; scope:PGtkBuilderScope);
    begin
      { You must implement this function }
    end;
    procedure gtk_widget_class_bind_template_child_full(widget_class:PGtkWidgetClass; name:Pchar; internal_child:gboolean; struct_offset:gssize);
    begin
      { You must implement this function }
    end;
    procedure gtk_widget_insert_action_group(widget:PGtkWidget; name:Pchar; group:PGActionGroup);
    begin
      { You must implement this function }
    end;
    function gtk_widget_activate_action(widget:PGtkWidget; name:Pchar; format_string:Pchar):gboolean;
    begin
      { You must implement this function }
    end;
    function gtk_widget_activate_action_variant(widget:PGtkWidget; name:Pchar; args:PGVariant):gboolean;
    begin
      { You must implement this function }
    end;
    procedure gtk_widget_activate_default(widget:PGtkWidget);
    begin
      { You must implement this function }
    end;
    procedure gtk_widget_set_font_map(widget:PGtkWidget; font_map:PPangoFontMap);
    begin
      { You must implement this function }
    end;
    function gtk_widget_get_font_map(widget:PGtkWidget):PPangoFontMap;
    begin
      { You must implement this function }
    end;
    function gtk_widget_get_first_child(widget:PGtkWidget):PGtkWidget;
    begin
      { You must implement this function }
    end;
    function gtk_widget_get_last_child(widget:PGtkWidget):PGtkWidget;
    begin
      { You must implement this function }
    end;
    function gtk_widget_get_next_sibling(widget:PGtkWidget):PGtkWidget;
    begin
      { You must implement this function }
    end;
    function gtk_widget_get_prev_sibling(widget:PGtkWidget):PGtkWidget;
    begin
      { You must implement this function }
    end;
    function gtk_widget_observe_children(widget:PGtkWidget):PGListModel;
    begin
      { You must implement this function }
    end;
    function gtk_widget_observe_controllers(widget:PGtkWidget):PGListModel;
    begin
      { You must implement this function }
    end;
    procedure gtk_widget_insert_after(widget:PGtkWidget; parent:PGtkWidget; previous_sibling:PGtkWidget);
    begin
      { You must implement this function }
    end;
    procedure gtk_widget_insert_before(widget:PGtkWidget; parent:PGtkWidget; next_sibling:PGtkWidget);
    begin
      { You must implement this function }
    end;
    procedure gtk_widget_set_focus_child(widget:PGtkWidget; child:PGtkWidget);
    begin
      { You must implement this function }
    end;
    function gtk_widget_get_focus_child(widget:PGtkWidget):PGtkWidget;
    begin
      { You must implement this function }
    end;
    procedure gtk_widget_snapshot_child(widget:PGtkWidget; child:PGtkWidget; snapshot:PGtkSnapshot);
    begin
      { You must implement this function }
    end;
    function gtk_widget_should_layout(widget:PGtkWidget):gboolean;
    begin
      { You must implement this function }
    end;
    function gtk_widget_get_css_name(self:PGtkWidget):Pchar;
    begin
      { You must implement this function }
    end;
    procedure gtk_widget_add_css_class(widget:PGtkWidget; css_class:Pchar);
    begin
      { You must implement this function }
    end;
    procedure gtk_widget_remove_css_class(widget:PGtkWidget; css_class:Pchar);
    begin
      { You must implement this function }
    end;
    function gtk_widget_has_css_class(widget:PGtkWidget; css_class:Pchar):gboolean;
    begin
      { You must implement this function }
    end;
    function gtk_widget_get_css_classes(widget:PGtkWidget):PPchar;
    begin
      { You must implement this function }
    end;
    procedure gtk_widget_set_css_classes(widget:PGtkWidget; classes:PPchar);
    begin
      { You must implement this function }
    end;
    procedure gtk_widget_class_install_action(widget_class:PGtkWidgetClass; action_name:Pchar; parameter_type:Pchar; activate:GtkWidgetActionActivateFunc);
    begin
      { You must implement this function }
    end;
    procedure gtk_widget_class_install_property_action(widget_class:PGtkWidgetClass; action_name:Pchar; property_name:Pchar);
    begin
      { You must implement this function }
    end;
    function gtk_widget_class_query_action(widget_class:PGtkWidgetClass; index_:guint; owner:PGType; action_name:PPchar; parameter_type:PPGVariantType; 
               property_name:PPchar):gboolean;
    begin
      { You must implement this function }
    end;
    procedure gtk_widget_action_set_enabled(widget:PGtkWidget; action_name:Pchar; enabled:gboolean);
    begin
      { You must implement this function }
    end;
    procedure gtk_widget_class_set_accessible_role(widget_class:PGtkWidgetClass; accessible_role:GtkAccessibleRole);
    begin
      { You must implement this function }
    end;
    function gtk_widget_class_get_accessible_role(widget_class:PGtkWidgetClass):GtkAccessibleRole;
    begin
      { You must implement this function }
    end;

