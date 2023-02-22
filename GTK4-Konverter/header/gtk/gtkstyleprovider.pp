
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
{$ifndef __GTK_STYLE_PROVIDER_H__}
{$define __GTK_STYLE_PROVIDER_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gdk/gdk.h>}
{$include <gtk/gtkenums.h>}
{$include <gtk/gtktypes.h>}
  { Zeile entfernt  }

  { was #define dname def_expr }
  function GTK_TYPE_STYLE_PROVIDER : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_STYLE_PROVIDER(o : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_STYLE_PROVIDER(o : longint) : longint;  

  {*
   * GTK_STYLE_PROVIDER_PRIORITY_FALLBACK:
   *
   * The priority used for default style information
   * that is used in the absence of themes.
   *
   * Note that this is not very useful for providing default
   * styling for custom style classes - themes are likely to
   * override styling provided at this priority with
   * catch-all `* ...` rules.
    }
  const
    GTK_STYLE_PROVIDER_PRIORITY_FALLBACK = 1;    
  {*
   * GTK_STYLE_PROVIDER_PRIORITY_THEME:
   *
   * The priority used for style information provided
   * by themes.
    }
    GTK_STYLE_PROVIDER_PRIORITY_THEME = 200;    
  {*
   * GTK_STYLE_PROVIDER_PRIORITY_SETTINGS:
   *
   * The priority used for style information provided
   * via `GtkSettings`.
   *
   * This priority is higher than %GTK_STYLE_PROVIDER_PRIORITY_THEME
   * to let settings override themes.
    }
    GTK_STYLE_PROVIDER_PRIORITY_SETTINGS = 400;    
  {*
   * GTK_STYLE_PROVIDER_PRIORITY_APPLICATION:
   *
   * A priority that can be used when adding a `GtkStyleProvider`
   * for application-specific style information.
    }
    GTK_STYLE_PROVIDER_PRIORITY_APPLICATION = 600;    
  {*
   * GTK_STYLE_PROVIDER_PRIORITY_USER:
   *
   * The priority used for the style information from
   * `$XDG_CONFIG_HOME/gtk-4.0/gtk.css`.
   *
   * You should not use priorities higher than this, to
   * give the user the last word.
    }
    GTK_STYLE_PROVIDER_PRIORITY_USER = 800;    

  type
    _GtkStyleProvider = GtkStyleProvider;
  { dummy typedef  }
  { Zeile entfernt  }

  function gtk_style_provider_get_type:GType;

  { Zeile entfernt  }
{$endif}
  { __GTK_STYLE_PROVIDER_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_STYLE_PROVIDER : longint; { return type might be wrong }
    begin
      GTK_TYPE_STYLE_PROVIDER:=gtk_style_provider_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_STYLE_PROVIDER(o : longint) : longint;
  begin
    GTK_STYLE_PROVIDER:=G_TYPE_CHECK_INSTANCE_CAST(o,GTK_TYPE_STYLE_PROVIDER,GtkStyleProvider);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_STYLE_PROVIDER(o : longint) : longint;
  begin
    GTK_IS_STYLE_PROVIDER:=G_TYPE_CHECK_INSTANCE_TYPE(o,GTK_TYPE_STYLE_PROVIDER);
  end;

  function gtk_style_provider_get_type:GType;
  begin
    { You must implement this function }
  end;

