
  Type
  Pcairo_t  = ^cairo_t;
  Pdouble  = ^double;
  PGtkPageSetup  = ^GtkPageSetup;
  PGtkPrintContext  = ^GtkPrintContext;
  PPangoContext  = ^PangoContext;
  PPangoFontMap  = ^PangoFontMap;
  PPangoLayout  = ^PangoLayout;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { GTK - The GIMP Toolkit
   * gtkprintcontext.h: Print Context
   * Copyright (C) 2006, Red Hat, Inc.
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
{$ifndef __GTK_PRINT_CONTEXT_H__}
{$define __GTK_PRINT_CONTEXT_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <pango/pango.h>}
{$include <gtk/gtkpagesetup.h>}

  type
    _GtkPrintContext = GtkPrintContext;

  { was #define dname def_expr }
  function GTK_TYPE_PRINT_CONTEXT : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_PRINT_CONTEXT(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_PRINT_CONTEXT(obj : longint) : longint;  

(* error 
GType          gtk_print_context_get_type (void) G_GNUC_CONST;
 in declarator_list *)

    var
 : GType;
  { Rendering  }

  function gtk_print_context_get_cairo_context(context:PGtkPrintContext):^cairo_t;

  function gtk_print_context_get_page_setup(context:PGtkPrintContext):^GtkPageSetup;

  function gtk_print_context_get_width(context:PGtkPrintContext):double;

  function gtk_print_context_get_height(context:PGtkPrintContext):double;

  function gtk_print_context_get_dpi_x(context:PGtkPrintContext):double;

  function gtk_print_context_get_dpi_y(context:PGtkPrintContext):double;

  function gtk_print_context_get_hard_margins(context:PGtkPrintContext; top:Pdouble; bottom:Pdouble; left:Pdouble; right:Pdouble):gboolean;

  { Fonts  }
  function gtk_print_context_get_pango_fontmap(context:PGtkPrintContext):^PangoFontMap;

  function gtk_print_context_create_pango_context(context:PGtkPrintContext):^PangoContext;

  function gtk_print_context_create_pango_layout(context:PGtkPrintContext):^PangoLayout;

  { Needed for preview implementations  }
  procedure gtk_print_context_set_cairo_context(context:PGtkPrintContext; cr:Pcairo_t; dpi_x:double; dpi_y:double);

{$endif}
  { __GTK_PRINT_CONTEXT_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_PRINT_CONTEXT : longint; { return type might be wrong }
    begin
      GTK_TYPE_PRINT_CONTEXT:=gtk_print_context_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_PRINT_CONTEXT(obj : longint) : longint;
  begin
    GTK_PRINT_CONTEXT:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_PRINT_CONTEXT,GtkPrintContext);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_PRINT_CONTEXT(obj : longint) : longint;
  begin
    GTK_IS_PRINT_CONTEXT:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_PRINT_CONTEXT);
  end;

  function gtk_print_context_get_cairo_context(context:PGtkPrintContext):Pcairo_t;
  begin
    { You must implement this function }
  end;
  function gtk_print_context_get_page_setup(context:PGtkPrintContext):PGtkPageSetup;
  begin
    { You must implement this function }
  end;
  function gtk_print_context_get_width(context:PGtkPrintContext):double;
  begin
    { You must implement this function }
  end;
  function gtk_print_context_get_height(context:PGtkPrintContext):double;
  begin
    { You must implement this function }
  end;
  function gtk_print_context_get_dpi_x(context:PGtkPrintContext):double;
  begin
    { You must implement this function }
  end;
  function gtk_print_context_get_dpi_y(context:PGtkPrintContext):double;
  begin
    { You must implement this function }
  end;
  function gtk_print_context_get_hard_margins(context:PGtkPrintContext; top:Pdouble; bottom:Pdouble; left:Pdouble; right:Pdouble):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_print_context_get_pango_fontmap(context:PGtkPrintContext):PPangoFontMap;
  begin
    { You must implement this function }
  end;
  function gtk_print_context_create_pango_context(context:PGtkPrintContext):PPangoContext;
  begin
    { You must implement this function }
  end;
  function gtk_print_context_create_pango_layout(context:PGtkPrintContext):PPangoLayout;
  begin
    { You must implement this function }
  end;
  procedure gtk_print_context_set_cairo_context(context:PGtkPrintContext; cr:Pcairo_t; dpi_x:double; dpi_y:double);
  begin
    { You must implement this function }
  end;

