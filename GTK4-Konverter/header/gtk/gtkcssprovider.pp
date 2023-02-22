
  Type
  Pchar  = ^char;
  PGFile  = ^GFile;
  PGtkCssProvider  = ^GtkCssProvider;
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
{$ifndef __GTK_CSS_PROVIDER_H__}
{$define __GTK_CSS_PROVIDER_H__}  
{$include <gio/gio.h>}
{$include <gtk/css/gtkcss.h>}
  { Zeile entfernt  }

  { was #define dname def_expr }
  function GTK_TYPE_CSS_PROVIDER : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_CSS_PROVIDER(o : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_CSS_PROVIDER(o : longint) : longint;  


  type
    _GtkCssProvider = GtkCssProvider;
    _GtkCssProviderClass = GtkCssProviderClass;
    _GtkCssProviderPrivate = GtkCssProviderPrivate;
    _GtkCssProvider = record
        parent_instance : GObject;
      end;

  { Zeile entfernt  }

  function gtk_css_provider_get_type:GType;

  { Zeile entfernt  }
  function gtk_css_provider_new:^GtkCssProvider;

  { Zeile entfernt  }
  function gtk_css_provider_to_string(provider:PGtkCssProvider):^char;

  { Zeile entfernt  }
(* Const before type ignored *)
  procedure gtk_css_provider_load_from_data(css_provider:PGtkCssProvider; data:Pchar; length:gssize);

  { Zeile entfernt  }
  procedure gtk_css_provider_load_from_file(css_provider:PGtkCssProvider; file:PGFile);

  { Zeile entfernt  }
(* Const before type ignored *)
  procedure gtk_css_provider_load_from_path(css_provider:PGtkCssProvider; path:Pchar);

  { Zeile entfernt  }
(* Const before type ignored *)
  procedure gtk_css_provider_load_from_resource(css_provider:PGtkCssProvider; resource_path:Pchar);

  { Zeile entfernt  }
(* Const before type ignored *)
(* Const before type ignored *)
  procedure gtk_css_provider_load_named(provider:PGtkCssProvider; name:Pchar; variant:Pchar);

  { Zeile entfernt  }
{$endif}
  { __GTK_CSS_PROVIDER_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_CSS_PROVIDER : longint; { return type might be wrong }
    begin
      GTK_TYPE_CSS_PROVIDER:=gtk_css_provider_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_CSS_PROVIDER(o : longint) : longint;
  begin
    GTK_CSS_PROVIDER:=G_TYPE_CHECK_INSTANCE_CAST(o,GTK_TYPE_CSS_PROVIDER,GtkCssProvider);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_CSS_PROVIDER(o : longint) : longint;
  begin
    GTK_IS_CSS_PROVIDER:=G_TYPE_CHECK_INSTANCE_TYPE(o,GTK_TYPE_CSS_PROVIDER);
  end;

  function gtk_css_provider_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gtk_css_provider_new:PGtkCssProvider;
  begin
    { You must implement this function }
  end;
  function gtk_css_provider_to_string(provider:PGtkCssProvider):Pchar;
  begin
    { You must implement this function }
  end;
  procedure gtk_css_provider_load_from_data(css_provider:PGtkCssProvider; data:Pchar; length:gssize);
  begin
    { You must implement this function }
  end;
  procedure gtk_css_provider_load_from_file(css_provider:PGtkCssProvider; file:PGFile);
  begin
    { You must implement this function }
  end;
  procedure gtk_css_provider_load_from_path(css_provider:PGtkCssProvider; path:Pchar);
  begin
    { You must implement this function }
  end;
  procedure gtk_css_provider_load_from_resource(css_provider:PGtkCssProvider; resource_path:Pchar);
  begin
    { You must implement this function }
  end;
  procedure gtk_css_provider_load_named(provider:PGtkCssProvider; name:Pchar; variant:Pchar);
  begin
    { You must implement this function }
  end;

