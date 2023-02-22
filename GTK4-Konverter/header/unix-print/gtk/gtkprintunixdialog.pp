
  Type
  Pchar  = ^char;
  PGtkPageSetup  = ^GtkPageSetup;
  PGtkPrinter  = ^GtkPrinter;
  PGtkPrintSettings  = ^GtkPrintSettings;
  PGtkPrintUnixDialog  = ^GtkPrintUnixDialog;
  PGtkWidget  = ^GtkWidget;
  PGtkWindow  = ^GtkWindow;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { GtkPrintUnixDialog
   * Copyright (C) 2006 John (J5) Palmieri <johnp@redhat.com>
   *
   * This library is free software; you can redistribute it and/or
   * modify it under the terms of the GNU Lesser General Public
   * License as published by the Free Software Foundation; either
   * version 2 of the License, or (at your option) any later version.
   *
   * This library is distributed in the hope that it will be useful,
   * but WITHOUT ANY WARRANTY; without even the implied warranty of
   * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the GNU
   * Lesser General Public License for more details.
   *
   * You should have received a copy of the GNU Lesser General Public
   * License along with this library. If not, see <http://www.gnu.org/licenses/>.
    }
{$ifndef __GTK_PRINT_UNIX_DIALOG_H__}
{$define __GTK_PRINT_UNIX_DIALOG_H__}  
{$if !defined (__GTK_UNIX_PRINT_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtkunixprint.h> can be included directly."}
{$endif}
{$include <gtk/gtk.h>}
{$include <gtk/gtkprinter.h>}
{$include <gtk/gtkprintjob.h>}
  { Zeile entfernt  }

  { was #define dname def_expr }
  function GTK_TYPE_PRINT_UNIX_DIALOG : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_PRINT_UNIX_DIALOG(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_PRINT_UNIX_DIALOG(obj : longint) : longint;  


  type
    _GtkPrintUnixDialog = GtkPrintUnixDialog;
  { Zeile entfernt  }

  function gtk_print_unix_dialog_get_type:GType;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_print_unix_dialog_new(title:Pchar; parent:PGtkWindow):^GtkWidget;

  { Zeile entfernt  }
  procedure gtk_print_unix_dialog_set_page_setup(dialog:PGtkPrintUnixDialog; page_setup:PGtkPageSetup);

  { Zeile entfernt  }
  function gtk_print_unix_dialog_get_page_setup(dialog:PGtkPrintUnixDialog):^GtkPageSetup;

  { Zeile entfernt  }
  procedure gtk_print_unix_dialog_set_current_page(dialog:PGtkPrintUnixDialog; current_page:longint);

  { Zeile entfernt  }
  function gtk_print_unix_dialog_get_current_page(dialog:PGtkPrintUnixDialog):longint;

  { Zeile entfernt  }
  procedure gtk_print_unix_dialog_set_settings(dialog:PGtkPrintUnixDialog; settings:PGtkPrintSettings);

  { Zeile entfernt  }
  function gtk_print_unix_dialog_get_settings(dialog:PGtkPrintUnixDialog):^GtkPrintSettings;

  { Zeile entfernt  }
  function gtk_print_unix_dialog_get_selected_printer(dialog:PGtkPrintUnixDialog):^GtkPrinter;

  { Zeile entfernt  }
  procedure gtk_print_unix_dialog_add_custom_tab(dialog:PGtkPrintUnixDialog; child:PGtkWidget; tab_label:PGtkWidget);

  { Zeile entfernt  }
  procedure gtk_print_unix_dialog_set_manual_capabilities(dialog:PGtkPrintUnixDialog; capabilities:GtkPrintCapabilities);

  { Zeile entfernt  }
  function gtk_print_unix_dialog_get_manual_capabilities(dialog:PGtkPrintUnixDialog):GtkPrintCapabilities;

  { Zeile entfernt  }
  procedure gtk_print_unix_dialog_set_support_selection(dialog:PGtkPrintUnixDialog; support_selection:gboolean);

  { Zeile entfernt  }
  function gtk_print_unix_dialog_get_support_selection(dialog:PGtkPrintUnixDialog):gboolean;

  { Zeile entfernt  }
  procedure gtk_print_unix_dialog_set_has_selection(dialog:PGtkPrintUnixDialog; has_selection:gboolean);

  { Zeile entfernt  }
  function gtk_print_unix_dialog_get_has_selection(dialog:PGtkPrintUnixDialog):gboolean;

  { Zeile entfernt  }
  procedure gtk_print_unix_dialog_set_embed_page_setup(dialog:PGtkPrintUnixDialog; embed:gboolean);

  { Zeile entfernt  }
  function gtk_print_unix_dialog_get_embed_page_setup(dialog:PGtkPrintUnixDialog):gboolean;

  { Zeile entfernt  }
  function gtk_print_unix_dialog_get_page_setup_set(dialog:PGtkPrintUnixDialog):gboolean;

  { Zeile entfernt  }
{$endif}
  { __GTK_PRINT_UNIX_DIALOG_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_PRINT_UNIX_DIALOG : longint; { return type might be wrong }
    begin
      GTK_TYPE_PRINT_UNIX_DIALOG:=gtk_print_unix_dialog_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_PRINT_UNIX_DIALOG(obj : longint) : longint;
  begin
    GTK_PRINT_UNIX_DIALOG:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_PRINT_UNIX_DIALOG,GtkPrintUnixDialog);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_PRINT_UNIX_DIALOG(obj : longint) : longint;
  begin
    GTK_IS_PRINT_UNIX_DIALOG:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_PRINT_UNIX_DIALOG);
  end;

  function gtk_print_unix_dialog_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gtk_print_unix_dialog_new(title:Pchar; parent:PGtkWindow):PGtkWidget;
  begin
    { You must implement this function }
  end;
  procedure gtk_print_unix_dialog_set_page_setup(dialog:PGtkPrintUnixDialog; page_setup:PGtkPageSetup);
  begin
    { You must implement this function }
  end;
  function gtk_print_unix_dialog_get_page_setup(dialog:PGtkPrintUnixDialog):PGtkPageSetup;
  begin
    { You must implement this function }
  end;
  procedure gtk_print_unix_dialog_set_current_page(dialog:PGtkPrintUnixDialog; current_page:longint);
  begin
    { You must implement this function }
  end;
  function gtk_print_unix_dialog_get_current_page(dialog:PGtkPrintUnixDialog):longint;
  begin
    { You must implement this function }
  end;
  procedure gtk_print_unix_dialog_set_settings(dialog:PGtkPrintUnixDialog; settings:PGtkPrintSettings);
  begin
    { You must implement this function }
  end;
  function gtk_print_unix_dialog_get_settings(dialog:PGtkPrintUnixDialog):PGtkPrintSettings;
  begin
    { You must implement this function }
  end;
  function gtk_print_unix_dialog_get_selected_printer(dialog:PGtkPrintUnixDialog):PGtkPrinter;
  begin
    { You must implement this function }
  end;
  procedure gtk_print_unix_dialog_add_custom_tab(dialog:PGtkPrintUnixDialog; child:PGtkWidget; tab_label:PGtkWidget);
  begin
    { You must implement this function }
  end;
  procedure gtk_print_unix_dialog_set_manual_capabilities(dialog:PGtkPrintUnixDialog; capabilities:GtkPrintCapabilities);
  begin
    { You must implement this function }
  end;
  function gtk_print_unix_dialog_get_manual_capabilities(dialog:PGtkPrintUnixDialog):GtkPrintCapabilities;
  begin
    { You must implement this function }
  end;
  procedure gtk_print_unix_dialog_set_support_selection(dialog:PGtkPrintUnixDialog; support_selection:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_print_unix_dialog_get_support_selection(dialog:PGtkPrintUnixDialog):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_print_unix_dialog_set_has_selection(dialog:PGtkPrintUnixDialog; has_selection:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_print_unix_dialog_get_has_selection(dialog:PGtkPrintUnixDialog):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_print_unix_dialog_set_embed_page_setup(dialog:PGtkPrintUnixDialog; embed:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_print_unix_dialog_get_embed_page_setup(dialog:PGtkPrintUnixDialog):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_print_unix_dialog_get_page_setup_set(dialog:PGtkPrintUnixDialog):gboolean;
  begin
    { You must implement this function }
  end;

