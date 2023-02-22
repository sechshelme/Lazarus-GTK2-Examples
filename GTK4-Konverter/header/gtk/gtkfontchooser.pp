
  Type
  Pchar  = ^char;
  PGtkFontChooser  = ^GtkFontChooser;
  PPangoFontDescription  = ^PangoFontDescription;
  PPangoFontFace  = ^PangoFontFace;
  PPangoFontFamily  = ^PangoFontFamily;
  PPangoFontMap  = ^PangoFontMap;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { GTK - The GIMP Toolkit
   * gtkfontchooser.h - Abstract interface for font file selectors GUIs
   *
   * Copyright (C) 2006, Emmanuele Bassi
   * Copyright (C) 2011 Alberto Ruiz <aruiz@gnome.org>
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
{$ifndef __GTK_FONT_CHOOSER_H__}
{$define __GTK_FONT_CHOOSER_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwidget.h>}
  { Zeile entfernt  }
  {*
   * GtkFontFilterFunc:
   * @family: a `PangoFontFamily`
   * @face: a `PangoFontFace` belonging to @family
   * @data: (closure): user data passed to gtk_font_chooser_set_filter_func()
   *
   * The type of function that is used for deciding what fonts get
   * shown in a `GtkFontChooser`.
   *
   * See [method@Gtk.FontChooser.set_filter_func].
   *
   * Returns: %TRUE if the font should be displayed
    }
(* Const before type ignored *)
(* Const before type ignored *)

  type

    GtkFontFilterFunc = function (family:PPangoFontFamily; face:PPangoFontFace; data:gpointer):gboolean;cdecl;
  {*
   * GtkFontChooserLevel:
   * @GTK_FONT_CHOOSER_LEVEL_FAMILY: Allow selecting a font family
   * @GTK_FONT_CHOOSER_LEVEL_STYLE: Allow selecting a specific font face
   * @GTK_FONT_CHOOSER_LEVEL_SIZE: Allow selecting a specific font size
   * @GTK_FONT_CHOOSER_LEVEL_VARIATIONS: Allow changing OpenType font variation axes
   * @GTK_FONT_CHOOSER_LEVEL_FEATURES: Allow selecting specific OpenType font features
   *
   * Specifies the granularity of font selection
   * that is desired in a `GtkFontChooser`.
   *
   * This enumeration may be extended in the future; applications should
   * ignore unknown values.
    }

    GtkFontChooserLevel = (GTK_FONT_CHOOSER_LEVEL_FAMILY := 0,
      GTK_FONT_CHOOSER_LEVEL_STYLE := 1 shl 0,GTK_FONT_CHOOSER_LEVEL_SIZE := 1 shl 1,
      GTK_FONT_CHOOSER_LEVEL_VARIATIONS := 1 shl 2,
      GTK_FONT_CHOOSER_LEVEL_FEATURES := 1 shl 3
      );

  { was #define dname def_expr }
  function GTK_TYPE_FONT_CHOOSER : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_FONT_CHOOSER(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_FONT_CHOOSER(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_FONT_CHOOSER_GET_IFACE(inst : longint) : longint;  


  type
    _GtkFontChooser = GtkFontChooser;
  { dummy  }
    _GtkFontChooserIface = GtkFontChooserIface;
  { Methods  }
  { Signals  }
(* Const before type ignored *)
  { More methods  }
  {< private > }
  { Padding; remove in GTK-next  }
    _GtkFontChooserIface = record
        base_iface : GTypeInterface;
        get_font_family : function (fontchooser:PGtkFontChooser):PPangoFontFamily;cdecl;
        get_font_face : function (fontchooser:PGtkFontChooser):PPangoFontFace;cdecl;
        get_font_size : function (fontchooser:PGtkFontChooser):longint;cdecl;
        set_filter_func : procedure (fontchooser:PGtkFontChooser; filter:GtkFontFilterFunc; user_data:gpointer; destroy:GDestroyNotify);cdecl;
        font_activated : procedure (chooser:PGtkFontChooser; fontname:Pchar);cdecl;
        set_font_map : procedure (fontchooser:PGtkFontChooser; fontmap:PPangoFontMap);cdecl;
        get_font_map : function (fontchooser:PGtkFontChooser):PPangoFontMap;cdecl;
        padding : array[0..9] of gpointer;
      end;

  { Zeile entfernt  }

  function gtk_font_chooser_get_type:GType;

  { Zeile entfernt  }
  function gtk_font_chooser_get_font_family(fontchooser:PGtkFontChooser):^PangoFontFamily;

  { Zeile entfernt  }
  function gtk_font_chooser_get_font_face(fontchooser:PGtkFontChooser):^PangoFontFace;

  { Zeile entfernt  }
  function gtk_font_chooser_get_font_size(fontchooser:PGtkFontChooser):longint;

  { Zeile entfernt  }
  function gtk_font_chooser_get_font_desc(fontchooser:PGtkFontChooser):^PangoFontDescription;

  { Zeile entfernt  }
(* Const before type ignored *)
  procedure gtk_font_chooser_set_font_desc(fontchooser:PGtkFontChooser; font_desc:PPangoFontDescription);

  { Zeile entfernt  }
  function gtk_font_chooser_get_font(fontchooser:PGtkFontChooser):^char;

  { Zeile entfernt  }
(* Const before type ignored *)
  procedure gtk_font_chooser_set_font(fontchooser:PGtkFontChooser; fontname:Pchar);

  { Zeile entfernt  }
  function gtk_font_chooser_get_preview_text(fontchooser:PGtkFontChooser):^char;

  { Zeile entfernt  }
(* Const before type ignored *)
  procedure gtk_font_chooser_set_preview_text(fontchooser:PGtkFontChooser; text:Pchar);

  { Zeile entfernt  }
  function gtk_font_chooser_get_show_preview_entry(fontchooser:PGtkFontChooser):gboolean;

  { Zeile entfernt  }
  procedure gtk_font_chooser_set_show_preview_entry(fontchooser:PGtkFontChooser; show_preview_entry:gboolean);

  { Zeile entfernt  }
  procedure gtk_font_chooser_set_filter_func(fontchooser:PGtkFontChooser; filter:GtkFontFilterFunc; user_data:gpointer; destroy:GDestroyNotify);

  { Zeile entfernt  }
  procedure gtk_font_chooser_set_font_map(fontchooser:PGtkFontChooser; fontmap:PPangoFontMap);

  { Zeile entfernt  }
  function gtk_font_chooser_get_font_map(fontchooser:PGtkFontChooser):^PangoFontMap;

  { Zeile entfernt  }
  procedure gtk_font_chooser_set_level(fontchooser:PGtkFontChooser; level:GtkFontChooserLevel);

  { Zeile entfernt  }
  function gtk_font_chooser_get_level(fontchooser:PGtkFontChooser):GtkFontChooserLevel;

  { Zeile entfernt  }
  function gtk_font_chooser_get_font_features(fontchooser:PGtkFontChooser):^char;

  { Zeile entfernt  }
  function gtk_font_chooser_get_language(fontchooser:PGtkFontChooser):^char;

  { Zeile entfernt  }
(* Const before type ignored *)
  procedure gtk_font_chooser_set_language(fontchooser:PGtkFontChooser; language:Pchar);

  { Zeile entfernt  }
{$endif}
  { __GTK_FONT_CHOOSER_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_FONT_CHOOSER : longint; { return type might be wrong }
    begin
      GTK_TYPE_FONT_CHOOSER:=gtk_font_chooser_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_FONT_CHOOSER(obj : longint) : longint;
  begin
    GTK_FONT_CHOOSER:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_FONT_CHOOSER,GtkFontChooser);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_FONT_CHOOSER(obj : longint) : longint;
  begin
    GTK_IS_FONT_CHOOSER:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_FONT_CHOOSER);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_FONT_CHOOSER_GET_IFACE(inst : longint) : longint;
  begin
    GTK_FONT_CHOOSER_GET_IFACE:=G_TYPE_INSTANCE_GET_INTERFACE(inst,GTK_TYPE_FONT_CHOOSER,GtkFontChooserIface);
  end;

  function gtk_font_chooser_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gtk_font_chooser_get_font_family(fontchooser:PGtkFontChooser):PPangoFontFamily;
  begin
    { You must implement this function }
  end;
  function gtk_font_chooser_get_font_face(fontchooser:PGtkFontChooser):PPangoFontFace;
  begin
    { You must implement this function }
  end;
  function gtk_font_chooser_get_font_size(fontchooser:PGtkFontChooser):longint;
  begin
    { You must implement this function }
  end;
  function gtk_font_chooser_get_font_desc(fontchooser:PGtkFontChooser):PPangoFontDescription;
  begin
    { You must implement this function }
  end;
  procedure gtk_font_chooser_set_font_desc(fontchooser:PGtkFontChooser; font_desc:PPangoFontDescription);
  begin
    { You must implement this function }
  end;
  function gtk_font_chooser_get_font(fontchooser:PGtkFontChooser):Pchar;
  begin
    { You must implement this function }
  end;
  procedure gtk_font_chooser_set_font(fontchooser:PGtkFontChooser; fontname:Pchar);
  begin
    { You must implement this function }
  end;
  function gtk_font_chooser_get_preview_text(fontchooser:PGtkFontChooser):Pchar;
  begin
    { You must implement this function }
  end;
  procedure gtk_font_chooser_set_preview_text(fontchooser:PGtkFontChooser; text:Pchar);
  begin
    { You must implement this function }
  end;
  function gtk_font_chooser_get_show_preview_entry(fontchooser:PGtkFontChooser):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_font_chooser_set_show_preview_entry(fontchooser:PGtkFontChooser; show_preview_entry:gboolean);
  begin
    { You must implement this function }
  end;
  procedure gtk_font_chooser_set_filter_func(fontchooser:PGtkFontChooser; filter:GtkFontFilterFunc; user_data:gpointer; destroy:GDestroyNotify);
  begin
    { You must implement this function }
  end;
  procedure gtk_font_chooser_set_font_map(fontchooser:PGtkFontChooser; fontmap:PPangoFontMap);
  begin
    { You must implement this function }
  end;
  function gtk_font_chooser_get_font_map(fontchooser:PGtkFontChooser):PPangoFontMap;
  begin
    { You must implement this function }
  end;
  procedure gtk_font_chooser_set_level(fontchooser:PGtkFontChooser; level:GtkFontChooserLevel);
  begin
    { You must implement this function }
  end;
  function gtk_font_chooser_get_level(fontchooser:PGtkFontChooser):GtkFontChooserLevel;
  begin
    { You must implement this function }
  end;
  function gtk_font_chooser_get_font_features(fontchooser:PGtkFontChooser):Pchar;
  begin
    { You must implement this function }
  end;
  function gtk_font_chooser_get_language(fontchooser:PGtkFontChooser):Pchar;
  begin
    { You must implement this function }
  end;
  procedure gtk_font_chooser_set_language(fontchooser:PGtkFontChooser; language:Pchar);
  begin
    { You must implement this function }
  end;

