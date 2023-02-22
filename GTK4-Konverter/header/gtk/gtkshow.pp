
  Type
  Pchar  = ^char;
  PGAsyncResult  = ^GAsyncResult;
  PGCancellable  = ^GCancellable;
  PGError  = ^GError;
  PGtkWindow  = ^GtkWindow;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  {
   * GTK - The GIMP Toolkit
   * Copyright (C) 2008  Jaap Haitsma <jaap@haitsma.org>
   *
   * All rights reserved.
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
{$ifndef __GTK_SHOW_H__}
{$define __GTK_SHOW_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwindow.h>}
(* Const before type ignored *)

  procedure gtk_show_uri_full(parent:PGtkWindow; uri:Pchar; timestamp:guint32; cancellable:PGCancellable; callback:GAsyncReadyCallback; 
              user_data:gpointer);

  function gtk_show_uri_full_finish(parent:PGtkWindow; result:PGAsyncResult; error:PPGError):gboolean;

(* Const before type ignored *)
  procedure gtk_show_uri(parent:PGtkWindow; uri:Pchar; timestamp:guint32);

{$endif}
  { __GTK_SHOW_H__  }
  procedure gtk_show_uri_full(parent:PGtkWindow; uri:Pchar; timestamp:guint32; cancellable:PGCancellable; callback:GAsyncReadyCallback; 
              user_data:gpointer);
  begin
    { You must implement this function }
  end;
  function gtk_show_uri_full_finish(parent:PGtkWindow; result:PGAsyncResult; error:PPGError):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_show_uri(parent:PGtkWindow; uri:Pchar; timestamp:guint32);
  begin
    { You must implement this function }
  end;

