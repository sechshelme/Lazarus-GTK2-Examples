
  Type
  Pchar  = ^char;
  PGdkDisplay  = ^GdkDisplay;
  PGdkRGBA  = ^GdkRGBA;
  PGtkBorder  = ^GtkBorder;
  PGtkStyleContext  = ^GtkStyleContext;
  PGtkStyleProvider  = ^GtkStyleProvider;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { GTK - The GIMP Toolkit
   * Copyright (C) 2010 Carlos Garnacho <carlosg@gnome.org>
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
{$ifndef __GTK_STYLE_CONTEXT_H__}
{$define __GTK_STYLE_CONTEXT_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/css/gtkcss.h>}
{$include <gtk/gtkborder.h>}
{$include <gtk/gtkstyleprovider.h>}
{$include <gtk/gtktypes.h>}
  { Zeile entfernt  }

  { was #define dname def_expr }
  function GTK_TYPE_STYLE_CONTEXT : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_STYLE_CONTEXT(o : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_STYLE_CONTEXT_CLASS(c : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_STYLE_CONTEXT(o : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_STYLE_CONTEXT_CLASS(c : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_STYLE_CONTEXT_GET_CLASS(o : longint) : longint;  


  type
    _GtkStyleContextClass = GtkStyleContextClass;
    _GtkStyleContext = record
        parent_object : GObject;
      end;

  { Padding for future expansion  }
    _GtkStyleContextClass = record
        parent_class : GObjectClass;
        changed : procedure (context:PGtkStyleContext);cdecl;
        _gtk_reserved1 : procedure ;cdecl;
        _gtk_reserved2 : procedure ;cdecl;
        _gtk_reserved3 : procedure ;cdecl;
        _gtk_reserved4 : procedure ;cdecl;
      end;

  { Zeile entfernt  }

  function gtk_style_context_get_type:GType;

  { Zeile entfernt  }
  procedure gtk_style_context_add_provider_for_display(display:PGdkDisplay; provider:PGtkStyleProvider; priority:guint);

  { Zeile entfernt  }
  procedure gtk_style_context_remove_provider_for_display(display:PGdkDisplay; provider:PGtkStyleProvider);

  { Zeile entfernt  }
  procedure gtk_style_context_add_provider(context:PGtkStyleContext; provider:PGtkStyleProvider; priority:guint);

  { Zeile entfernt  }
  procedure gtk_style_context_remove_provider(context:PGtkStyleContext; provider:PGtkStyleProvider);

  { Zeile entfernt  }
  procedure gtk_style_context_save(context:PGtkStyleContext);

  { Zeile entfernt  }
  procedure gtk_style_context_restore(context:PGtkStyleContext);

  { Zeile entfernt  }
  procedure gtk_style_context_set_state(context:PGtkStyleContext; flags:GtkStateFlags);

  { Zeile entfernt  }
  function gtk_style_context_get_state(context:PGtkStyleContext):GtkStateFlags;

  { Zeile entfernt  }
  procedure gtk_style_context_set_scale(context:PGtkStyleContext; scale:longint);

  { Zeile entfernt  }
  function gtk_style_context_get_scale(context:PGtkStyleContext):longint;

  { Zeile entfernt  }
(* Const before type ignored *)
  procedure gtk_style_context_add_class(context:PGtkStyleContext; class_name:Pchar);

  { Zeile entfernt  }
(* Const before type ignored *)
  procedure gtk_style_context_remove_class(context:PGtkStyleContext; class_name:Pchar);

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_style_context_has_class(context:PGtkStyleContext; class_name:Pchar):gboolean;

  { Zeile entfernt  }
  procedure gtk_style_context_set_display(context:PGtkStyleContext; display:PGdkDisplay);

  { Zeile entfernt  }
  function gtk_style_context_get_display(context:PGtkStyleContext):^GdkDisplay;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_style_context_lookup_color(context:PGtkStyleContext; color_name:Pchar; color:PGdkRGBA):gboolean;

  { Some helper functions to retrieve most common properties  }
  { Zeile entfernt  }
  procedure gtk_style_context_get_color(context:PGtkStyleContext; color:PGdkRGBA);

  { Zeile entfernt  }
  procedure gtk_style_context_get_border(context:PGtkStyleContext; border:PGtkBorder);

  { Zeile entfernt  }
  procedure gtk_style_context_get_padding(context:PGtkStyleContext; padding:PGtkBorder);

  { Zeile entfernt  }
  procedure gtk_style_context_get_margin(context:PGtkStyleContext; margin:PGtkBorder);


  type
    GtkStyleContextPrintFlags = (GTK_STYLE_CONTEXT_PRINT_NONE := 0,GTK_STYLE_CONTEXT_PRINT_RECURSE := 1 shl 0,
      GTK_STYLE_CONTEXT_PRINT_SHOW_STYLE := 1 shl 1,
      GTK_STYLE_CONTEXT_PRINT_SHOW_CHANGE := 1 shl 2
      );
  { Zeile entfernt  }

  function gtk_style_context_to_string(context:PGtkStyleContext; flags:GtkStyleContextPrintFlags):^char;

  { Zeile entfernt  }
{$endif}
  { __GTK_STYLE_CONTEXT_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_STYLE_CONTEXT : longint; { return type might be wrong }
    begin
      GTK_TYPE_STYLE_CONTEXT:=gtk_style_context_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_STYLE_CONTEXT(o : longint) : longint;
  begin
    GTK_STYLE_CONTEXT:=G_TYPE_CHECK_INSTANCE_CAST(o,GTK_TYPE_STYLE_CONTEXT,GtkStyleContext);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_STYLE_CONTEXT_CLASS(c : longint) : longint;
  begin
    GTK_STYLE_CONTEXT_CLASS:=G_TYPE_CHECK_CLASS_CAST(c,GTK_TYPE_STYLE_CONTEXT,GtkStyleContextClass);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_STYLE_CONTEXT(o : longint) : longint;
  begin
    GTK_IS_STYLE_CONTEXT:=G_TYPE_CHECK_INSTANCE_TYPE(o,GTK_TYPE_STYLE_CONTEXT);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_STYLE_CONTEXT_CLASS(c : longint) : longint;
  begin
    GTK_IS_STYLE_CONTEXT_CLASS:=G_TYPE_CHECK_CLASS_TYPE(c,GTK_TYPE_STYLE_CONTEXT);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_STYLE_CONTEXT_GET_CLASS(o : longint) : longint;
  begin
    GTK_STYLE_CONTEXT_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(o,GTK_TYPE_STYLE_CONTEXT,GtkStyleContextClass);
  end;

  function gtk_style_context_get_type:GType;
  begin
    { You must implement this function }
  end;
  procedure gtk_style_context_add_provider_for_display(display:PGdkDisplay; provider:PGtkStyleProvider; priority:guint);
  begin
    { You must implement this function }
  end;
  procedure gtk_style_context_remove_provider_for_display(display:PGdkDisplay; provider:PGtkStyleProvider);
  begin
    { You must implement this function }
  end;
  procedure gtk_style_context_add_provider(context:PGtkStyleContext; provider:PGtkStyleProvider; priority:guint);
  begin
    { You must implement this function }
  end;
  procedure gtk_style_context_remove_provider(context:PGtkStyleContext; provider:PGtkStyleProvider);
  begin
    { You must implement this function }
  end;
  procedure gtk_style_context_save(context:PGtkStyleContext);
  begin
    { You must implement this function }
  end;
  procedure gtk_style_context_restore(context:PGtkStyleContext);
  begin
    { You must implement this function }
  end;
  procedure gtk_style_context_set_state(context:PGtkStyleContext; flags:GtkStateFlags);
  begin
    { You must implement this function }
  end;
  function gtk_style_context_get_state(context:PGtkStyleContext):GtkStateFlags;
  begin
    { You must implement this function }
  end;
  procedure gtk_style_context_set_scale(context:PGtkStyleContext; scale:longint);
  begin
    { You must implement this function }
  end;
  function gtk_style_context_get_scale(context:PGtkStyleContext):longint;
  begin
    { You must implement this function }
  end;
  procedure gtk_style_context_add_class(context:PGtkStyleContext; class_name:Pchar);
  begin
    { You must implement this function }
  end;
  procedure gtk_style_context_remove_class(context:PGtkStyleContext; class_name:Pchar);
  begin
    { You must implement this function }
  end;
  function gtk_style_context_has_class(context:PGtkStyleContext; class_name:Pchar):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_style_context_set_display(context:PGtkStyleContext; display:PGdkDisplay);
  begin
    { You must implement this function }
  end;
  function gtk_style_context_get_display(context:PGtkStyleContext):PGdkDisplay;
  begin
    { You must implement this function }
  end;
  function gtk_style_context_lookup_color(context:PGtkStyleContext; color_name:Pchar; color:PGdkRGBA):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_style_context_get_color(context:PGtkStyleContext; color:PGdkRGBA);
  begin
    { You must implement this function }
  end;
  procedure gtk_style_context_get_border(context:PGtkStyleContext; border:PGtkBorder);
  begin
    { You must implement this function }
  end;
  procedure gtk_style_context_get_padding(context:PGtkStyleContext; padding:PGtkBorder);
  begin
    { You must implement this function }
  end;
  procedure gtk_style_context_get_margin(context:PGtkStyleContext; margin:PGtkBorder);
  begin
    { You must implement this function }
  end;
  function gtk_style_context_to_string(context:PGtkStyleContext; flags:GtkStyleContextPrintFlags):Pchar;
  begin
    { You must implement this function }
  end;

