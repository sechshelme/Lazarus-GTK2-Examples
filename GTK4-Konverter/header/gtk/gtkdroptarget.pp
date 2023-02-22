
  Type
  PGdkContentFormats  = ^GdkContentFormats;
  Pgsize  = ^gsize;
  PGtkDropTarget  = ^GtkDropTarget;
  PGType  = ^GType;
  PGValue  = ^GValue;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  {
   * Copyright © 2020 Benjamin Otte
   *
   * This library is free software; you can redistribute it and/or
   * modify it under the terms of the GNU Lesser General Public
   * License as published by the Free Software Foundation; either
   * version 2.1 of the License, or (at your option) any later version.
   *
   * This library is distributed in the hope that it will be useful,
   * but WITHOUT ANY WARRANTY; without even the implied warranty of
   * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   * Lesser General Public License for more details.
   *
   * You should have received a copy of the GNU Lesser General Public
   * License along with this library. If not, see <http://www.gnu.org/licenses/>.
   *
   * Authors: Benjamin Otte <otte@gnome.org>
    }
{$ifndef __GTK_DROP_TARGET_H__}
{$define __GTK_DROP_TARGET_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtktypes.h>}

  type
    _GtkDropTarget = GtkDropTarget;

  { was #define dname def_expr }
  function GTK_TYPE_DROP_TARGET : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_DROP_TARGET(o : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_DROP_TARGET_CLASS(k : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_DROP_TARGET(o : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_DROP_TARGET_CLASS(k : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_DROP_TARGET_GET_CLASS(o : longint) : longint;  


  type
    _GtkDropTargetClass = GtkDropTargetClass;
(* error 
GType                   gtk_drop_target_get_type         (void) G_GNUC_CONST;
 in declarator_list *)

    var
 : GType;

  function gtk_drop_target_new(_type:GType; actions:GdkDragAction):^GtkDropTarget;

  procedure gtk_drop_target_set_gtypes(self:PGtkDropTarget; types:PGType; n_types:gsize);

(* Const before type ignored *)
  function gtk_drop_target_get_gtypes(self:PGtkDropTarget; n_types:Pgsize):^GType;

  function gtk_drop_target_get_formats(self:PGtkDropTarget):^GdkContentFormats;

  procedure gtk_drop_target_set_actions(self:PGtkDropTarget; actions:GdkDragAction);

  function gtk_drop_target_get_actions(self:PGtkDropTarget):GdkDragAction;

  procedure gtk_drop_target_set_preload(self:PGtkDropTarget; preload:gboolean);

  function gtk_drop_target_get_preload(self:PGtkDropTarget):gboolean;

(* error 
GdkDrop *               gtk_drop_target_get_drop         (GtkDropTarget         *self);
 in declarator_list *)
(* error 
GdkDrop *               gtk_drop_target_get_current_drop (GtkDropTarget         *self);
 in declarator_list *)
(* Const before type ignored *)
  function gtk_drop_target_get_value(self:PGtkDropTarget):^GValue;

  procedure gtk_drop_target_reject(self:PGtkDropTarget);

{$endif}
  { __GTK_DROP_TARGET_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_DROP_TARGET : longint; { return type might be wrong }
    begin
      GTK_TYPE_DROP_TARGET:=gtk_drop_target_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_DROP_TARGET(o : longint) : longint;
  begin
    GTK_DROP_TARGET:=G_TYPE_CHECK_INSTANCE_CAST(o,GTK_TYPE_DROP_TARGET,GtkDropTarget);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_DROP_TARGET_CLASS(k : longint) : longint;
  begin
    GTK_DROP_TARGET_CLASS:=G_TYPE_CHECK_CLASS_CAST(k,GTK_TYPE_DROP_TARGET,GtkDropTargetClass);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_DROP_TARGET(o : longint) : longint;
  begin
    GTK_IS_DROP_TARGET:=G_TYPE_CHECK_INSTANCE_TYPE(o,GTK_TYPE_DROP_TARGET);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_DROP_TARGET_CLASS(k : longint) : longint;
  begin
    GTK_IS_DROP_TARGET_CLASS:=G_TYPE_CHECK_CLASS_TYPE(k,GTK_TYPE_DROP_TARGET);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_DROP_TARGET_GET_CLASS(o : longint) : longint;
  begin
    GTK_DROP_TARGET_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(o,GTK_TYPE_DROP_TARGET,GtkDropTargetClass);
  end;

  function gtk_drop_target_new(_type:GType; actions:GdkDragAction):PGtkDropTarget;
  begin
    { You must implement this function }
  end;
  procedure gtk_drop_target_set_gtypes(self:PGtkDropTarget; types:PGType; n_types:gsize);
  begin
    { You must implement this function }
  end;
  function gtk_drop_target_get_gtypes(self:PGtkDropTarget; n_types:Pgsize):PGType;
  begin
    { You must implement this function }
  end;
  function gtk_drop_target_get_formats(self:PGtkDropTarget):PGdkContentFormats;
  begin
    { You must implement this function }
  end;
  procedure gtk_drop_target_set_actions(self:PGtkDropTarget; actions:GdkDragAction);
  begin
    { You must implement this function }
  end;
  function gtk_drop_target_get_actions(self:PGtkDropTarget):GdkDragAction;
  begin
    { You must implement this function }
  end;
  procedure gtk_drop_target_set_preload(self:PGtkDropTarget; preload:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_drop_target_get_preload(self:PGtkDropTarget):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_drop_target_get_value(self:PGtkDropTarget):PGValue;
  begin
    { You must implement this function }
  end;
  procedure gtk_drop_target_reject(self:PGtkDropTarget);
  begin
    { You must implement this function }
  end;

