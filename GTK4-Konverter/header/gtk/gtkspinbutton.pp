
  Type
  Pdouble  = ^double;
  PGtkAdjustment  = ^GtkAdjustment;
  PGtkSpinButton  = ^GtkSpinButton;
  PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { GTK - The GIMP Toolkit
   * Copyright (C) 1995-1997 Peter Mattis, Spencer Kimball and Josh MacDonald
   *
   * GtkSpinButton widget for GTK+
   * Copyright (C) 1998 Lars Hamann and Stefan Jeske
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
{$ifndef __GTK_SPIN_BUTTON_H__}
{$define __GTK_SPIN_BUTTON_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwidget.h>}

  { was #define dname def_expr }
  function GTK_TYPE_SPIN_BUTTON : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_SPIN_BUTTON(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_SPIN_BUTTON(obj : longint) : longint;  

  {*
   * GTK_INPUT_ERROR:
   *
   * Constant to return from a signal handler for the ::input
   * signal in case of conversion failure.
   *
   * See [signal@Gtk.SpinButton::input].
    }
  const
    GTK_INPUT_ERROR = -(1);    
  {*
   * GtkSpinButtonUpdatePolicy:
   * @GTK_UPDATE_ALWAYS: When refreshing your `GtkSpinButton`, the value is
   *   always displayed
   * @GTK_UPDATE_IF_VALID: When refreshing your `GtkSpinButton`, the value is
   *   only displayed if it is valid within the bounds of the spin button's
   *   adjustment
   *
   * Determines whether the spin button displays values outside the adjustment
   * bounds.
   *
   * See [method@Gtk.SpinButton.set_update_policy].
    }

  type
    GtkSpinButtonUpdatePolicy = (GTK_UPDATE_ALWAYS,GTK_UPDATE_IF_VALID
      );
  {*
   * GtkSpinType:
   * @GTK_SPIN_STEP_FORWARD: Increment by the adjustments step increment.
   * @GTK_SPIN_STEP_BACKWARD: Decrement by the adjustments step increment.
   * @GTK_SPIN_PAGE_FORWARD: Increment by the adjustments page increment.
   * @GTK_SPIN_PAGE_BACKWARD: Decrement by the adjustments page increment.
   * @GTK_SPIN_HOME: Go to the adjustments lower bound.
   * @GTK_SPIN_END: Go to the adjustments upper bound.
   * @GTK_SPIN_USER_DEFINED: Change by a specified amount.
   *
   * The values of the GtkSpinType enumeration are used to specify the
   * change to make in gtk_spin_button_spin().
    }

    GtkSpinType = (GTK_SPIN_STEP_FORWARD,GTK_SPIN_STEP_BACKWARD,
      GTK_SPIN_PAGE_FORWARD,GTK_SPIN_PAGE_BACKWARD,
      GTK_SPIN_HOME,GTK_SPIN_END,GTK_SPIN_USER_DEFINED
      );
    _GtkSpinButton = GtkSpinButton;
(* error 
GType           gtk_spin_button_get_type           (void) G_GNUC_CONST;
 in declarator_list *)

    var
 : GType;

  procedure gtk_spin_button_configure(spin_button:PGtkSpinButton; adjustment:PGtkAdjustment; climb_rate:double; digits:guint);

  function gtk_spin_button_new(adjustment:PGtkAdjustment; climb_rate:double; digits:guint):^GtkWidget;

  function gtk_spin_button_new_with_range(min:double; max:double; step:double):^GtkWidget;

  procedure gtk_spin_button_set_adjustment(spin_button:PGtkSpinButton; adjustment:PGtkAdjustment);

  function gtk_spin_button_get_adjustment(spin_button:PGtkSpinButton):^GtkAdjustment;

  procedure gtk_spin_button_set_digits(spin_button:PGtkSpinButton; digits:guint);

  function gtk_spin_button_get_digits(spin_button:PGtkSpinButton):guint;

  procedure gtk_spin_button_set_increments(spin_button:PGtkSpinButton; step:double; page:double);

  procedure gtk_spin_button_get_increments(spin_button:PGtkSpinButton; step:Pdouble; page:Pdouble);

  procedure gtk_spin_button_set_range(spin_button:PGtkSpinButton; min:double; max:double);

  procedure gtk_spin_button_get_range(spin_button:PGtkSpinButton; min:Pdouble; max:Pdouble);

  function gtk_spin_button_get_value(spin_button:PGtkSpinButton):double;

  function gtk_spin_button_get_value_as_int(spin_button:PGtkSpinButton):longint;

  procedure gtk_spin_button_set_value(spin_button:PGtkSpinButton; value:double);

  procedure gtk_spin_button_set_update_policy(spin_button:PGtkSpinButton; policy:GtkSpinButtonUpdatePolicy);

  function gtk_spin_button_get_update_policy(spin_button:PGtkSpinButton):GtkSpinButtonUpdatePolicy;

  procedure gtk_spin_button_set_numeric(spin_button:PGtkSpinButton; numeric:gboolean);

  function gtk_spin_button_get_numeric(spin_button:PGtkSpinButton):gboolean;

  procedure gtk_spin_button_spin(spin_button:PGtkSpinButton; direction:GtkSpinType; increment:double);

  procedure gtk_spin_button_set_wrap(spin_button:PGtkSpinButton; wrap:gboolean);

  function gtk_spin_button_get_wrap(spin_button:PGtkSpinButton):gboolean;

  procedure gtk_spin_button_set_snap_to_ticks(spin_button:PGtkSpinButton; snap_to_ticks:gboolean);

  function gtk_spin_button_get_snap_to_ticks(spin_button:PGtkSpinButton):gboolean;

  procedure gtk_spin_button_set_climb_rate(spin_button:PGtkSpinButton; climb_rate:double);

  function gtk_spin_button_get_climb_rate(spin_button:PGtkSpinButton):double;

  procedure gtk_spin_button_update(spin_button:PGtkSpinButton);

{$endif}
  { __GTK_SPIN_BUTTON_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_SPIN_BUTTON : longint; { return type might be wrong }
    begin
      GTK_TYPE_SPIN_BUTTON:=gtk_spin_button_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_SPIN_BUTTON(obj : longint) : longint;
  begin
    GTK_SPIN_BUTTON:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_SPIN_BUTTON,GtkSpinButton);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_SPIN_BUTTON(obj : longint) : longint;
  begin
    GTK_IS_SPIN_BUTTON:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_SPIN_BUTTON);
  end;

  procedure gtk_spin_button_configure(spin_button:PGtkSpinButton; adjustment:PGtkAdjustment; climb_rate:double; digits:guint);
  begin
    { You must implement this function }
  end;
  function gtk_spin_button_new(adjustment:PGtkAdjustment; climb_rate:double; digits:guint):PGtkWidget;
  begin
    { You must implement this function }
  end;
  function gtk_spin_button_new_with_range(min:double; max:double; step:double):PGtkWidget;
  begin
    { You must implement this function }
  end;
  procedure gtk_spin_button_set_adjustment(spin_button:PGtkSpinButton; adjustment:PGtkAdjustment);
  begin
    { You must implement this function }
  end;
  function gtk_spin_button_get_adjustment(spin_button:PGtkSpinButton):PGtkAdjustment;
  begin
    { You must implement this function }
  end;
  procedure gtk_spin_button_set_digits(spin_button:PGtkSpinButton; digits:guint);
  begin
    { You must implement this function }
  end;
  function gtk_spin_button_get_digits(spin_button:PGtkSpinButton):guint;
  begin
    { You must implement this function }
  end;
  procedure gtk_spin_button_set_increments(spin_button:PGtkSpinButton; step:double; page:double);
  begin
    { You must implement this function }
  end;
  procedure gtk_spin_button_get_increments(spin_button:PGtkSpinButton; step:Pdouble; page:Pdouble);
  begin
    { You must implement this function }
  end;
  procedure gtk_spin_button_set_range(spin_button:PGtkSpinButton; min:double; max:double);
  begin
    { You must implement this function }
  end;
  procedure gtk_spin_button_get_range(spin_button:PGtkSpinButton; min:Pdouble; max:Pdouble);
  begin
    { You must implement this function }
  end;
  function gtk_spin_button_get_value(spin_button:PGtkSpinButton):double;
  begin
    { You must implement this function }
  end;
  function gtk_spin_button_get_value_as_int(spin_button:PGtkSpinButton):longint;
  begin
    { You must implement this function }
  end;
  procedure gtk_spin_button_set_value(spin_button:PGtkSpinButton; value:double);
  begin
    { You must implement this function }
  end;
  procedure gtk_spin_button_set_update_policy(spin_button:PGtkSpinButton; policy:GtkSpinButtonUpdatePolicy);
  begin
    { You must implement this function }
  end;
  function gtk_spin_button_get_update_policy(spin_button:PGtkSpinButton):GtkSpinButtonUpdatePolicy;
  begin
    { You must implement this function }
  end;
  procedure gtk_spin_button_set_numeric(spin_button:PGtkSpinButton; numeric:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_spin_button_get_numeric(spin_button:PGtkSpinButton):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_spin_button_spin(spin_button:PGtkSpinButton; direction:GtkSpinType; increment:double);
  begin
    { You must implement this function }
  end;
  procedure gtk_spin_button_set_wrap(spin_button:PGtkSpinButton; wrap:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_spin_button_get_wrap(spin_button:PGtkSpinButton):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_spin_button_set_snap_to_ticks(spin_button:PGtkSpinButton; snap_to_ticks:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_spin_button_get_snap_to_ticks(spin_button:PGtkSpinButton):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_spin_button_set_climb_rate(spin_button:PGtkSpinButton; climb_rate:double);
  begin
    { You must implement this function }
  end;
  function gtk_spin_button_get_climb_rate(spin_button:PGtkSpinButton):double;
  begin
    { You must implement this function }
  end;
  procedure gtk_spin_button_update(spin_button:PGtkSpinButton);
  begin
    { You must implement this function }
  end;

