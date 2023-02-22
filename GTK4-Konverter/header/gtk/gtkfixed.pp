
  Type
  Pdouble  = ^double;
  PGskTransform  = ^GskTransform;
  PGtkFixed  = ^GtkFixed;
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
{$ifndef __GTK_FIXED_H__}
{$define __GTK_FIXED_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwidget.h>}
  { Zeile entfernt  }

  { was #define dname def_expr }
  function GTK_TYPE_FIXED : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_FIXED(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_FIXED_CLASS(klass : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_FIXED(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_FIXED_CLASS(klass : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_FIXED_GET_CLASS(obj : longint) : longint;  


  type
    _GtkFixed = GtkFixed;
    _GtkFixedClass = GtkFixedClass;
    _GtkFixed = record
        parent_instance : GtkWidget;
      end;

  {< private > }
    _GtkFixedClass = record
        parent_class : GtkWidgetClass;
        padding : array[0..7] of gpointer;
      end;

  { Zeile entfernt  }

  function gtk_fixed_get_type:GType;

  { Zeile entfernt  }
  function gtk_fixed_new:^GtkWidget;

  { Zeile entfernt  }
  procedure gtk_fixed_put(fixed:PGtkFixed; widget:PGtkWidget; x:double; y:double);

  { Zeile entfernt  }
  procedure gtk_fixed_remove(fixed:PGtkFixed; widget:PGtkWidget);

  { Zeile entfernt  }
  procedure gtk_fixed_move(fixed:PGtkFixed; widget:PGtkWidget; x:double; y:double);

  { Zeile entfernt  }
  procedure gtk_fixed_get_child_position(fixed:PGtkFixed; widget:PGtkWidget; x:Pdouble; y:Pdouble);

  { Zeile entfernt  }
  procedure gtk_fixed_set_child_transform(fixed:PGtkFixed; widget:PGtkWidget; transform:PGskTransform);

  { Zeile entfernt  }
  function gtk_fixed_get_child_transform(fixed:PGtkFixed; widget:PGtkWidget):^GskTransform;

  { Zeile entfernt  }
{$endif}
  { __GTK_FIXED_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_FIXED : longint; { return type might be wrong }
    begin
      GTK_TYPE_FIXED:=gtk_fixed_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_FIXED(obj : longint) : longint;
  begin
    GTK_FIXED:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_FIXED,GtkFixed);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_FIXED_CLASS(klass : longint) : longint;
  begin
    GTK_FIXED_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_FIXED,GtkFixedClass);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_FIXED(obj : longint) : longint;
  begin
    GTK_IS_FIXED:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_FIXED);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_FIXED_CLASS(klass : longint) : longint;
  begin
    GTK_IS_FIXED_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_FIXED);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_FIXED_GET_CLASS(obj : longint) : longint;
  begin
    GTK_FIXED_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_FIXED,GtkFixedClass);
  end;

  function gtk_fixed_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gtk_fixed_new:PGtkWidget;
  begin
    { You must implement this function }
  end;
  procedure gtk_fixed_put(fixed:PGtkFixed; widget:PGtkWidget; x:double; y:double);
  begin
    { You must implement this function }
  end;
  procedure gtk_fixed_remove(fixed:PGtkFixed; widget:PGtkWidget);
  begin
    { You must implement this function }
  end;
  procedure gtk_fixed_move(fixed:PGtkFixed; widget:PGtkWidget; x:double; y:double);
  begin
    { You must implement this function }
  end;
  procedure gtk_fixed_get_child_position(fixed:PGtkFixed; widget:PGtkWidget; x:Pdouble; y:Pdouble);
  begin
    { You must implement this function }
  end;
  procedure gtk_fixed_set_child_transform(fixed:PGtkFixed; widget:PGtkWidget; transform:PGskTransform);
  begin
    { You must implement this function }
  end;
  function gtk_fixed_get_child_transform(fixed:PGtkFixed; widget:PGtkWidget):PGskTransform;
  begin
    { You must implement this function }
  end;

