
  Type
  Pchar  = ^char;
  PGAppInfo  = ^GAppInfo;
  PGDateTime  = ^GDateTime;
  PGError  = ^GError;
  PGIcon  = ^GIcon;
  PGList  = ^GList;
  PGtkRecentData  = ^GtkRecentData;
  PGtkRecentInfo  = ^GtkRecentInfo;
  PGtkRecentManager  = ^GtkRecentManager;
  Pguint  = ^guint;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { GTK - The GIMP Toolkit
   * gtkrecentmanager.h: a manager for the recently used resources
   *
   * Copyright (C) 2006 Emmanuele Bassi
   *
   * This library is free software; you can redistribute it and/or
   * modify it under the terms of the GNU Library General Public
   * License as published by the Free Software Foundation; either
   * version 2 of the License, or (at your option) any later version.
   *
   * This library is distributed in the hope that it will be useful,
   * but WITHOUT ANY WARRANTY; without even the implied warranty of
   * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   * Library General Public License for more details.
   *
   * You should have received a copy of the GNU Library General Public
   * License along with this library. If not, see <http://www.gnu.org/licenses/>.
    }
{$ifndef __GTK_RECENT_MANAGER_H__}
{$define __GTK_RECENT_MANAGER_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gdk-pixbuf/gdk-pixbuf.h>}
{$include <gdk/gdk.h>}
{$include <time.h>}

  { was #define dname def_expr }
  function GTK_TYPE_RECENT_INFO : longint; { return type might be wrong }

  { was #define dname def_expr }
  function GTK_TYPE_RECENT_MANAGER : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_RECENT_MANAGER(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_RECENT_MANAGER(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_RECENT_MANAGER_CLASS(klass : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_RECENT_MANAGER_CLASS(klass : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_RECENT_MANAGER_GET_CLASS(obj : longint) : longint;  


  type
    _GtkRecentInfo = GtkRecentInfo;
    _GtkRecentData = GtkRecentData;
    _GtkRecentManager = GtkRecentManager;
    _GtkRecentManagerClass = GtkRecentManagerClass;
    _GtkRecentManagerPrivate = GtkRecentManagerPrivate;
  {*
   * GtkRecentData:
   * @display_name: a UTF-8 encoded string, containing the name of the recently
   *   used resource to be displayed, or %NULL;
   * @description: a UTF-8 encoded string, containing a short description of
   *   the resource, or %NULL;
   * @mime_type: the MIME type of the resource;
   * @app_name: the name of the application that is registering this recently
   *   used resource;
   * @app_exec: command line used to launch this resource; may contain the
   *   “\%f” and “\%u” escape characters which will be expanded
   *   to the resource file path and URI respectively when the command line
   *   is retrieved;
   * @groups: (array zero-terminated=1): a vector of strings containing
   *   groups names;
   * @is_private: whether this resource should be displayed only by the
   *   applications that have registered it or not.
   *
   * Meta-data to be passed to gtk_recent_manager_add_full() when
   * registering a recently used resource.
   * }
    _GtkRecentData = record
        display_name : ^char;
        description : ^char;
        mime_type : ^char;
        app_name : ^char;
        app_exec : ^char;
        groups : ^^char;
        is_private : gboolean;
      end;

  {< private > }
    _GtkRecentManager = record
        parent_instance : GObject;
        priv : ^GtkRecentManagerPrivate;
      end;

  {*
   * GtkRecentManagerClass:
   *
   * `GtkRecentManagerClass` contains only private data.
    }
  {< private > }
  { padding for future expansion  }
    _GtkRecentManagerClass = record
        parent_class : GObjectClass;
        changed : procedure (manager:PGtkRecentManager);cdecl;
        _gtk_recent1 : procedure ;cdecl;
        _gtk_recent2 : procedure ;cdecl;
        _gtk_recent3 : procedure ;cdecl;
        _gtk_recent4 : procedure ;cdecl;
      end;

  {*
   * GtkRecentManagerError:
   * @GTK_RECENT_MANAGER_ERROR_NOT_FOUND: the URI specified does not exists in
   *   the recently used resources list.
   * @GTK_RECENT_MANAGER_ERROR_INVALID_URI: the URI specified is not valid.
   * @GTK_RECENT_MANAGER_ERROR_INVALID_ENCODING: the supplied string is not
   *   UTF-8 encoded.
   * @GTK_RECENT_MANAGER_ERROR_NOT_REGISTERED: no application has registered
   *   the specified item.
   * @GTK_RECENT_MANAGER_ERROR_READ: failure while reading the recently used
   *   resources file.
   * @GTK_RECENT_MANAGER_ERROR_WRITE: failure while writing the recently used
   *   resources file.
   * @GTK_RECENT_MANAGER_ERROR_UNKNOWN: unspecified error.
   *
   * Error codes for `GtkRecentManager` operations
    }

    GtkRecentManagerError = (GTK_RECENT_MANAGER_ERROR_NOT_FOUND,GTK_RECENT_MANAGER_ERROR_INVALID_URI,
      GTK_RECENT_MANAGER_ERROR_INVALID_ENCODING,
      GTK_RECENT_MANAGER_ERROR_NOT_REGISTERED,
      GTK_RECENT_MANAGER_ERROR_READ,GTK_RECENT_MANAGER_ERROR_WRITE,
      GTK_RECENT_MANAGER_ERROR_UNKNOWN);
  {*
   * GTK_RECENT_MANAGER_ERROR:
   *
   * The `GError` domain for `GtkRecentManager` errors.
    }

  { was #define dname def_expr }
  function GTK_RECENT_MANAGER_ERROR : longint; { return type might be wrong }

  function gtk_recent_manager_error_quark:GQuark;

(* error 
GType 		  gtk_recent_manager_get_type       (void) G_GNUC_CONST;
 in declarator_list *)

    var
 : GType;

  function gtk_recent_manager_new:^GtkRecentManager;

  function gtk_recent_manager_get_default:^GtkRecentManager;

(* Const before type ignored *)
  function gtk_recent_manager_add_item(manager:PGtkRecentManager; uri:Pchar):gboolean;

(* Const before type ignored *)
(* Const before type ignored *)
  function gtk_recent_manager_add_full(manager:PGtkRecentManager; uri:Pchar; recent_data:PGtkRecentData):gboolean;

(* Const before type ignored *)
  function gtk_recent_manager_remove_item(manager:PGtkRecentManager; uri:Pchar; error:PPGError):gboolean;

(* Const before type ignored *)
  function gtk_recent_manager_lookup_item(manager:PGtkRecentManager; uri:Pchar; error:PPGError):^GtkRecentInfo;

(* Const before type ignored *)
  function gtk_recent_manager_has_item(manager:PGtkRecentManager; uri:Pchar):gboolean;

(* Const before type ignored *)
(* Const before type ignored *)
  function gtk_recent_manager_move_item(manager:PGtkRecentManager; uri:Pchar; new_uri:Pchar; error:PPGError):gboolean;

  function gtk_recent_manager_get_items(manager:PGtkRecentManager):^GList;

  function gtk_recent_manager_purge_items(manager:PGtkRecentManager; error:PPGError):longint;

(* error 
GType	              gtk_recent_info_get_type             (void) G_GNUC_CONST;
 in declarator_list *)

    var
 : GType;

  function gtk_recent_info_ref(info:PGtkRecentInfo):^GtkRecentInfo;

  procedure gtk_recent_info_unref(info:PGtkRecentInfo);

(* Const before type ignored *)
  function gtk_recent_info_get_uri(info:PGtkRecentInfo):^char;

(* Const before type ignored *)
  function gtk_recent_info_get_display_name(info:PGtkRecentInfo):^char;

(* Const before type ignored *)
  function gtk_recent_info_get_description(info:PGtkRecentInfo):^char;

(* Const before type ignored *)
  function gtk_recent_info_get_mime_type(info:PGtkRecentInfo):^char;

  function gtk_recent_info_get_added(info:PGtkRecentInfo):^GDateTime;

  function gtk_recent_info_get_modified(info:PGtkRecentInfo):^GDateTime;

  function gtk_recent_info_get_visited(info:PGtkRecentInfo):^GDateTime;

  function gtk_recent_info_get_private_hint(info:PGtkRecentInfo):gboolean;

(* Const before type ignored *)
(* Const before type ignored *)
  function gtk_recent_info_get_application_info(info:PGtkRecentInfo; app_name:Pchar; app_exec:PPchar; count:Pguint; stamp:PPGDateTime):gboolean;

(* Const before type ignored *)
  function gtk_recent_info_create_app_info(info:PGtkRecentInfo; app_name:Pchar; error:PPGError):^GAppInfo;

(* error 
							    gsize          *length) G_GNUC_MALLOC;
 in declarator_list *)

    var
 : char;
(* error 
char *               gtk_recent_info_last_application     (GtkRecentInfo  *info) G_GNUC_MALLOC;
 in declarator_list *)
 : char;
(* Const before type ignored *)

  function gtk_recent_info_has_application(info:PGtkRecentInfo; app_name:Pchar):gboolean;

(* error 
							    gsize          *length) G_GNUC_MALLOC;
 in declarator_list *)

    var
 : char;
(* Const before type ignored *)

  function gtk_recent_info_has_group(info:PGtkRecentInfo; group_name:Pchar):gboolean;

  function gtk_recent_info_get_gicon(info:PGtkRecentInfo):^GIcon;

(* error 
char *               gtk_recent_info_get_short_name       (GtkRecentInfo  *info) G_GNUC_MALLOC;
 in declarator_list *)

    var
 : char;
(* error 
char *               gtk_recent_info_get_uri_display      (GtkRecentInfo  *info) G_GNUC_MALLOC;
 in declarator_list *)
 : char;

  function gtk_recent_info_get_age(info:PGtkRecentInfo):longint;

  function gtk_recent_info_is_local(info:PGtkRecentInfo):gboolean;

  function gtk_recent_info_exists(info:PGtkRecentInfo):gboolean;

  function gtk_recent_info_match(info_a:PGtkRecentInfo; info_b:PGtkRecentInfo):gboolean;

  { private  }
  procedure _gtk_recent_manager_sync;

{$endif}
  { __GTK_RECENT_MANAGER_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_RECENT_INFO : longint; { return type might be wrong }
    begin
      GTK_TYPE_RECENT_INFO:=gtk_recent_info_get_type;
    end;

  { was #define dname def_expr }
  function GTK_TYPE_RECENT_MANAGER : longint; { return type might be wrong }
    begin
      GTK_TYPE_RECENT_MANAGER:=gtk_recent_manager_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_RECENT_MANAGER(obj : longint) : longint;
  begin
    GTK_RECENT_MANAGER:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_RECENT_MANAGER,GtkRecentManager);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_RECENT_MANAGER(obj : longint) : longint;
  begin
    GTK_IS_RECENT_MANAGER:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_RECENT_MANAGER);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_RECENT_MANAGER_CLASS(klass : longint) : longint;
  begin
    GTK_RECENT_MANAGER_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_RECENT_MANAGER,GtkRecentManagerClass);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_RECENT_MANAGER_CLASS(klass : longint) : longint;
  begin
    GTK_IS_RECENT_MANAGER_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_RECENT_MANAGER);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_RECENT_MANAGER_GET_CLASS(obj : longint) : longint;
  begin
    GTK_RECENT_MANAGER_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_RECENT_MANAGER,GtkRecentManagerClass);
  end;

  { was #define dname def_expr }
  function GTK_RECENT_MANAGER_ERROR : longint; { return type might be wrong }
    begin
      GTK_RECENT_MANAGER_ERROR:=gtk_recent_manager_error_quark;
    end;

  function gtk_recent_manager_error_quark:GQuark;
  begin
    { You must implement this function }
  end;
  function gtk_recent_manager_new:PGtkRecentManager;
  begin
    { You must implement this function }
  end;
  function gtk_recent_manager_get_default:PGtkRecentManager;
  begin
    { You must implement this function }
  end;
  function gtk_recent_manager_add_item(manager:PGtkRecentManager; uri:Pchar):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_recent_manager_add_full(manager:PGtkRecentManager; uri:Pchar; recent_data:PGtkRecentData):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_recent_manager_remove_item(manager:PGtkRecentManager; uri:Pchar; error:PPGError):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_recent_manager_lookup_item(manager:PGtkRecentManager; uri:Pchar; error:PPGError):PGtkRecentInfo;
  begin
    { You must implement this function }
  end;
  function gtk_recent_manager_has_item(manager:PGtkRecentManager; uri:Pchar):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_recent_manager_move_item(manager:PGtkRecentManager; uri:Pchar; new_uri:Pchar; error:PPGError):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_recent_manager_get_items(manager:PGtkRecentManager):PGList;
  begin
    { You must implement this function }
  end;
  function gtk_recent_manager_purge_items(manager:PGtkRecentManager; error:PPGError):longint;
  begin
    { You must implement this function }
  end;
  function gtk_recent_info_ref(info:PGtkRecentInfo):PGtkRecentInfo;
  begin
    { You must implement this function }
  end;
  procedure gtk_recent_info_unref(info:PGtkRecentInfo);
  begin
    { You must implement this function }
  end;
  function gtk_recent_info_get_uri(info:PGtkRecentInfo):Pchar;
  begin
    { You must implement this function }
  end;
  function gtk_recent_info_get_display_name(info:PGtkRecentInfo):Pchar;
  begin
    { You must implement this function }
  end;
  function gtk_recent_info_get_description(info:PGtkRecentInfo):Pchar;
  begin
    { You must implement this function }
  end;
  function gtk_recent_info_get_mime_type(info:PGtkRecentInfo):Pchar;
  begin
    { You must implement this function }
  end;
  function gtk_recent_info_get_added(info:PGtkRecentInfo):PGDateTime;
  begin
    { You must implement this function }
  end;
  function gtk_recent_info_get_modified(info:PGtkRecentInfo):PGDateTime;
  begin
    { You must implement this function }
  end;
  function gtk_recent_info_get_visited(info:PGtkRecentInfo):PGDateTime;
  begin
    { You must implement this function }
  end;
  function gtk_recent_info_get_private_hint(info:PGtkRecentInfo):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_recent_info_get_application_info(info:PGtkRecentInfo; app_name:Pchar; app_exec:PPchar; count:Pguint; stamp:PPGDateTime):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_recent_info_create_app_info(info:PGtkRecentInfo; app_name:Pchar; error:PPGError):PGAppInfo;
  begin
    { You must implement this function }
  end;
  function gtk_recent_info_has_application(info:PGtkRecentInfo; app_name:Pchar):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_recent_info_has_group(info:PGtkRecentInfo; group_name:Pchar):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_recent_info_get_gicon(info:PGtkRecentInfo):PGIcon;
  begin
    { You must implement this function }
  end;
  function gtk_recent_info_get_age(info:PGtkRecentInfo):longint;
  begin
    { You must implement this function }
  end;
  function gtk_recent_info_is_local(info:PGtkRecentInfo):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_recent_info_exists(info:PGtkRecentInfo):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_recent_info_match(info_a:PGtkRecentInfo; info_b:PGtkRecentInfo):gboolean;
  begin
    { You must implement this function }
  end;
  procedure _gtk_recent_manager_sync;
  begin
    { You must implement this function }
  end;

