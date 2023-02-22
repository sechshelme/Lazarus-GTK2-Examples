
  Type
  Pchar  = ^char;
  PGtkSelectionModel  = ^GtkSelectionModel;
  PGtkStack  = ^GtkStack;
  PGtkStackPage  = ^GtkStackPage;
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
{$ifndef __GTK_STACK_H__}
{$define __GTK_STACK_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwidget.h>}
{$include <gtk/gtkselectionmodel.h>}
  { Zeile entfernt  }

  { was #define dname def_expr }
  function GTK_TYPE_STACK : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_STACK(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_STACK(obj : longint) : longint;  


  type
    _GtkStack = GtkStack;

  { was #define dname def_expr }
  function GTK_TYPE_STACK_PAGE : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_STACK_PAGE(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_STACK_PAGE(obj : longint) : longint;  


  type
    _GtkStackPage = GtkStackPage;

    GtkStackTransitionType = (GTK_STACK_TRANSITION_TYPE_NONE,GTK_STACK_TRANSITION_TYPE_CROSSFADE,
      GTK_STACK_TRANSITION_TYPE_SLIDE_RIGHT,
      GTK_STACK_TRANSITION_TYPE_SLIDE_LEFT,
      GTK_STACK_TRANSITION_TYPE_SLIDE_UP,GTK_STACK_TRANSITION_TYPE_SLIDE_DOWN,
      GTK_STACK_TRANSITION_TYPE_SLIDE_LEFT_RIGHT,
      GTK_STACK_TRANSITION_TYPE_SLIDE_UP_DOWN,
      GTK_STACK_TRANSITION_TYPE_OVER_UP,GTK_STACK_TRANSITION_TYPE_OVER_DOWN,
      GTK_STACK_TRANSITION_TYPE_OVER_LEFT,
      GTK_STACK_TRANSITION_TYPE_OVER_RIGHT,
      GTK_STACK_TRANSITION_TYPE_UNDER_UP,GTK_STACK_TRANSITION_TYPE_UNDER_DOWN,
      GTK_STACK_TRANSITION_TYPE_UNDER_LEFT,
      GTK_STACK_TRANSITION_TYPE_UNDER_RIGHT,
      GTK_STACK_TRANSITION_TYPE_OVER_UP_DOWN,
      GTK_STACK_TRANSITION_TYPE_OVER_DOWN_UP,
      GTK_STACK_TRANSITION_TYPE_OVER_LEFT_RIGHT,
      GTK_STACK_TRANSITION_TYPE_OVER_RIGHT_LEFT,
      GTK_STACK_TRANSITION_TYPE_ROTATE_LEFT,
      GTK_STACK_TRANSITION_TYPE_ROTATE_RIGHT,
      GTK_STACK_TRANSITION_TYPE_ROTATE_LEFT_RIGHT
      );
  { Zeile entfernt  }

  function gtk_stack_page_get_type:GType;

  { Zeile entfernt  }
  function gtk_stack_page_get_child(self:PGtkStackPage):^GtkWidget;

  { Zeile entfernt  }
  function gtk_stack_page_get_visible(self:PGtkStackPage):gboolean;

  { Zeile entfernt  }
  procedure gtk_stack_page_set_visible(self:PGtkStackPage; visible:gboolean);

  { Zeile entfernt  }
  function gtk_stack_page_get_needs_attention(self:PGtkStackPage):gboolean;

  { Zeile entfernt  }
  procedure gtk_stack_page_set_needs_attention(self:PGtkStackPage; setting:gboolean);

  { Zeile entfernt  }
  function gtk_stack_page_get_use_underline(self:PGtkStackPage):gboolean;

  { Zeile entfernt  }
  procedure gtk_stack_page_set_use_underline(self:PGtkStackPage; setting:gboolean);

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_stack_page_get_name(self:PGtkStackPage):^char;

  { Zeile entfernt  }
(* Const before type ignored *)
  procedure gtk_stack_page_set_name(self:PGtkStackPage; setting:Pchar);

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_stack_page_get_title(self:PGtkStackPage):^char;

  { Zeile entfernt  }
(* Const before type ignored *)
  procedure gtk_stack_page_set_title(self:PGtkStackPage; setting:Pchar);

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_stack_page_get_icon_name(self:PGtkStackPage):^char;

  { Zeile entfernt  }
(* Const before type ignored *)
  procedure gtk_stack_page_set_icon_name(self:PGtkStackPage; setting:Pchar);

  { Zeile entfernt  }
  function gtk_stack_get_type:GType;

  { Zeile entfernt  }
  function gtk_stack_new:^GtkWidget;

  { Zeile entfernt  }
  function gtk_stack_add_child(stack:PGtkStack; child:PGtkWidget):^GtkStackPage;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_stack_add_named(stack:PGtkStack; child:PGtkWidget; name:Pchar):^GtkStackPage;

  { Zeile entfernt  }
(* Const before type ignored *)
(* Const before type ignored *)
  function gtk_stack_add_titled(stack:PGtkStack; child:PGtkWidget; name:Pchar; title:Pchar):^GtkStackPage;

  { Zeile entfernt  }
  procedure gtk_stack_remove(stack:PGtkStack; child:PGtkWidget);

  { Zeile entfernt  }
  function gtk_stack_get_page(stack:PGtkStack; child:PGtkWidget):^GtkStackPage;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_stack_get_child_by_name(stack:PGtkStack; name:Pchar):^GtkWidget;

  { Zeile entfernt  }
  procedure gtk_stack_set_visible_child(stack:PGtkStack; child:PGtkWidget);

  { Zeile entfernt  }
  function gtk_stack_get_visible_child(stack:PGtkStack):^GtkWidget;

  { Zeile entfernt  }
(* Const before type ignored *)
  procedure gtk_stack_set_visible_child_name(stack:PGtkStack; name:Pchar);

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_stack_get_visible_child_name(stack:PGtkStack):^char;

  { Zeile entfernt  }
(* Const before type ignored *)
  procedure gtk_stack_set_visible_child_full(stack:PGtkStack; name:Pchar; transition:GtkStackTransitionType);

  { Zeile entfernt  }
  procedure gtk_stack_set_hhomogeneous(stack:PGtkStack; hhomogeneous:gboolean);

  { Zeile entfernt  }
  function gtk_stack_get_hhomogeneous(stack:PGtkStack):gboolean;

  { Zeile entfernt  }
  procedure gtk_stack_set_vhomogeneous(stack:PGtkStack; vhomogeneous:gboolean);

  { Zeile entfernt  }
  function gtk_stack_get_vhomogeneous(stack:PGtkStack):gboolean;

  { Zeile entfernt  }
  procedure gtk_stack_set_transition_duration(stack:PGtkStack; duration:guint);

  { Zeile entfernt  }
  function gtk_stack_get_transition_duration(stack:PGtkStack):guint;

  { Zeile entfernt  }
  procedure gtk_stack_set_transition_type(stack:PGtkStack; transition:GtkStackTransitionType);

  { Zeile entfernt  }
  function gtk_stack_get_transition_type(stack:PGtkStack):GtkStackTransitionType;

  { Zeile entfernt  }
  function gtk_stack_get_transition_running(stack:PGtkStack):gboolean;

  { Zeile entfernt  }
  procedure gtk_stack_set_interpolate_size(stack:PGtkStack; interpolate_size:gboolean);

  { Zeile entfernt  }
  function gtk_stack_get_interpolate_size(stack:PGtkStack):gboolean;

  { Zeile entfernt  }
  function gtk_stack_get_pages(stack:PGtkStack):^GtkSelectionModel;

  { Zeile entfernt  }
{$endif}
  { was #define dname def_expr }
  function GTK_TYPE_STACK : longint; { return type might be wrong }
    begin
      GTK_TYPE_STACK:=gtk_stack_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_STACK(obj : longint) : longint;
  begin
    GTK_STACK:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_STACK,GtkStack);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_STACK(obj : longint) : longint;
  begin
    GTK_IS_STACK:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_STACK);
  end;

  { was #define dname def_expr }
  function GTK_TYPE_STACK_PAGE : longint; { return type might be wrong }
    begin
      GTK_TYPE_STACK_PAGE:=gtk_stack_page_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_STACK_PAGE(obj : longint) : longint;
  begin
    GTK_STACK_PAGE:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_STACK_PAGE,GtkStackPage);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_STACK_PAGE(obj : longint) : longint;
  begin
    GTK_IS_STACK_PAGE:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_STACK_PAGE);
  end;

  function gtk_stack_page_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gtk_stack_page_get_child(self:PGtkStackPage):PGtkWidget;
  begin
    { You must implement this function }
  end;
  function gtk_stack_page_get_visible(self:PGtkStackPage):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_stack_page_set_visible(self:PGtkStackPage; visible:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_stack_page_get_needs_attention(self:PGtkStackPage):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_stack_page_set_needs_attention(self:PGtkStackPage; setting:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_stack_page_get_use_underline(self:PGtkStackPage):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_stack_page_set_use_underline(self:PGtkStackPage; setting:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_stack_page_get_name(self:PGtkStackPage):Pchar;
  begin
    { You must implement this function }
  end;
  procedure gtk_stack_page_set_name(self:PGtkStackPage; setting:Pchar);
  begin
    { You must implement this function }
  end;
  function gtk_stack_page_get_title(self:PGtkStackPage):Pchar;
  begin
    { You must implement this function }
  end;
  procedure gtk_stack_page_set_title(self:PGtkStackPage; setting:Pchar);
  begin
    { You must implement this function }
  end;
  function gtk_stack_page_get_icon_name(self:PGtkStackPage):Pchar;
  begin
    { You must implement this function }
  end;
  procedure gtk_stack_page_set_icon_name(self:PGtkStackPage; setting:Pchar);
  begin
    { You must implement this function }
  end;
  function gtk_stack_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gtk_stack_new:PGtkWidget;
  begin
    { You must implement this function }
  end;
  function gtk_stack_add_child(stack:PGtkStack; child:PGtkWidget):PGtkStackPage;
  begin
    { You must implement this function }
  end;
  function gtk_stack_add_named(stack:PGtkStack; child:PGtkWidget; name:Pchar):PGtkStackPage;
  begin
    { You must implement this function }
  end;
  function gtk_stack_add_titled(stack:PGtkStack; child:PGtkWidget; name:Pchar; title:Pchar):PGtkStackPage;
  begin
    { You must implement this function }
  end;
  procedure gtk_stack_remove(stack:PGtkStack; child:PGtkWidget);
  begin
    { You must implement this function }
  end;
  function gtk_stack_get_page(stack:PGtkStack; child:PGtkWidget):PGtkStackPage;
  begin
    { You must implement this function }
  end;
  function gtk_stack_get_child_by_name(stack:PGtkStack; name:Pchar):PGtkWidget;
  begin
    { You must implement this function }
  end;
  procedure gtk_stack_set_visible_child(stack:PGtkStack; child:PGtkWidget);
  begin
    { You must implement this function }
  end;
  function gtk_stack_get_visible_child(stack:PGtkStack):PGtkWidget;
  begin
    { You must implement this function }
  end;
  procedure gtk_stack_set_visible_child_name(stack:PGtkStack; name:Pchar);
  begin
    { You must implement this function }
  end;
  function gtk_stack_get_visible_child_name(stack:PGtkStack):Pchar;
  begin
    { You must implement this function }
  end;
  procedure gtk_stack_set_visible_child_full(stack:PGtkStack; name:Pchar; transition:GtkStackTransitionType);
  begin
    { You must implement this function }
  end;
  procedure gtk_stack_set_hhomogeneous(stack:PGtkStack; hhomogeneous:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_stack_get_hhomogeneous(stack:PGtkStack):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_stack_set_vhomogeneous(stack:PGtkStack; vhomogeneous:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_stack_get_vhomogeneous(stack:PGtkStack):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_stack_set_transition_duration(stack:PGtkStack; duration:guint);
  begin
    { You must implement this function }
  end;
  function gtk_stack_get_transition_duration(stack:PGtkStack):guint;
  begin
    { You must implement this function }
  end;
  procedure gtk_stack_set_transition_type(stack:PGtkStack; transition:GtkStackTransitionType);
  begin
    { You must implement this function }
  end;
  function gtk_stack_get_transition_type(stack:PGtkStack):GtkStackTransitionType;
  begin
    { You must implement this function }
  end;
  function gtk_stack_get_transition_running(stack:PGtkStack):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_stack_set_interpolate_size(stack:PGtkStack; interpolate_size:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_stack_get_interpolate_size(stack:PGtkStack):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_stack_get_pages(stack:PGtkStack):PGtkSelectionModel;
  begin
    { You must implement this function }
  end;

