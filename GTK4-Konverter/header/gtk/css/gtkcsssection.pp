
  Type
  Pchar  = ^char;
  PGFile  = ^GFile;
  PGString  = ^GString;
  PGtkCssLocation  = ^GtkCssLocation;
  PGtkCssSection  = ^GtkCssSection;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { GTK - The GIMP Toolkit
   * Copyright (C) 2011 Red Hat, Inc.
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
{$ifndef __GTK_CSS_SECTION_H__}
{$define __GTK_CSS_SECTION_H__}  
{$if !defined (__GTK_CSS_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/css/gtkcss.h> can be included directly."}
{$endif}
{$include <gio/gio.h>}
{$include <gdk/gdkversionmacros.h>}
{$include <gtk/css/gtkcsslocation.h>}

  { was #define dname def_expr }
  function GTK_TYPE_CSS_SECTION : longint; { return type might be wrong }

  {*
   * GtkCssSection:
   *
   * Defines a part of a CSS document.
   *
   * Because sections are nested into one another, you can use
   * [method@CssSection.get_parent] to get the containing region.
    }

  type
    _GtkCssSection = GtkCssSection;
(* error 
GType              gtk_css_section_get_type            (void) G_GNUC_CONST;
 in declarator_list *)

    var
 : GType;
(* Const before type ignored *)
(* Const before type ignored *)

  function gtk_css_section_new(file:PGFile; start:PGtkCssLocation; end:PGtkCssLocation):^GtkCssSection;

  function gtk_css_section_ref(section:PGtkCssSection):^GtkCssSection;

  procedure gtk_css_section_unref(section:PGtkCssSection);

(* Const before type ignored *)
  procedure gtk_css_section_print(section:PGtkCssSection; _string:PGString);

(* Const before type ignored *)
  function gtk_css_section_to_string(section:PGtkCssSection):^char;

(* Const before type ignored *)
  function gtk_css_section_get_parent(section:PGtkCssSection):^GtkCssSection;

(* Const before type ignored *)
  function gtk_css_section_get_file(section:PGtkCssSection):^GFile;

(* Const before type ignored *)
(* Const before type ignored *)
  function gtk_css_section_get_start_location(section:PGtkCssSection):^GtkCssLocation;

(* Const before type ignored *)
(* Const before type ignored *)
  function gtk_css_section_get_end_location(section:PGtkCssSection):^GtkCssLocation;

{$endif}
  { __GTK_CSS_SECTION_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_CSS_SECTION : longint; { return type might be wrong }
    begin
      GTK_TYPE_CSS_SECTION:=gtk_css_section_get_type;
    end;

  function gtk_css_section_new(file:PGFile; start:PGtkCssLocation; end:PGtkCssLocation):PGtkCssSection;
  begin
    { You must implement this function }
  end;
  function gtk_css_section_ref(section:PGtkCssSection):PGtkCssSection;
  begin
    { You must implement this function }
  end;
  procedure gtk_css_section_unref(section:PGtkCssSection);
  begin
    { You must implement this function }
  end;
  procedure gtk_css_section_print(section:PGtkCssSection; _string:PGString);
  begin
    { You must implement this function }
  end;
  function gtk_css_section_to_string(section:PGtkCssSection):Pchar;
  begin
    { You must implement this function }
  end;
  function gtk_css_section_get_parent(section:PGtkCssSection):PGtkCssSection;
  begin
    { You must implement this function }
  end;
  function gtk_css_section_get_file(section:PGtkCssSection):PGFile;
  begin
    { You must implement this function }
  end;
  function gtk_css_section_get_start_location(section:PGtkCssSection):PGtkCssLocation;
  begin
    { You must implement this function }
  end;
  function gtk_css_section_get_end_location(section:PGtkCssSection):PGtkCssLocation;
  begin
    { You must implement this function }
  end;

