
  Type
  PGdkDisplay  = ^GdkDisplay;
  PGMountOperation  = ^GMountOperation;
  PGtkMountOperation  = ^GtkMountOperation;
  PGtkWindow  = ^GtkWindow;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { GTK - The GIMP Toolkit
   * Copyright (C) Christian Kellner <gicmo@gnome.org>
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
{$ifndef __GTK_MOUNT_OPERATION_H__}
{$define __GTK_MOUNT_OPERATION_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
  { Zeile entfernt  }

  { was #define dname def_expr }
  function GTK_TYPE_MOUNT_OPERATION : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_MOUNT_OPERATION(o : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_MOUNT_OPERATION_CLASS(k : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_MOUNT_OPERATION(o : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_MOUNT_OPERATION_CLASS(k : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_MOUNT_OPERATION_GET_CLASS(o : longint) : longint;  


  type
    _GtkMountOperation = GtkMountOperation;
    _GtkMountOperationClass = GtkMountOperationClass;
    _GtkMountOperationPrivate = GtkMountOperationPrivate;
    _GtkMountOperation = record
        parent_instance : GMountOperation;
        priv : ^GtkMountOperationPrivate;
      end;

  {*
   * GtkMountOperationClass:
   * @parent_class: The parent class.
    }
  {< private > }
  { Padding for future expansion  }
    _GtkMountOperationClass = record
        parent_class : GMountOperationClass;
        _gtk_reserved1 : procedure ;cdecl;
        _gtk_reserved2 : procedure ;cdecl;
        _gtk_reserved3 : procedure ;cdecl;
        _gtk_reserved4 : procedure ;cdecl;
      end;

  { Zeile entfernt  }

  function gtk_mount_operation_get_type:GType;

  { Zeile entfernt  }
  function gtk_mount_operation_new(parent:PGtkWindow):^GMountOperation;

  { Zeile entfernt  }
  function gtk_mount_operation_is_showing(op:PGtkMountOperation):gboolean;

  { Zeile entfernt  }
  procedure gtk_mount_operation_set_parent(op:PGtkMountOperation; parent:PGtkWindow);

  { Zeile entfernt  }
  function gtk_mount_operation_get_parent(op:PGtkMountOperation):^GtkWindow;

  { Zeile entfernt  }
  procedure gtk_mount_operation_set_display(op:PGtkMountOperation; display:PGdkDisplay);

  { Zeile entfernt  }
  function gtk_mount_operation_get_display(op:PGtkMountOperation):^GdkDisplay;

  { Zeile entfernt  }
{$endif}
  { __GTK_MOUNT_OPERATION_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_MOUNT_OPERATION : longint; { return type might be wrong }
    begin
      GTK_TYPE_MOUNT_OPERATION:=gtk_mount_operation_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_MOUNT_OPERATION(o : longint) : longint;
  begin
    GTK_MOUNT_OPERATION:=G_TYPE_CHECK_INSTANCE_CAST(o,GTK_TYPE_MOUNT_OPERATION,GtkMountOperation);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_MOUNT_OPERATION_CLASS(k : longint) : longint;
  begin
    GTK_MOUNT_OPERATION_CLASS:=G_TYPE_CHECK_CLASS_CAST(k,GTK_TYPE_MOUNT_OPERATION,GtkMountOperationClass);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_MOUNT_OPERATION(o : longint) : longint;
  begin
    GTK_IS_MOUNT_OPERATION:=G_TYPE_CHECK_INSTANCE_TYPE(o,GTK_TYPE_MOUNT_OPERATION);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_MOUNT_OPERATION_CLASS(k : longint) : longint;
  begin
    GTK_IS_MOUNT_OPERATION_CLASS:=G_TYPE_CHECK_CLASS_TYPE(k,GTK_TYPE_MOUNT_OPERATION);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_MOUNT_OPERATION_GET_CLASS(o : longint) : longint;
  begin
    GTK_MOUNT_OPERATION_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(o,GTK_TYPE_MOUNT_OPERATION,GtkMountOperationClass);
  end;

  function gtk_mount_operation_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gtk_mount_operation_new(parent:PGtkWindow):PGMountOperation;
  begin
    { You must implement this function }
  end;
  function gtk_mount_operation_is_showing(op:PGtkMountOperation):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_mount_operation_set_parent(op:PGtkMountOperation; parent:PGtkWindow);
  begin
    { You must implement this function }
  end;
  function gtk_mount_operation_get_parent(op:PGtkMountOperation):PGtkWindow;
  begin
    { You must implement this function }
  end;
  procedure gtk_mount_operation_set_display(op:PGtkMountOperation; display:PGdkDisplay);
  begin
    { You must implement this function }
  end;
  function gtk_mount_operation_get_display(op:PGtkMountOperation):PGdkDisplay;
  begin
    { You must implement this function }
  end;

