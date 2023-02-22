
  Type
  PGtkRevealer  = ^GtkRevealer;
  PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  {
   * Copyright (c) 2013 Red Hat, Inc.
   *
   * This program is free software; you can redistribute it and/or modify
   * it under the terms of the GNU Lesser General Public License as published by 
   * the Free Software Foundation; either version 2 of the License, or (at your
   * option) any later version.
   *
   * This program is distributed in the hope that it will be useful, but
   * WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
   * or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU Lesser General Public 
   * License for more details.
   *
   * You should have received a copy of the GNU Lesser General Public License 
   * along with this program; if not, write to the Free Software Foundation,
   * Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
   *
   * Author: Alexander Larsson <alexl@redhat.com>
   *
    }
{$ifndef __GTK_REVEALER_H__}
{$define __GTK_REVEALER_H__}  
{$include <gtk/gtkwidget.h>}

  { was #define dname def_expr }
  function GTK_TYPE_REVEALER : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_REVEALER(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_REVEALER(obj : longint) : longint;  


  type
    _GtkRevealer = GtkRevealer;

    GtkRevealerTransitionType = (GTK_REVEALER_TRANSITION_TYPE_NONE,GTK_REVEALER_TRANSITION_TYPE_CROSSFADE,
      GTK_REVEALER_TRANSITION_TYPE_SLIDE_RIGHT,
      GTK_REVEALER_TRANSITION_TYPE_SLIDE_LEFT,
      GTK_REVEALER_TRANSITION_TYPE_SLIDE_UP,
      GTK_REVEALER_TRANSITION_TYPE_SLIDE_DOWN,
      GTK_REVEALER_TRANSITION_TYPE_SWING_RIGHT,
      GTK_REVEALER_TRANSITION_TYPE_SWING_LEFT,
      GTK_REVEALER_TRANSITION_TYPE_SWING_UP,
      GTK_REVEALER_TRANSITION_TYPE_SWING_DOWN
      );
(* error 
GType                      gtk_revealer_get_type                (void) G_GNUC_CONST;
 in declarator_list *)

    var
 : GType;

  function gtk_revealer_new:^GtkWidget;

  function gtk_revealer_get_reveal_child(revealer:PGtkRevealer):gboolean;

  procedure gtk_revealer_set_reveal_child(revealer:PGtkRevealer; reveal_child:gboolean);

  function gtk_revealer_get_child_revealed(revealer:PGtkRevealer):gboolean;

  function gtk_revealer_get_transition_duration(revealer:PGtkRevealer):guint;

  procedure gtk_revealer_set_transition_duration(revealer:PGtkRevealer; duration:guint);

  procedure gtk_revealer_set_transition_type(revealer:PGtkRevealer; transition:GtkRevealerTransitionType);

  function gtk_revealer_get_transition_type(revealer:PGtkRevealer):GtkRevealerTransitionType;

  procedure gtk_revealer_set_child(revealer:PGtkRevealer; child:PGtkWidget);

  function gtk_revealer_get_child(revealer:PGtkRevealer):^GtkWidget;

{$endif}
  { __GTK_REVEALER_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_REVEALER : longint; { return type might be wrong }
    begin
      GTK_TYPE_REVEALER:=gtk_revealer_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_REVEALER(obj : longint) : longint;
  begin
    GTK_REVEALER:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_REVEALER,GtkRevealer);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_REVEALER(obj : longint) : longint;
  begin
    GTK_IS_REVEALER:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_REVEALER);
  end;

  function gtk_revealer_new:PGtkWidget;
  begin
    { You must implement this function }
  end;
  function gtk_revealer_get_reveal_child(revealer:PGtkRevealer):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_revealer_set_reveal_child(revealer:PGtkRevealer; reveal_child:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_revealer_get_child_revealed(revealer:PGtkRevealer):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_revealer_get_transition_duration(revealer:PGtkRevealer):guint;
  begin
    { You must implement this function }
  end;
  procedure gtk_revealer_set_transition_duration(revealer:PGtkRevealer; duration:guint);
  begin
    { You must implement this function }
  end;
  procedure gtk_revealer_set_transition_type(revealer:PGtkRevealer; transition:GtkRevealerTransitionType);
  begin
    { You must implement this function }
  end;
  function gtk_revealer_get_transition_type(revealer:PGtkRevealer):GtkRevealerTransitionType;
  begin
    { You must implement this function }
  end;
  procedure gtk_revealer_set_child(revealer:PGtkRevealer; child:PGtkWidget);
  begin
    { You must implement this function }
  end;
  function gtk_revealer_get_child(revealer:PGtkRevealer):PGtkWidget;
  begin
    { You must implement this function }
  end;

