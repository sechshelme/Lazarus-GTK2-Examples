
  Type
  Pchar  = ^char;
  Pdouble  = ^double;
  PGtkLevelBar  = ^GtkLevelBar;
  PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { GTK - The GIMP Toolkit
   * Copyright © 2012 Red Hat, Inc.
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
   *
   * Author: Cosimo Cecchi <cosimoc@gnome.org>
   *
    }
{$ifndef __GTK_LEVEL_BAR_H__}
{$define __GTK_LEVEL_BAR_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwidget.h>}
  { Zeile entfernt  }

  { was #define dname def_expr }
  function GTK_TYPE_LEVEL_BAR : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_LEVEL_BAR(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_LEVEL_BAR(obj : longint) : longint;  

  {*
   * GTK_LEVEL_BAR_OFFSET_LOW:
   *
   * The name used for the stock low offset included by `GtkLevelBar`.
    }
  const
    GTK_LEVEL_BAR_OFFSET_LOW = 'low';    
  {*
   * GTK_LEVEL_BAR_OFFSET_HIGH:
   *
   * The name used for the stock high offset included by `GtkLevelBar`.
    }
    GTK_LEVEL_BAR_OFFSET_HIGH = 'high';    
  {*
   * GTK_LEVEL_BAR_OFFSET_FULL:
   *
   * The name used for the stock full offset included by `GtkLevelBar`.
    }
    GTK_LEVEL_BAR_OFFSET_FULL = 'full';    

  type
    _GtkLevelBar = GtkLevelBar;
  { Zeile entfernt  }

  function gtk_level_bar_get_type:GType;

  { Zeile entfernt  }
  function gtk_level_bar_new:^GtkWidget;

  { Zeile entfernt  }
  function gtk_level_bar_new_for_interval(min_value:double; max_value:double):^GtkWidget;

  { Zeile entfernt  }
  procedure gtk_level_bar_set_mode(self:PGtkLevelBar; mode:GtkLevelBarMode);

  { Zeile entfernt  }
  function gtk_level_bar_get_mode(self:PGtkLevelBar):GtkLevelBarMode;

  { Zeile entfernt  }
  procedure gtk_level_bar_set_value(self:PGtkLevelBar; value:double);

  { Zeile entfernt  }
  function gtk_level_bar_get_value(self:PGtkLevelBar):double;

  { Zeile entfernt  }
  procedure gtk_level_bar_set_min_value(self:PGtkLevelBar; value:double);

  { Zeile entfernt  }
  function gtk_level_bar_get_min_value(self:PGtkLevelBar):double;

  { Zeile entfernt  }
  procedure gtk_level_bar_set_max_value(self:PGtkLevelBar; value:double);

  { Zeile entfernt  }
  function gtk_level_bar_get_max_value(self:PGtkLevelBar):double;

  { Zeile entfernt  }
  procedure gtk_level_bar_set_inverted(self:PGtkLevelBar; inverted:gboolean);

  { Zeile entfernt  }
  function gtk_level_bar_get_inverted(self:PGtkLevelBar):gboolean;

  { Zeile entfernt  }
(* Const before type ignored *)
  procedure gtk_level_bar_add_offset_value(self:PGtkLevelBar; name:Pchar; value:double);

  { Zeile entfernt  }
(* Const before type ignored *)
  procedure gtk_level_bar_remove_offset_value(self:PGtkLevelBar; name:Pchar);

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_level_bar_get_offset_value(self:PGtkLevelBar; name:Pchar; value:Pdouble):gboolean;

  { Zeile entfernt  }
{$endif}
  { __GTK_LEVEL_BAR_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_LEVEL_BAR : longint; { return type might be wrong }
    begin
      GTK_TYPE_LEVEL_BAR:=gtk_level_bar_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_LEVEL_BAR(obj : longint) : longint;
  begin
    GTK_LEVEL_BAR:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_LEVEL_BAR,GtkLevelBar);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_LEVEL_BAR(obj : longint) : longint;
  begin
    GTK_IS_LEVEL_BAR:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_LEVEL_BAR);
  end;

  function gtk_level_bar_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gtk_level_bar_new:PGtkWidget;
  begin
    { You must implement this function }
  end;
  function gtk_level_bar_new_for_interval(min_value:double; max_value:double):PGtkWidget;
  begin
    { You must implement this function }
  end;
  procedure gtk_level_bar_set_mode(self:PGtkLevelBar; mode:GtkLevelBarMode);
  begin
    { You must implement this function }
  end;
  function gtk_level_bar_get_mode(self:PGtkLevelBar):GtkLevelBarMode;
  begin
    { You must implement this function }
  end;
  procedure gtk_level_bar_set_value(self:PGtkLevelBar; value:double);
  begin
    { You must implement this function }
  end;
  function gtk_level_bar_get_value(self:PGtkLevelBar):double;
  begin
    { You must implement this function }
  end;
  procedure gtk_level_bar_set_min_value(self:PGtkLevelBar; value:double);
  begin
    { You must implement this function }
  end;
  function gtk_level_bar_get_min_value(self:PGtkLevelBar):double;
  begin
    { You must implement this function }
  end;
  procedure gtk_level_bar_set_max_value(self:PGtkLevelBar; value:double);
  begin
    { You must implement this function }
  end;
  function gtk_level_bar_get_max_value(self:PGtkLevelBar):double;
  begin
    { You must implement this function }
  end;
  procedure gtk_level_bar_set_inverted(self:PGtkLevelBar; inverted:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_level_bar_get_inverted(self:PGtkLevelBar):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_level_bar_add_offset_value(self:PGtkLevelBar; name:Pchar; value:double);
  begin
    { You must implement this function }
  end;
  procedure gtk_level_bar_remove_offset_value(self:PGtkLevelBar; name:Pchar);
  begin
    { You must implement this function }
  end;
  function gtk_level_bar_get_offset_value(self:PGtkLevelBar; name:Pchar; value:Pdouble):gboolean;
  begin
    { You must implement this function }
  end;

