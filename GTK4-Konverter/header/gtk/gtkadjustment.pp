
  Type
  PGtkAdjustment  = ^GtkAdjustment;
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
{$ifndef __GTK_ADJUSTMENT_H__}
{$define __GTK_ADJUSTMENT_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gdk/gdk.h>}
{$include <gtk/gtktypes.h>}
  { Zeile entfernt  }

  { was #define dname def_expr }
  function GTK_TYPE_ADJUSTMENT : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_ADJUSTMENT(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_ADJUSTMENT_CLASS(klass : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_ADJUSTMENT(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_ADJUSTMENT_CLASS(klass : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_ADJUSTMENT_GET_CLASS(obj : longint) : longint;  


  type
    _GtkAdjustmentClass = GtkAdjustmentClass;
    _GtkAdjustment = record
        parent_instance : GInitiallyUnowned;
      end;

  { Padding for future expansion  }
    _GtkAdjustmentClass = record
        parent_class : GInitiallyUnownedClass;
        changed : procedure (adjustment:PGtkAdjustment);cdecl;
        value_changed : procedure (adjustment:PGtkAdjustment);cdecl;
        _gtk_reserved1 : procedure ;cdecl;
        _gtk_reserved2 : procedure ;cdecl;
        _gtk_reserved3 : procedure ;cdecl;
        _gtk_reserved4 : procedure ;cdecl;
      end;

  { Zeile entfernt  }

  function gtk_adjustment_get_type:GType;

  { Zeile entfernt  }
  function gtk_adjustment_new(value:double; lower:double; upper:double; step_increment:double; page_increment:double; 
             page_size:double):^GtkAdjustment;

  { Zeile entfernt  }
  procedure gtk_adjustment_clamp_page(adjustment:PGtkAdjustment; lower:double; upper:double);

  { Zeile entfernt  }
  function gtk_adjustment_get_value(adjustment:PGtkAdjustment):double;

  { Zeile entfernt  }
  procedure gtk_adjustment_set_value(adjustment:PGtkAdjustment; value:double);

  { Zeile entfernt  }
  function gtk_adjustment_get_lower(adjustment:PGtkAdjustment):double;

  { Zeile entfernt  }
  procedure gtk_adjustment_set_lower(adjustment:PGtkAdjustment; lower:double);

  { Zeile entfernt  }
  function gtk_adjustment_get_upper(adjustment:PGtkAdjustment):double;

  { Zeile entfernt  }
  procedure gtk_adjustment_set_upper(adjustment:PGtkAdjustment; upper:double);

  { Zeile entfernt  }
  function gtk_adjustment_get_step_increment(adjustment:PGtkAdjustment):double;

  { Zeile entfernt  }
  procedure gtk_adjustment_set_step_increment(adjustment:PGtkAdjustment; step_increment:double);

  { Zeile entfernt  }
  function gtk_adjustment_get_page_increment(adjustment:PGtkAdjustment):double;

  { Zeile entfernt  }
  procedure gtk_adjustment_set_page_increment(adjustment:PGtkAdjustment; page_increment:double);

  { Zeile entfernt  }
  function gtk_adjustment_get_page_size(adjustment:PGtkAdjustment):double;

  { Zeile entfernt  }
  procedure gtk_adjustment_set_page_size(adjustment:PGtkAdjustment; page_size:double);

  { Zeile entfernt  }
  procedure gtk_adjustment_configure(adjustment:PGtkAdjustment; value:double; lower:double; upper:double; step_increment:double; 
              page_increment:double; page_size:double);

  { Zeile entfernt  }
  function gtk_adjustment_get_minimum_increment(adjustment:PGtkAdjustment):double;

  { Zeile entfernt  }
{$endif}
  { __GTK_ADJUSTMENT_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_ADJUSTMENT : longint; { return type might be wrong }
    begin
      GTK_TYPE_ADJUSTMENT:=gtk_adjustment_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_ADJUSTMENT(obj : longint) : longint;
  begin
    GTK_ADJUSTMENT:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_ADJUSTMENT,GtkAdjustment);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_ADJUSTMENT_CLASS(klass : longint) : longint;
  begin
    GTK_ADJUSTMENT_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_ADJUSTMENT,GtkAdjustmentClass);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_ADJUSTMENT(obj : longint) : longint;
  begin
    GTK_IS_ADJUSTMENT:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_ADJUSTMENT);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_ADJUSTMENT_CLASS(klass : longint) : longint;
  begin
    GTK_IS_ADJUSTMENT_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_ADJUSTMENT);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_ADJUSTMENT_GET_CLASS(obj : longint) : longint;
  begin
    GTK_ADJUSTMENT_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_ADJUSTMENT,GtkAdjustmentClass);
  end;

  function gtk_adjustment_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gtk_adjustment_new(value:double; lower:double; upper:double; step_increment:double; page_increment:double; 
             page_size:double):PGtkAdjustment;
  begin
    { You must implement this function }
  end;
  procedure gtk_adjustment_clamp_page(adjustment:PGtkAdjustment; lower:double; upper:double);
  begin
    { You must implement this function }
  end;
  function gtk_adjustment_get_value(adjustment:PGtkAdjustment):double;
  begin
    { You must implement this function }
  end;
  procedure gtk_adjustment_set_value(adjustment:PGtkAdjustment; value:double);
  begin
    { You must implement this function }
  end;
  function gtk_adjustment_get_lower(adjustment:PGtkAdjustment):double;
  begin
    { You must implement this function }
  end;
  procedure gtk_adjustment_set_lower(adjustment:PGtkAdjustment; lower:double);
  begin
    { You must implement this function }
  end;
  function gtk_adjustment_get_upper(adjustment:PGtkAdjustment):double;
  begin
    { You must implement this function }
  end;
  procedure gtk_adjustment_set_upper(adjustment:PGtkAdjustment; upper:double);
  begin
    { You must implement this function }
  end;
  function gtk_adjustment_get_step_increment(adjustment:PGtkAdjustment):double;
  begin
    { You must implement this function }
  end;
  procedure gtk_adjustment_set_step_increment(adjustment:PGtkAdjustment; step_increment:double);
  begin
    { You must implement this function }
  end;
  function gtk_adjustment_get_page_increment(adjustment:PGtkAdjustment):double;
  begin
    { You must implement this function }
  end;
  procedure gtk_adjustment_set_page_increment(adjustment:PGtkAdjustment; page_increment:double);
  begin
    { You must implement this function }
  end;
  function gtk_adjustment_get_page_size(adjustment:PGtkAdjustment):double;
  begin
    { You must implement this function }
  end;
  procedure gtk_adjustment_set_page_size(adjustment:PGtkAdjustment; page_size:double);
  begin
    { You must implement this function }
  end;
  procedure gtk_adjustment_configure(adjustment:PGtkAdjustment; value:double; lower:double; upper:double; step_increment:double; 
              page_increment:double; page_size:double);
  begin
    { You must implement this function }
  end;
  function gtk_adjustment_get_minimum_increment(adjustment:PGtkAdjustment):double;
  begin
    { You must implement this function }
  end;

