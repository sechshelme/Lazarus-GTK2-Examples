
  Type
  Pchar  = ^char;
  PGError  = ^GError;
  PGFile  = ^GFile;
  PGListModel  = ^GListModel;
  PGtkFileChooser  = ^GtkFileChooser;
  PGtkFileFilter  = ^GtkFileFilter;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { GTK - The GIMP Toolkit
   * gtkfilechooser.h: Abstract interface for file selector GUIs
   * Copyright (C) 2003, Red Hat, Inc.
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
{$ifndef __GTK_FILE_CHOOSER_H__}
{$define __GTK_FILE_CHOOSER_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkfilefilter.h>}
{$include <gtk/gtkwidget.h>}
  { Zeile entfernt  }

  { was #define dname def_expr }
  function GTK_TYPE_FILE_CHOOSER : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_FILE_CHOOSER(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_FILE_CHOOSER(obj : longint) : longint;  


  type
    _GtkFileChooser = GtkFileChooser;
  {*
   * GtkFileChooserAction:
   * @GTK_FILE_CHOOSER_ACTION_OPEN: Indicates open mode.  The file chooser
   *  will only let the user pick an existing file.
   * @GTK_FILE_CHOOSER_ACTION_SAVE: Indicates save mode.  The file chooser
   *  will let the user pick an existing file, or type in a new
   *  filename.
   * @GTK_FILE_CHOOSER_ACTION_SELECT_FOLDER: Indicates an Open mode for
   *  selecting folders.  The file chooser will let the user pick an
   *  existing folder.
   *
   * Describes whether a `GtkFileChooser` is being used to open existing files
   * or to save to a possibly new file.
    }

    GtkFileChooserAction = (GTK_FILE_CHOOSER_ACTION_OPEN,GTK_FILE_CHOOSER_ACTION_SAVE,
      GTK_FILE_CHOOSER_ACTION_SELECT_FOLDER
      );
  { Zeile entfernt  }

  function gtk_file_chooser_get_type:GType;

  { GError enumeration for GtkFileChooser  }
  {*
   * GTK_FILE_CHOOSER_ERROR:
   *
   * Used to get the `GError` quark for `GtkFileChooser` errors.
    }
  { was #define dname def_expr }
  function GTK_FILE_CHOOSER_ERROR : longint; { return type might be wrong }

  {*
   * GtkFileChooserError:
   * @GTK_FILE_CHOOSER_ERROR_NONEXISTENT: Indicates that a file does not exist.
   * @GTK_FILE_CHOOSER_ERROR_BAD_FILENAME: Indicates a malformed filename.
   * @GTK_FILE_CHOOSER_ERROR_ALREADY_EXISTS: Indicates a duplicate path (e.g. when
   *  adding a bookmark).
   * @GTK_FILE_CHOOSER_ERROR_INCOMPLETE_HOSTNAME: Indicates an incomplete hostname
   *  (e.g. "http://foo" without a slash after that).
   *
   * These identify the various errors that can occur while calling
   * `GtkFileChooser` functions.
    }

  type
    GtkFileChooserError = (GTK_FILE_CHOOSER_ERROR_NONEXISTENT,GTK_FILE_CHOOSER_ERROR_BAD_FILENAME,
      GTK_FILE_CHOOSER_ERROR_ALREADY_EXISTS,
      GTK_FILE_CHOOSER_ERROR_INCOMPLETE_HOSTNAME
      );
  { Zeile entfernt  }

  function gtk_file_chooser_error_quark:GQuark;

  { Configuration  }
  { Zeile entfernt  }
  procedure gtk_file_chooser_set_action(chooser:PGtkFileChooser; action:GtkFileChooserAction);

  { Zeile entfernt  }
  function gtk_file_chooser_get_action(chooser:PGtkFileChooser):GtkFileChooserAction;

  { Zeile entfernt  }
  procedure gtk_file_chooser_set_select_multiple(chooser:PGtkFileChooser; select_multiple:gboolean);

  { Zeile entfernt  }
  function gtk_file_chooser_get_select_multiple(chooser:PGtkFileChooser):gboolean;

  { Zeile entfernt  }
  procedure gtk_file_chooser_set_create_folders(chooser:PGtkFileChooser; create_folders:gboolean);

  { Zeile entfernt  }
  function gtk_file_chooser_get_create_folders(chooser:PGtkFileChooser):gboolean;

  { Suggested name for the Save-type actions  }
  { Zeile entfernt  }
(* Const before type ignored *)
  procedure gtk_file_chooser_set_current_name(chooser:PGtkFileChooser; name:Pchar);

  { Zeile entfernt  }
  function gtk_file_chooser_get_current_name(chooser:PGtkFileChooser):^char;

  { GFile manipulation  }
  { Zeile entfernt  }
  function gtk_file_chooser_get_file(chooser:PGtkFileChooser):^GFile;

  { Zeile entfernt  }
  function gtk_file_chooser_set_file(chooser:PGtkFileChooser; file:PGFile; error:PPGError):gboolean;

  { Zeile entfernt  }
  function gtk_file_chooser_get_files(chooser:PGtkFileChooser):^GListModel;

  { Zeile entfernt  }
  function gtk_file_chooser_set_current_folder(chooser:PGtkFileChooser; file:PGFile; error:PPGError):gboolean;

  { Zeile entfernt  }
  function gtk_file_chooser_get_current_folder(chooser:PGtkFileChooser):^GFile;

  { List of user selectable filters  }
  { Zeile entfernt  }
  procedure gtk_file_chooser_add_filter(chooser:PGtkFileChooser; filter:PGtkFileFilter);

  { Zeile entfernt  }
  procedure gtk_file_chooser_remove_filter(chooser:PGtkFileChooser; filter:PGtkFileFilter);

  { Zeile entfernt  }
  function gtk_file_chooser_get_filters(chooser:PGtkFileChooser):^GListModel;

  { Current filter  }
  { Zeile entfernt  }
  procedure gtk_file_chooser_set_filter(chooser:PGtkFileChooser; filter:PGtkFileFilter);

  { Zeile entfernt  }
  function gtk_file_chooser_get_filter(chooser:PGtkFileChooser):^GtkFileFilter;

  { Per-application shortcut folders  }
  { Zeile entfernt  }
  function gtk_file_chooser_add_shortcut_folder(chooser:PGtkFileChooser; folder:PGFile; error:PPGError):gboolean;

  { Zeile entfernt  }
  function gtk_file_chooser_remove_shortcut_folder(chooser:PGtkFileChooser; folder:PGFile; error:PPGError):gboolean;

  { Zeile entfernt  }
  function gtk_file_chooser_get_shortcut_folders(chooser:PGtkFileChooser):^GListModel;

  { Custom widgets  }
  { Zeile entfernt  }
(* Const before type ignored *)
(* Const before type ignored *)
(* Const before type ignored *)
(* Const before type ignored *)
  procedure gtk_file_chooser_add_choice(chooser:PGtkFileChooser; id:Pchar; _label:Pchar; options:PPchar; option_labels:PPchar);

  { Zeile entfernt  }
(* Const before type ignored *)
  procedure gtk_file_chooser_remove_choice(chooser:PGtkFileChooser; id:Pchar);

  { Zeile entfernt  }
(* Const before type ignored *)
(* Const before type ignored *)
  procedure gtk_file_chooser_set_choice(chooser:PGtkFileChooser; id:Pchar; option:Pchar);

  { Zeile entfernt  }
(* Const before type ignored *)
(* Const before type ignored *)
  function gtk_file_chooser_get_choice(chooser:PGtkFileChooser; id:Pchar):^char;

  { Zeile entfernt  }
{$endif}
  { __GTK_FILE_CHOOSER_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_FILE_CHOOSER : longint; { return type might be wrong }
    begin
      GTK_TYPE_FILE_CHOOSER:=gtk_file_chooser_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_FILE_CHOOSER(obj : longint) : longint;
  begin
    GTK_FILE_CHOOSER:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_FILE_CHOOSER,GtkFileChooser);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_FILE_CHOOSER(obj : longint) : longint;
  begin
    GTK_IS_FILE_CHOOSER:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_FILE_CHOOSER);
  end;

  function gtk_file_chooser_get_type:GType;
  begin
    { You must implement this function }
  end;
  { was #define dname def_expr }
  function GTK_FILE_CHOOSER_ERROR : longint; { return type might be wrong }
    begin
      GTK_FILE_CHOOSER_ERROR:=gtk_file_chooser_error_quark;
    end;

  function gtk_file_chooser_error_quark:GQuark;
  begin
    { You must implement this function }
  end;
  procedure gtk_file_chooser_set_action(chooser:PGtkFileChooser; action:GtkFileChooserAction);
  begin
    { You must implement this function }
  end;
  function gtk_file_chooser_get_action(chooser:PGtkFileChooser):GtkFileChooserAction;
  begin
    { You must implement this function }
  end;
  procedure gtk_file_chooser_set_select_multiple(chooser:PGtkFileChooser; select_multiple:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_file_chooser_get_select_multiple(chooser:PGtkFileChooser):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_file_chooser_set_create_folders(chooser:PGtkFileChooser; create_folders:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_file_chooser_get_create_folders(chooser:PGtkFileChooser):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_file_chooser_set_current_name(chooser:PGtkFileChooser; name:Pchar);
  begin
    { You must implement this function }
  end;
  function gtk_file_chooser_get_current_name(chooser:PGtkFileChooser):Pchar;
  begin
    { You must implement this function }
  end;
  function gtk_file_chooser_get_file(chooser:PGtkFileChooser):PGFile;
  begin
    { You must implement this function }
  end;
  function gtk_file_chooser_set_file(chooser:PGtkFileChooser; file:PGFile; error:PPGError):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_file_chooser_get_files(chooser:PGtkFileChooser):PGListModel;
  begin
    { You must implement this function }
  end;
  function gtk_file_chooser_set_current_folder(chooser:PGtkFileChooser; file:PGFile; error:PPGError):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_file_chooser_get_current_folder(chooser:PGtkFileChooser):PGFile;
  begin
    { You must implement this function }
  end;
  procedure gtk_file_chooser_add_filter(chooser:PGtkFileChooser; filter:PGtkFileFilter);
  begin
    { You must implement this function }
  end;
  procedure gtk_file_chooser_remove_filter(chooser:PGtkFileChooser; filter:PGtkFileFilter);
  begin
    { You must implement this function }
  end;
  function gtk_file_chooser_get_filters(chooser:PGtkFileChooser):PGListModel;
  begin
    { You must implement this function }
  end;
  procedure gtk_file_chooser_set_filter(chooser:PGtkFileChooser; filter:PGtkFileFilter);
  begin
    { You must implement this function }
  end;
  function gtk_file_chooser_get_filter(chooser:PGtkFileChooser):PGtkFileFilter;
  begin
    { You must implement this function }
  end;
  function gtk_file_chooser_add_shortcut_folder(chooser:PGtkFileChooser; folder:PGFile; error:PPGError):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_file_chooser_remove_shortcut_folder(chooser:PGtkFileChooser; folder:PGFile; error:PPGError):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_file_chooser_get_shortcut_folders(chooser:PGtkFileChooser):PGListModel;
  begin
    { You must implement this function }
  end;
  procedure gtk_file_chooser_add_choice(chooser:PGtkFileChooser; id:Pchar; _label:Pchar; options:PPchar; option_labels:PPchar);
  begin
    { You must implement this function }
  end;
  procedure gtk_file_chooser_remove_choice(chooser:PGtkFileChooser; id:Pchar);
  begin
    { You must implement this function }
  end;
  procedure gtk_file_chooser_set_choice(chooser:PGtkFileChooser; id:Pchar; option:Pchar);
  begin
    { You must implement this function }
  end;
  function gtk_file_chooser_get_choice(chooser:PGtkFileChooser; id:Pchar):Pchar;
  begin
    { You must implement this function }
  end;

