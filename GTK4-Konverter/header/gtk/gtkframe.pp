
  Type
  Pchar  = ^char;
  PGtkAllocation  = ^GtkAllocation;
  PGtkFrame  = ^GtkFrame;
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
{$ifndef __GTK_FRAME_H__}
{$define __GTK_FRAME_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwidget.h>}
  { Zeile entfernt  }

  { was #define dname def_expr }
  function GTK_TYPE_FRAME : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_FRAME(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_FRAME_CLASS(klass : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_FRAME(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_FRAME_CLASS(klass : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_FRAME_GET_CLASS(obj : longint) : longint;  


  type
    _GtkFrame = GtkFrame;
    _GtkFrameClass = GtkFrameClass;
    _GtkFrame = record
        parent_instance : GtkWidget;
      end;

  {*
   * GtkFrameClass:
   * @parent_class: The parent class.
   * @compute_child_allocation:
    }
  {< public > }
  {< private > }
    _GtkFrameClass = record
        parent_class : GtkWidgetClass;
        compute_child_allocation : procedure (frame:PGtkFrame; allocation:PGtkAllocation);cdecl;
        padding : array[0..7] of gpointer;
      end;

  { Zeile entfernt  }

  function gtk_frame_get_type:GType;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_frame_new(_label:Pchar):^GtkWidget;

  { Zeile entfernt  }
(* Const before type ignored *)
  procedure gtk_frame_set_label(frame:PGtkFrame; _label:Pchar);

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_frame_get_label(frame:PGtkFrame):^char;

  { Zeile entfernt  }
  procedure gtk_frame_set_label_widget(frame:PGtkFrame; label_widget:PGtkWidget);

  { Zeile entfernt  }
  function gtk_frame_get_label_widget(frame:PGtkFrame):^GtkWidget;

  { Zeile entfernt  }
  procedure gtk_frame_set_label_align(frame:PGtkFrame; xalign:single);

  { Zeile entfernt  }
  function gtk_frame_get_label_align(frame:PGtkFrame):single;

  { Zeile entfernt  }
  procedure gtk_frame_set_child(frame:PGtkFrame; child:PGtkWidget);

  { Zeile entfernt  }
  function gtk_frame_get_child(frame:PGtkFrame):^GtkWidget;

  { Zeile entfernt  }
{$endif}
  { __GTK_FRAME_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_FRAME : longint; { return type might be wrong }
    begin
      GTK_TYPE_FRAME:=gtk_frame_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_FRAME(obj : longint) : longint;
  begin
    GTK_FRAME:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_FRAME,GtkFrame);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_FRAME_CLASS(klass : longint) : longint;
  begin
    GTK_FRAME_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_FRAME,GtkFrameClass);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_FRAME(obj : longint) : longint;
  begin
    GTK_IS_FRAME:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_FRAME);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_FRAME_CLASS(klass : longint) : longint;
  begin
    GTK_IS_FRAME_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_FRAME);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_FRAME_GET_CLASS(obj : longint) : longint;
  begin
    GTK_FRAME_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_FRAME,GtkFrameClass);
  end;

  function gtk_frame_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gtk_frame_new(_label:Pchar):PGtkWidget;
  begin
    { You must implement this function }
  end;
  procedure gtk_frame_set_label(frame:PGtkFrame; _label:Pchar);
  begin
    { You must implement this function }
  end;
  function gtk_frame_get_label(frame:PGtkFrame):Pchar;
  begin
    { You must implement this function }
  end;
  procedure gtk_frame_set_label_widget(frame:PGtkFrame; label_widget:PGtkWidget);
  begin
    { You must implement this function }
  end;
  function gtk_frame_get_label_widget(frame:PGtkFrame):PGtkWidget;
  begin
    { You must implement this function }
  end;
  procedure gtk_frame_set_label_align(frame:PGtkFrame; xalign:single);
  begin
    { You must implement this function }
  end;
  function gtk_frame_get_label_align(frame:PGtkFrame):single;
  begin
    { You must implement this function }
  end;
  procedure gtk_frame_set_child(frame:PGtkFrame; child:PGtkWidget);
  begin
    { You must implement this function }
  end;
  function gtk_frame_get_child(frame:PGtkFrame):PGtkWidget;
  begin
    { You must implement this function }
  end;

