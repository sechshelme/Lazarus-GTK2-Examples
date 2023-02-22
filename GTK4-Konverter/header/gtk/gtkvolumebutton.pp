
  Type
  PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { GTK - The GIMP Toolkit
   * Copyright (C) 2007 Red Hat, Inc.
   *
   * Authors:
   * - Bastien Nocera <bnocera@redhat.com>
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
   * Modified by the GTK+ Team and others 2007.  See the AUTHORS
   * file for a list of people on the GTK+ Team.  See the ChangeLog
   * files for a list of changes.  These files are distributed with
   * GTK+ at ftp://ftp.gtk.org/pub/gtk/.
    }
{$ifndef __GTK_VOLUME_BUTTON_H__}
{$define __GTK_VOLUME_BUTTON_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkscalebutton.h>}

  { was #define dname def_expr }
  function GTK_TYPE_VOLUME_BUTTON : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_VOLUME_BUTTON(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_VOLUME_BUTTON(obj : longint) : longint;  


  type
    _GtkVolumeButton = GtkVolumeButton;
    _GtkVolumeButton = record
        parent : GtkScaleButton;
      end;

(* error 
GType		gtk_volume_button_get_type	(void) G_GNUC_CONST;
 in declarator_list *)

    var
 : GType;

  function gtk_volume_button_new:^GtkWidget;

{$endif}
  { __GTK_VOLUME_BUTTON_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_VOLUME_BUTTON : longint; { return type might be wrong }
    begin
      GTK_TYPE_VOLUME_BUTTON:=gtk_volume_button_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_VOLUME_BUTTON(obj : longint) : longint;
  begin
    GTK_VOLUME_BUTTON:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_VOLUME_BUTTON,GtkVolumeButton);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_VOLUME_BUTTON(obj : longint) : longint;
  begin
    GTK_IS_VOLUME_BUTTON:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_VOLUME_BUTTON);
  end;

  function gtk_volume_button_new:PGtkWidget;
  begin
    { You must implement this function }
  end;

