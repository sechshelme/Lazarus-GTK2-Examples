
  Type
  Pchar  = ^char;
  PGtkProgressBar  = ^GtkProgressBar;
  PGtkWidget  = ^GtkWidget;
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
{$ifndef __GTK_PROGRESS_BAR_H__}
{$define __GTK_PROGRESS_BAR_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwidget.h>}

  { was #define dname def_expr }
  function GTK_TYPE_PROGRESS_BAR : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_PROGRESS_BAR(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_PROGRESS_BAR(obj : longint) : longint;  


  type
    _GtkProgressBar = GtkProgressBar;
(* error 
GType      gtk_progress_bar_get_type             (void) G_GNUC_CONST;
 in declarator_list *)

    var
 : GType;

  function gtk_progress_bar_new:^GtkWidget;

  procedure gtk_progress_bar_pulse(pbar:PGtkProgressBar);

(* Const before type ignored *)
  procedure gtk_progress_bar_set_text(pbar:PGtkProgressBar; text:Pchar);

  procedure gtk_progress_bar_set_fraction(pbar:PGtkProgressBar; fraction:double);

  procedure gtk_progress_bar_set_pulse_step(pbar:PGtkProgressBar; fraction:double);

  procedure gtk_progress_bar_set_inverted(pbar:PGtkProgressBar; inverted:gboolean);

(* Const before type ignored *)
  function gtk_progress_bar_get_text(pbar:PGtkProgressBar):^char;

  function gtk_progress_bar_get_fraction(pbar:PGtkProgressBar):double;

  function gtk_progress_bar_get_pulse_step(pbar:PGtkProgressBar):double;

  function gtk_progress_bar_get_inverted(pbar:PGtkProgressBar):gboolean;

  procedure gtk_progress_bar_set_ellipsize(pbar:PGtkProgressBar; mode:PangoEllipsizeMode);

  function gtk_progress_bar_get_ellipsize(pbar:PGtkProgressBar):PangoEllipsizeMode;

  procedure gtk_progress_bar_set_show_text(pbar:PGtkProgressBar; show_text:gboolean);

  function gtk_progress_bar_get_show_text(pbar:PGtkProgressBar):gboolean;

{$endif}
  { __GTK_PROGRESS_BAR_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_PROGRESS_BAR : longint; { return type might be wrong }
    begin
      GTK_TYPE_PROGRESS_BAR:=gtk_progress_bar_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_PROGRESS_BAR(obj : longint) : longint;
  begin
    GTK_PROGRESS_BAR:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_PROGRESS_BAR,GtkProgressBar);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_PROGRESS_BAR(obj : longint) : longint;
  begin
    GTK_IS_PROGRESS_BAR:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_PROGRESS_BAR);
  end;

  function gtk_progress_bar_new:PGtkWidget;
  begin
    { You must implement this function }
  end;
  procedure gtk_progress_bar_pulse(pbar:PGtkProgressBar);
  begin
    { You must implement this function }
  end;
  procedure gtk_progress_bar_set_text(pbar:PGtkProgressBar; text:Pchar);
  begin
    { You must implement this function }
  end;
  procedure gtk_progress_bar_set_fraction(pbar:PGtkProgressBar; fraction:double);
  begin
    { You must implement this function }
  end;
  procedure gtk_progress_bar_set_pulse_step(pbar:PGtkProgressBar; fraction:double);
  begin
    { You must implement this function }
  end;
  procedure gtk_progress_bar_set_inverted(pbar:PGtkProgressBar; inverted:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_progress_bar_get_text(pbar:PGtkProgressBar):Pchar;
  begin
    { You must implement this function }
  end;
  function gtk_progress_bar_get_fraction(pbar:PGtkProgressBar):double;
  begin
    { You must implement this function }
  end;
  function gtk_progress_bar_get_pulse_step(pbar:PGtkProgressBar):double;
  begin
    { You must implement this function }
  end;
  function gtk_progress_bar_get_inverted(pbar:PGtkProgressBar):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_progress_bar_set_ellipsize(pbar:PGtkProgressBar; mode:PangoEllipsizeMode);
  begin
    { You must implement this function }
  end;
  function gtk_progress_bar_get_ellipsize(pbar:PGtkProgressBar):PangoEllipsizeMode;
  begin
    { You must implement this function }
  end;
  procedure gtk_progress_bar_set_show_text(pbar:PGtkProgressBar; show_text:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_progress_bar_get_show_text(pbar:PGtkProgressBar):gboolean;
  begin
    { You must implement this function }
  end;

