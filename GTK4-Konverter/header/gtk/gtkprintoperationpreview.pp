
  Type
  PGtkPageSetup  = ^GtkPageSetup;
  PGtkPrintContext  = ^GtkPrintContext;
  PGtkPrintOperationPreview  = ^GtkPrintOperationPreview;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { GTK - The GIMP Toolkit
   * gtkprintoperationpreview.h: Abstract print preview interface
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
{$ifndef __GTK_PRINT_OPERATION_PREVIEW_H__}
{$define __GTK_PRINT_OPERATION_PREVIEW_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <cairo.h>}
{$include <gtk/gtkprintcontext.h>}

  { was #define dname def_expr }
  function GTK_TYPE_PRINT_OPERATION_PREVIEW : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_PRINT_OPERATION_PREVIEW(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_PRINT_OPERATION_PREVIEW(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_PRINT_OPERATION_PREVIEW_GET_IFACE(obj : longint) : longint;  


  type
    _GtkPrintOperationPreview = GtkPrintOperationPreview;
  {dummy typedef  }
    _GtkPrintOperationPreviewIface = GtkPrintOperationPreviewIface;
  { signals  }
  { methods  }
  { Padding for future expansion  }
    _GtkPrintOperationPreviewIface = record
        g_iface : GTypeInterface;
        ready : procedure (preview:PGtkPrintOperationPreview; context:PGtkPrintContext);cdecl;
        got_page_size : procedure (preview:PGtkPrintOperationPreview; context:PGtkPrintContext; page_setup:PGtkPageSetup);cdecl;
        render_page : procedure (preview:PGtkPrintOperationPreview; page_nr:longint);cdecl;
        is_selected : function (preview:PGtkPrintOperationPreview; page_nr:longint):gboolean;cdecl;
        end_preview : procedure (preview:PGtkPrintOperationPreview);cdecl;
        _gtk_reserved1 : procedure ;cdecl;
        _gtk_reserved2 : procedure ;cdecl;
        _gtk_reserved3 : procedure ;cdecl;
        _gtk_reserved4 : procedure ;cdecl;
        _gtk_reserved5 : procedure ;cdecl;
        _gtk_reserved6 : procedure ;cdecl;
        _gtk_reserved7 : procedure ;cdecl;
        _gtk_reserved8 : procedure ;cdecl;
      end;

(* error 
GType   gtk_print_operation_preview_get_type       (void) G_GNUC_CONST;
 in declarator_list *)

    var
 : GType;

  procedure gtk_print_operation_preview_render_page(preview:PGtkPrintOperationPreview; page_nr:longint);

  procedure gtk_print_operation_preview_end_preview(preview:PGtkPrintOperationPreview);

  function gtk_print_operation_preview_is_selected(preview:PGtkPrintOperationPreview; page_nr:longint):gboolean;

{$endif}
  { __GTK_PRINT_OPERATION_PREVIEW_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_PRINT_OPERATION_PREVIEW : longint; { return type might be wrong }
    begin
      GTK_TYPE_PRINT_OPERATION_PREVIEW:=gtk_print_operation_preview_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_PRINT_OPERATION_PREVIEW(obj : longint) : longint;
  begin
    GTK_PRINT_OPERATION_PREVIEW:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_PRINT_OPERATION_PREVIEW,GtkPrintOperationPreview);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_PRINT_OPERATION_PREVIEW(obj : longint) : longint;
  begin
    GTK_IS_PRINT_OPERATION_PREVIEW:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_PRINT_OPERATION_PREVIEW);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_PRINT_OPERATION_PREVIEW_GET_IFACE(obj : longint) : longint;
  begin
    GTK_PRINT_OPERATION_PREVIEW_GET_IFACE:=G_TYPE_INSTANCE_GET_INTERFACE(obj,GTK_TYPE_PRINT_OPERATION_PREVIEW,GtkPrintOperationPreviewIface);
  end;

  procedure gtk_print_operation_preview_render_page(preview:PGtkPrintOperationPreview; page_nr:longint);
  begin
    { You must implement this function }
  end;
  procedure gtk_print_operation_preview_end_preview(preview:PGtkPrintOperationPreview);
  begin
    { You must implement this function }
  end;
  function gtk_print_operation_preview_is_selected(preview:PGtkPrintOperationPreview; page_nr:longint):gboolean;
  begin
    { You must implement this function }
  end;

