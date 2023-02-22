
  Type
  Pchar  = ^char;
  PGdkDisplay  = ^GdkDisplay;
  PGFile  = ^GFile;
  PGIcon  = ^GIcon;
  PGtkIconPaintable  = ^GtkIconPaintable;
  PGtkIconTheme  = ^GtkIconTheme;
  Plongint  = ^longint;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { GtkIconTheme - a loader for icon themes
   * gtk-icon-loader.h Copyright (C) 2002, 2003 Red Hat, Inc.
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
{$ifndef __GTK_ICON_THEME_H__}
{$define __GTK_ICON_THEME_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gdk/gdk.h>}
{$include <gtk/gtkenums.h>}

  { was #define dname def_expr }
  function GTK_TYPE_ICON_PAINTABLE : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_ICON_PAINTABLE(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_ICON_PAINTABLE(obj : longint) : longint;  

  { was #define dname def_expr }
  function GTK_TYPE_ICON_THEME : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_ICON_THEME(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_ICON_THEME(obj : longint) : longint;  


  type
    _GtkIconPaintable = GtkIconPaintable;
    _GtkIconTheme = GtkIconTheme;
  {*
   * GtkIconLookupFlags:
   * @GTK_ICON_LOOKUP_FORCE_REGULAR: Try to always load regular icons, even
   *   when symbolic icon names are given
   * @GTK_ICON_LOOKUP_FORCE_SYMBOLIC: Try to always load symbolic icons, even
   *   when regular icon names are given
   * @GTK_ICON_LOOKUP_PRELOAD: Starts loading the texture in the background
   *   so it is ready when later needed.
   *
   * Used to specify options for gtk_icon_theme_lookup_icon().
    }

    GtkIconLookupFlags = (GTK_ICON_LOOKUP_FORCE_REGULAR := 1 shl 0,
      GTK_ICON_LOOKUP_FORCE_SYMBOLIC := 1 shl 1,
      GTK_ICON_LOOKUP_PRELOAD := 1 shl 2);
  {*
   * GTK_ICON_THEME_ERROR:
   *
   * The `GQuark` used for `GtkIconThemeError` errors.
    }

  { was #define dname def_expr }
  function GTK_ICON_THEME_ERROR : longint; { return type might be wrong }

  {*
   * GtkIconThemeError:
   * @GTK_ICON_THEME_NOT_FOUND: The icon specified does not exist in the theme
   * @GTK_ICON_THEME_FAILED: An unspecified error occurred.
   *
   * Error codes for `GtkIconTheme` operations.
   * }

  type
    GtkIconThemeError = (GTK_ICON_THEME_NOT_FOUND,GTK_ICON_THEME_FAILED
      );

  function gtk_icon_theme_error_quark:GQuark;

(* error 
GType            gtk_icon_theme_get_type             (void) G_GNUC_CONST;
 in declarator_list *)

    var
 : GType;

  function gtk_icon_theme_new:^GtkIconTheme;

  function gtk_icon_theme_get_for_display(display:PGdkDisplay):^GtkIconTheme;

  function gtk_icon_theme_get_display(self:PGtkIconTheme):^GdkDisplay;

(* Const before type ignored *)
(* Const before declarator ignored *)
  procedure gtk_icon_theme_set_search_path(self:PGtkIconTheme; path:PPchar);

  function gtk_icon_theme_get_search_path(self:PGtkIconTheme):^^char;

(* Const before type ignored *)
  procedure gtk_icon_theme_add_search_path(self:PGtkIconTheme; path:Pchar);

(* Const before type ignored *)
(* Const before declarator ignored *)
  procedure gtk_icon_theme_set_resource_path(self:PGtkIconTheme; path:PPchar);

  function gtk_icon_theme_get_resource_path(self:PGtkIconTheme):^^char;

(* Const before type ignored *)
  procedure gtk_icon_theme_add_resource_path(self:PGtkIconTheme; path:Pchar);

(* Const before type ignored *)
  procedure gtk_icon_theme_set_theme_name(self:PGtkIconTheme; theme_name:Pchar);

  function gtk_icon_theme_get_theme_name(self:PGtkIconTheme):^char;

(* Const before type ignored *)
  function gtk_icon_theme_has_icon(self:PGtkIconTheme; icon_name:Pchar):gboolean;

(* error 
gboolean         gtk_icon_theme_has_gicon            (GtkIconTheme                *self,
(* error 
                                                      GIcon                       *gicon);
 in declarator_list *)
 in declarator_list *)
(* Const before type ignored *)
  function gtk_icon_theme_get_icon_sizes(self:PGtkIconTheme; icon_name:Pchar):^longint;

(* Const before type ignored *)
(* Const before type ignored *)
  function gtk_icon_theme_lookup_icon(self:PGtkIconTheme; icon_name:Pchar; fallbacks:PPchar; size:longint; scale:longint; 
             direction:GtkTextDirection; flags:GtkIconLookupFlags):^GtkIconPaintable;

  function gtk_icon_theme_lookup_by_gicon(self:PGtkIconTheme; icon:PGIcon; size:longint; scale:longint; direction:GtkTextDirection; 
             flags:GtkIconLookupFlags):^GtkIconPaintable;

  function gtk_icon_paintable_new_for_file(file:PGFile; size:longint; scale:longint):^GtkIconPaintable;

  function gtk_icon_theme_get_icon_names(self:PGtkIconTheme):^^char;

(* error 
GType                 gtk_icon_paintable_get_type         (void) G_GNUC_CONST;
 in declarator_list *)

    var
 : GType;

  function gtk_icon_paintable_get_file(self:PGtkIconPaintable):^GFile;

(* Const before type ignored *)
  function gtk_icon_paintable_get_icon_name(self:PGtkIconPaintable):^char;

  function gtk_icon_paintable_is_symbolic(self:PGtkIconPaintable):gboolean;

{$endif}
  { __GTK_ICON_THEME_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_ICON_PAINTABLE : longint; { return type might be wrong }
    begin
      GTK_TYPE_ICON_PAINTABLE:=gtk_icon_paintable_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_ICON_PAINTABLE(obj : longint) : longint;
  begin
    GTK_ICON_PAINTABLE:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_ICON_PAINTABLE,GtkIconPaintable);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_ICON_PAINTABLE(obj : longint) : longint;
  begin
    GTK_IS_ICON_PAINTABLE:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_ICON_PAINTABLE);
  end;

  { was #define dname def_expr }
  function GTK_TYPE_ICON_THEME : longint; { return type might be wrong }
    begin
      GTK_TYPE_ICON_THEME:=gtk_icon_theme_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_ICON_THEME(obj : longint) : longint;
  begin
    GTK_ICON_THEME:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_ICON_THEME,GtkIconTheme);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_ICON_THEME(obj : longint) : longint;
  begin
    GTK_IS_ICON_THEME:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_ICON_THEME);
  end;

  { was #define dname def_expr }
  function GTK_ICON_THEME_ERROR : longint; { return type might be wrong }
    begin
      GTK_ICON_THEME_ERROR:=gtk_icon_theme_error_quark;
    end;

  function gtk_icon_theme_error_quark:GQuark;
  begin
    { You must implement this function }
  end;
  function gtk_icon_theme_new:PGtkIconTheme;
  begin
    { You must implement this function }
  end;
  function gtk_icon_theme_get_for_display(display:PGdkDisplay):PGtkIconTheme;
  begin
    { You must implement this function }
  end;
  function gtk_icon_theme_get_display(self:PGtkIconTheme):PGdkDisplay;
  begin
    { You must implement this function }
  end;
  procedure gtk_icon_theme_set_search_path(self:PGtkIconTheme; path:PPchar);
  begin
    { You must implement this function }
  end;
  function gtk_icon_theme_get_search_path(self:PGtkIconTheme):PPchar;
  begin
    { You must implement this function }
  end;
  procedure gtk_icon_theme_add_search_path(self:PGtkIconTheme; path:Pchar);
  begin
    { You must implement this function }
  end;
  procedure gtk_icon_theme_set_resource_path(self:PGtkIconTheme; path:PPchar);
  begin
    { You must implement this function }
  end;
  function gtk_icon_theme_get_resource_path(self:PGtkIconTheme):PPchar;
  begin
    { You must implement this function }
  end;
  procedure gtk_icon_theme_add_resource_path(self:PGtkIconTheme; path:Pchar);
  begin
    { You must implement this function }
  end;
  procedure gtk_icon_theme_set_theme_name(self:PGtkIconTheme; theme_name:Pchar);
  begin
    { You must implement this function }
  end;
  function gtk_icon_theme_get_theme_name(self:PGtkIconTheme):Pchar;
  begin
    { You must implement this function }
  end;
  function gtk_icon_theme_has_icon(self:PGtkIconTheme; icon_name:Pchar):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_icon_theme_get_icon_sizes(self:PGtkIconTheme; icon_name:Pchar):Plongint;
  begin
    { You must implement this function }
  end;
  function gtk_icon_theme_lookup_icon(self:PGtkIconTheme; icon_name:Pchar; fallbacks:PPchar; size:longint; scale:longint; 
             direction:GtkTextDirection; flags:GtkIconLookupFlags):PGtkIconPaintable;
  begin
    { You must implement this function }
  end;
  function gtk_icon_theme_lookup_by_gicon(self:PGtkIconTheme; icon:PGIcon; size:longint; scale:longint; direction:GtkTextDirection; 
             flags:GtkIconLookupFlags):PGtkIconPaintable;
  begin
    { You must implement this function }
  end;
  function gtk_icon_paintable_new_for_file(file:PGFile; size:longint; scale:longint):PGtkIconPaintable;
  begin
    { You must implement this function }
  end;
  function gtk_icon_theme_get_icon_names(self:PGtkIconTheme):PPchar;
  begin
    { You must implement this function }
  end;
  function gtk_icon_paintable_get_file(self:PGtkIconPaintable):PGFile;
  begin
    { You must implement this function }
  end;
  function gtk_icon_paintable_get_icon_name(self:PGtkIconPaintable):Pchar;
  begin
    { You must implement this function }
  end;
  function gtk_icon_paintable_is_symbolic(self:PGtkIconPaintable):gboolean;
  begin
    { You must implement this function }
  end;

