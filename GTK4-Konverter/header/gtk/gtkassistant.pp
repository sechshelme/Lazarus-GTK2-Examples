
  Type
  Pchar  = ^char;
  PGListModel  = ^GListModel;
  PGtkAssistant  = ^GtkAssistant;
  PGtkAssistantPage  = ^GtkAssistantPage;
  PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { 
   * GTK - The GIMP Toolkit
   * Copyright (C) 1999  Red Hat, Inc.
   * Copyright (C) 2002  Anders Carlsson <andersca@gnu.org>
   * Copyright (C) 2003  Matthias Clasen <mclasen@redhat.com>
   * Copyright (C) 2005  Carlos Garnacho Parro <carlosg@gnome.org>
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
{$ifndef __GTK_ASSISTANT_H__}
{$define __GTK_ASSISTANT_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwindow.h>}
  { Zeile entfernt  }

  { was #define dname def_expr }
  function GTK_TYPE_ASSISTANT : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_ASSISTANT(o : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_ASSISTANT(o : longint) : longint;  

  {*
   * GtkAssistantPageType:
   * @GTK_ASSISTANT_PAGE_CONTENT: The page has regular contents. Both the
   *  Back and forward buttons will be shown.
   * @GTK_ASSISTANT_PAGE_INTRO: The page contains an introduction to the
   *  assistant task. Only the Forward button will be shown if there is a
   *   next page.
   * @GTK_ASSISTANT_PAGE_CONFIRM: The page lets the user confirm or deny the
   *  changes. The Back and Apply buttons will be shown.
   * @GTK_ASSISTANT_PAGE_SUMMARY: The page informs the user of the changes
   *  done. Only the Close button will be shown.
   * @GTK_ASSISTANT_PAGE_PROGRESS: Used for tasks that take a long time to
   *  complete, blocks the assistant until the page is marked as complete.
   *   Only the back button will be shown.
   * @GTK_ASSISTANT_PAGE_CUSTOM: Used for when other page types are not
   *  appropriate. No buttons will be shown, and the application must
   *  add its own buttons through gtk_assistant_add_action_widget().
   *
   * Determines the page role inside a `GtkAssistant`.
   *
   * The role is used to handle buttons sensitivity and visibility.
   *
   * Note that an assistant needs to end its page flow with a page of type
   * %GTK_ASSISTANT_PAGE_CONFIRM, %GTK_ASSISTANT_PAGE_SUMMARY or
   * %GTK_ASSISTANT_PAGE_PROGRESS to be correct.
   *
   * The Cancel button will only be shown if the page isn’t “committed”.
   * See gtk_assistant_commit() for details.
    }

  type
    GtkAssistantPageType = (GTK_ASSISTANT_PAGE_CONTENT,GTK_ASSISTANT_PAGE_INTRO,
      GTK_ASSISTANT_PAGE_CONFIRM,GTK_ASSISTANT_PAGE_SUMMARY,
      GTK_ASSISTANT_PAGE_PROGRESS,GTK_ASSISTANT_PAGE_CUSTOM
      );
    _GtkAssistant = GtkAssistant;

  { was #define dname def_expr }
  function GTK_TYPE_ASSISTANT_PAGE : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_ASSISTANT_PAGE(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_ASSISTANT_PAGE(obj : longint) : longint;  


  type
    _GtkAssistantPage = GtkAssistantPage;
  {*
   * GtkAssistantPageFunc:
   * @current_page: The page number used to calculate the next page.
   * @data: (closure): user data.
   *
   * Type of callback used to calculate the next page in a `GtkAssistant`.
   *
   * It’s called both for computing the next page when the user presses the
   * “forward” button and for handling the behavior of the “last” button.
   *
   * See [method@Gtk.Assistant.set_forward_page_func].
   *
   * Returns: The next page number
    }

    GtkAssistantPageFunc = function (current_page:longint; data:gpointer):longint;cdecl;
  { Zeile entfernt  }

  function gtk_assistant_page_get_type:GType;

  { Zeile entfernt  }
  function gtk_assistant_get_type:GType;

  { Zeile entfernt  }
  function gtk_assistant_new:^GtkWidget;

  { Zeile entfernt  }
  procedure gtk_assistant_next_page(assistant:PGtkAssistant);

  { Zeile entfernt  }
  procedure gtk_assistant_previous_page(assistant:PGtkAssistant);

  { Zeile entfernt  }
  function gtk_assistant_get_current_page(assistant:PGtkAssistant):longint;

  { Zeile entfernt  }
  procedure gtk_assistant_set_current_page(assistant:PGtkAssistant; page_num:longint);

  { Zeile entfernt  }
  function gtk_assistant_get_n_pages(assistant:PGtkAssistant):longint;

  { Zeile entfernt  }
  function gtk_assistant_get_nth_page(assistant:PGtkAssistant; page_num:longint):^GtkWidget;

  { Zeile entfernt  }
  function gtk_assistant_prepend_page(assistant:PGtkAssistant; page:PGtkWidget):longint;

  { Zeile entfernt  }
  function gtk_assistant_append_page(assistant:PGtkAssistant; page:PGtkWidget):longint;

  { Zeile entfernt  }
  function gtk_assistant_insert_page(assistant:PGtkAssistant; page:PGtkWidget; position:longint):longint;

  { Zeile entfernt  }
  procedure gtk_assistant_remove_page(assistant:PGtkAssistant; page_num:longint);

  { Zeile entfernt  }
  procedure gtk_assistant_set_forward_page_func(assistant:PGtkAssistant; page_func:GtkAssistantPageFunc; data:gpointer; destroy:GDestroyNotify);

  { Zeile entfernt  }
  procedure gtk_assistant_set_page_type(assistant:PGtkAssistant; page:PGtkWidget; _type:GtkAssistantPageType);

  { Zeile entfernt  }
  function gtk_assistant_get_page_type(assistant:PGtkAssistant; page:PGtkWidget):GtkAssistantPageType;

  { Zeile entfernt  }
(* Const before type ignored *)
  procedure gtk_assistant_set_page_title(assistant:PGtkAssistant; page:PGtkWidget; title:Pchar);

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_assistant_get_page_title(assistant:PGtkAssistant; page:PGtkWidget):^char;

  { Zeile entfernt  }
  procedure gtk_assistant_set_page_complete(assistant:PGtkAssistant; page:PGtkWidget; complete:gboolean);

  { Zeile entfernt  }
  function gtk_assistant_get_page_complete(assistant:PGtkAssistant; page:PGtkWidget):gboolean;

  { Zeile entfernt  }
  procedure gtk_assistant_add_action_widget(assistant:PGtkAssistant; child:PGtkWidget);

  { Zeile entfernt  }
  procedure gtk_assistant_remove_action_widget(assistant:PGtkAssistant; child:PGtkWidget);

  { Zeile entfernt  }
  procedure gtk_assistant_update_buttons_state(assistant:PGtkAssistant);

  { Zeile entfernt  }
  procedure gtk_assistant_commit(assistant:PGtkAssistant);

  { Zeile entfernt  }
  function gtk_assistant_get_page(assistant:PGtkAssistant; child:PGtkWidget):^GtkAssistantPage;

  { Zeile entfernt  }
  function gtk_assistant_page_get_child(page:PGtkAssistantPage):^GtkWidget;

  { Zeile entfernt  }
  function gtk_assistant_get_pages(assistant:PGtkAssistant):^GListModel;

  { Zeile entfernt  }
{$endif}
  { __GTK_ASSISTANT_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_ASSISTANT : longint; { return type might be wrong }
    begin
      GTK_TYPE_ASSISTANT:=gtk_assistant_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_ASSISTANT(o : longint) : longint;
  begin
    GTK_ASSISTANT:=G_TYPE_CHECK_INSTANCE_CAST(o,GTK_TYPE_ASSISTANT,GtkAssistant);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_ASSISTANT(o : longint) : longint;
  begin
    GTK_IS_ASSISTANT:=G_TYPE_CHECK_INSTANCE_TYPE(o,GTK_TYPE_ASSISTANT);
  end;

  { was #define dname def_expr }
  function GTK_TYPE_ASSISTANT_PAGE : longint; { return type might be wrong }
    begin
      GTK_TYPE_ASSISTANT_PAGE:=gtk_assistant_page_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_ASSISTANT_PAGE(obj : longint) : longint;
  begin
    GTK_ASSISTANT_PAGE:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_ASSISTANT_PAGE,GtkAssistantPage);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_ASSISTANT_PAGE(obj : longint) : longint;
  begin
    GTK_IS_ASSISTANT_PAGE:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_ASSISTANT_PAGE);
  end;

  function gtk_assistant_page_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gtk_assistant_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gtk_assistant_new:PGtkWidget;
  begin
    { You must implement this function }
  end;
  procedure gtk_assistant_next_page(assistant:PGtkAssistant);
  begin
    { You must implement this function }
  end;
  procedure gtk_assistant_previous_page(assistant:PGtkAssistant);
  begin
    { You must implement this function }
  end;
  function gtk_assistant_get_current_page(assistant:PGtkAssistant):longint;
  begin
    { You must implement this function }
  end;
  procedure gtk_assistant_set_current_page(assistant:PGtkAssistant; page_num:longint);
  begin
    { You must implement this function }
  end;
  function gtk_assistant_get_n_pages(assistant:PGtkAssistant):longint;
  begin
    { You must implement this function }
  end;
  function gtk_assistant_get_nth_page(assistant:PGtkAssistant; page_num:longint):PGtkWidget;
  begin
    { You must implement this function }
  end;
  function gtk_assistant_prepend_page(assistant:PGtkAssistant; page:PGtkWidget):longint;
  begin
    { You must implement this function }
  end;
  function gtk_assistant_append_page(assistant:PGtkAssistant; page:PGtkWidget):longint;
  begin
    { You must implement this function }
  end;
  function gtk_assistant_insert_page(assistant:PGtkAssistant; page:PGtkWidget; position:longint):longint;
  begin
    { You must implement this function }
  end;
  procedure gtk_assistant_remove_page(assistant:PGtkAssistant; page_num:longint);
  begin
    { You must implement this function }
  end;
  procedure gtk_assistant_set_forward_page_func(assistant:PGtkAssistant; page_func:GtkAssistantPageFunc; data:gpointer; destroy:GDestroyNotify);
  begin
    { You must implement this function }
  end;
  procedure gtk_assistant_set_page_type(assistant:PGtkAssistant; page:PGtkWidget; _type:GtkAssistantPageType);
  begin
    { You must implement this function }
  end;
  function gtk_assistant_get_page_type(assistant:PGtkAssistant; page:PGtkWidget):GtkAssistantPageType;
  begin
    { You must implement this function }
  end;
  procedure gtk_assistant_set_page_title(assistant:PGtkAssistant; page:PGtkWidget; title:Pchar);
  begin
    { You must implement this function }
  end;
  function gtk_assistant_get_page_title(assistant:PGtkAssistant; page:PGtkWidget):Pchar;
  begin
    { You must implement this function }
  end;
  procedure gtk_assistant_set_page_complete(assistant:PGtkAssistant; page:PGtkWidget; complete:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_assistant_get_page_complete(assistant:PGtkAssistant; page:PGtkWidget):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_assistant_add_action_widget(assistant:PGtkAssistant; child:PGtkWidget);
  begin
    { You must implement this function }
  end;
  procedure gtk_assistant_remove_action_widget(assistant:PGtkAssistant; child:PGtkWidget);
  begin
    { You must implement this function }
  end;
  procedure gtk_assistant_update_buttons_state(assistant:PGtkAssistant);
  begin
    { You must implement this function }
  end;
  procedure gtk_assistant_commit(assistant:PGtkAssistant);
  begin
    { You must implement this function }
  end;
  function gtk_assistant_get_page(assistant:PGtkAssistant; child:PGtkWidget):PGtkAssistantPage;
  begin
    { You must implement this function }
  end;
  function gtk_assistant_page_get_child(page:PGtkAssistantPage):PGtkWidget;
  begin
    { You must implement this function }
  end;
  function gtk_assistant_get_pages(assistant:PGtkAssistant):PGListModel;
  begin
    { You must implement this function }
  end;

