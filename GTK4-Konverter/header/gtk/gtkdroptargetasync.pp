
  Type
  PGdkContentFormats  = ^GdkContentFormats;
  PGdkDrop  = ^GdkDrop;
  PGtkDropTargetAsync  = ^GtkDropTargetAsync;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { -*- Mode: C; c-file-style: "gnu"; tab-width: 8 -*-  }
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
{$ifndef __GTK_DROP_TARGET_ASYNC_H__}
{$define __GTK_DROP_TARGET_ASYNC_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwidget.h>}

  type
    _GtkDropTargetAsync = GtkDropTargetAsync;
    _GtkDropTargetAsyncClass = GtkDropTargetAsyncClass;

  { was #define dname def_expr }
  function GTK_TYPE_DROP_TARGET_ASYNC : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_DROP_TARGET_ASYNC(o : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_DROP_TARGET_ASYNC_CLASS(k : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_DROP_TARGET_ASYNC(o : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_DROP_TARGET_ASYNC_CLASS(k : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_DROP_TARGET_ASYNC_GET_CLASS(o : longint) : longint;  

(* error 
GType                   gtk_drop_target_async_get_type          (void) G_GNUC_CONST;
 in declarator_list *)

    var
 : GType;

  function gtk_drop_target_async_new(formats:PGdkContentFormats; actions:GdkDragAction):^GtkDropTargetAsync;

  procedure gtk_drop_target_async_set_formats(self:PGtkDropTargetAsync; formats:PGdkContentFormats);

  function gtk_drop_target_async_get_formats(self:PGtkDropTargetAsync):^GdkContentFormats;

  procedure gtk_drop_target_async_set_actions(self:PGtkDropTargetAsync; actions:GdkDragAction);

  function gtk_drop_target_async_get_actions(self:PGtkDropTargetAsync):GdkDragAction;

  procedure gtk_drop_target_async_reject_drop(self:PGtkDropTargetAsync; drop:PGdkDrop);

{$endif}
  { __GTK_DROP_TARGET_ASYNC_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_DROP_TARGET_ASYNC : longint; { return type might be wrong }
    begin
      GTK_TYPE_DROP_TARGET_ASYNC:=gtk_drop_target_async_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_DROP_TARGET_ASYNC(o : longint) : longint;
  begin
    GTK_DROP_TARGET_ASYNC:=G_TYPE_CHECK_INSTANCE_CAST(o,GTK_TYPE_DROP_TARGET_ASYNC,GtkDropTargetAsync);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_DROP_TARGET_ASYNC_CLASS(k : longint) : longint;
  begin
    GTK_DROP_TARGET_ASYNC_CLASS:=G_TYPE_CHECK_CLASS_CAST(k,GTK_TYPE_DROP_TARGET_ASYNC,GtkDropTargetAsyncClass);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_DROP_TARGET_ASYNC(o : longint) : longint;
  begin
    GTK_IS_DROP_TARGET_ASYNC:=G_TYPE_CHECK_INSTANCE_TYPE(o,GTK_TYPE_DROP_TARGET_ASYNC);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_DROP_TARGET_ASYNC_CLASS(k : longint) : longint;
  begin
    GTK_IS_DROP_TARGET_ASYNC_CLASS:=G_TYPE_CHECK_CLASS_TYPE(k,GTK_TYPE_DROP_TARGET_ASYNC);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_DROP_TARGET_ASYNC_GET_CLASS(o : longint) : longint;
  begin
    GTK_DROP_TARGET_ASYNC_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(o,GTK_TYPE_DROP_TARGET_ASYNC,GtkDropTargetAsyncClass);
  end;

  function gtk_drop_target_async_new(formats:PGdkContentFormats; actions:GdkDragAction):PGtkDropTargetAsync;
  begin
    { You must implement this function }
  end;
  procedure gtk_drop_target_async_set_formats(self:PGtkDropTargetAsync; formats:PGdkContentFormats);
  begin
    { You must implement this function }
  end;
  function gtk_drop_target_async_get_formats(self:PGtkDropTargetAsync):PGdkContentFormats;
  begin
    { You must implement this function }
  end;
  procedure gtk_drop_target_async_set_actions(self:PGtkDropTargetAsync; actions:GdkDragAction);
  begin
    { You must implement this function }
  end;
  function gtk_drop_target_async_get_actions(self:PGtkDropTargetAsync):GdkDragAction;
  begin
    { You must implement this function }
  end;
  procedure gtk_drop_target_async_reject_drop(self:PGtkDropTargetAsync; drop:PGdkDrop);
  begin
    { You must implement this function }
  end;

