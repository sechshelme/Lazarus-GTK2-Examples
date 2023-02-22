
  Type
  Pchar  = ^char;
  PGError  = ^GError;
  PGKeyFile  = ^GKeyFile;
  PGList  = ^GList;
  PGtkPaperSize  = ^GtkPaperSize;
  PGVariant  = ^GVariant;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { GTK - The GIMP Toolkit
   * gtkpapersize.h: Paper Size
   * Copyright (C) 2006, Red Hat, Inc.
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
{$ifndef __GTK_PAPER_SIZE_H__}
{$define __GTK_PAPER_SIZE_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gdk/gdk.h>}
{$include <gtk/gtkenums.h>}

  type
    _GtkPaperSize = GtkPaperSize;

  { was #define dname def_expr }
  function GTK_TYPE_PAPER_SIZE : longint; { return type might be wrong }

  { Common names, from PWG 5101.1-2002 PWG: Standard for Media Standardized Names  }
  {*
   * GTK_PAPER_NAME_A3:
   *
   * Name for the A3 paper size.
    }
  const
    GTK_PAPER_NAME_A3 = 'iso_a3';    
  {*
   * GTK_PAPER_NAME_A4:
   *
   * Name for the A4 paper size.
    }
    GTK_PAPER_NAME_A4 = 'iso_a4';    
  {*
   * GTK_PAPER_NAME_A5:
   *
   * Name for the A5 paper size.
    }
    GTK_PAPER_NAME_A5 = 'iso_a5';    
  {*
   * GTK_PAPER_NAME_B5:
   *
   * Name for the B5 paper size.
    }
    GTK_PAPER_NAME_B5 = 'iso_b5';    
  {*
   * GTK_PAPER_NAME_LETTER:
   *
   * Name for the Letter paper size.
    }
    GTK_PAPER_NAME_LETTER = 'na_letter';    
  {*
   * GTK_PAPER_NAME_EXECUTIVE:
   *
   * Name for the Executive paper size.
    }
    GTK_PAPER_NAME_EXECUTIVE = 'na_executive';    
  {*
   * GTK_PAPER_NAME_LEGAL:
   *
   * Name for the Legal paper size.
    }
    GTK_PAPER_NAME_LEGAL = 'na_legal';    
(* error 
GType gtk_paper_size_get_type (void) G_GNUC_CONST;
 in declarator_list *)

    var
 : GType;
(* Const before type ignored *)

  function gtk_paper_size_new(name:Pchar):^GtkPaperSize;

(* Const before type ignored *)
(* Const before type ignored *)
  function gtk_paper_size_new_from_ppd(ppd_name:Pchar; ppd_display_name:Pchar; width:double; height:double):^GtkPaperSize;

(* Const before type ignored *)
  function gtk_paper_size_new_from_ipp(ipp_name:Pchar; width:double; height:double):^GtkPaperSize;

(* Const before type ignored *)
(* Const before type ignored *)
  function gtk_paper_size_new_custom(name:Pchar; display_name:Pchar; width:double; height:double; unit:GtkUnit):^GtkPaperSize;

  function gtk_paper_size_copy(other:PGtkPaperSize):^GtkPaperSize;

  procedure gtk_paper_size_free(size:PGtkPaperSize);

  function gtk_paper_size_is_equal(size1:PGtkPaperSize; size2:PGtkPaperSize):gboolean;

  function gtk_paper_size_get_paper_sizes(include_custom:gboolean):^GList;

  { The width is always the shortest side, measure in mm  }
(* Const before type ignored *)
  function gtk_paper_size_get_name(size:PGtkPaperSize):^char;

(* Const before type ignored *)
  function gtk_paper_size_get_display_name(size:PGtkPaperSize):^char;

(* Const before type ignored *)
  function gtk_paper_size_get_ppd_name(size:PGtkPaperSize):^char;

  function gtk_paper_size_get_width(size:PGtkPaperSize; unit:GtkUnit):double;

  function gtk_paper_size_get_height(size:PGtkPaperSize; unit:GtkUnit):double;

  function gtk_paper_size_is_custom(size:PGtkPaperSize):gboolean;

  function gtk_paper_size_is_ipp(size:PGtkPaperSize):gboolean;

  { Only for custom sizes:  }
  procedure gtk_paper_size_set_size(size:PGtkPaperSize; width:double; height:double; unit:GtkUnit);

  function gtk_paper_size_get_default_top_margin(size:PGtkPaperSize; unit:GtkUnit):double;

  function gtk_paper_size_get_default_bottom_margin(size:PGtkPaperSize; unit:GtkUnit):double;

  function gtk_paper_size_get_default_left_margin(size:PGtkPaperSize; unit:GtkUnit):double;

  function gtk_paper_size_get_default_right_margin(size:PGtkPaperSize; unit:GtkUnit):double;

(* Const before type ignored *)
  function gtk_paper_size_get_default:^char;

(* Const before type ignored *)
  function gtk_paper_size_new_from_key_file(key_file:PGKeyFile; group_name:Pchar; error:PPGError):^GtkPaperSize;

(* Const before type ignored *)
  procedure gtk_paper_size_to_key_file(size:PGtkPaperSize; key_file:PGKeyFile; group_name:Pchar);

  function gtk_paper_size_new_from_gvariant(variant:PGVariant):^GtkPaperSize;

  function gtk_paper_size_to_gvariant(paper_size:PGtkPaperSize):^GVariant;

{$endif}
  { __GTK_PAPER_SIZE_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_PAPER_SIZE : longint; { return type might be wrong }
    begin
      GTK_TYPE_PAPER_SIZE:=gtk_paper_size_get_type;
    end;

  function gtk_paper_size_new(name:Pchar):PGtkPaperSize;
  begin
    { You must implement this function }
  end;
  function gtk_paper_size_new_from_ppd(ppd_name:Pchar; ppd_display_name:Pchar; width:double; height:double):PGtkPaperSize;
  begin
    { You must implement this function }
  end;
  function gtk_paper_size_new_from_ipp(ipp_name:Pchar; width:double; height:double):PGtkPaperSize;
  begin
    { You must implement this function }
  end;
  function gtk_paper_size_new_custom(name:Pchar; display_name:Pchar; width:double; height:double; unit:GtkUnit):PGtkPaperSize;
  begin
    { You must implement this function }
  end;
  function gtk_paper_size_copy(other:PGtkPaperSize):PGtkPaperSize;
  begin
    { You must implement this function }
  end;
  procedure gtk_paper_size_free(size:PGtkPaperSize);
  begin
    { You must implement this function }
  end;
  function gtk_paper_size_is_equal(size1:PGtkPaperSize; size2:PGtkPaperSize):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_paper_size_get_paper_sizes(include_custom:gboolean):PGList;
  begin
    { You must implement this function }
  end;
  function gtk_paper_size_get_name(size:PGtkPaperSize):Pchar;
  begin
    { You must implement this function }
  end;
  function gtk_paper_size_get_display_name(size:PGtkPaperSize):Pchar;
  begin
    { You must implement this function }
  end;
  function gtk_paper_size_get_ppd_name(size:PGtkPaperSize):Pchar;
  begin
    { You must implement this function }
  end;
  function gtk_paper_size_get_width(size:PGtkPaperSize; unit:GtkUnit):double;
  begin
    { You must implement this function }
  end;
  function gtk_paper_size_get_height(size:PGtkPaperSize; unit:GtkUnit):double;
  begin
    { You must implement this function }
  end;
  function gtk_paper_size_is_custom(size:PGtkPaperSize):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_paper_size_is_ipp(size:PGtkPaperSize):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_paper_size_set_size(size:PGtkPaperSize; width:double; height:double; unit:GtkUnit);
  begin
    { You must implement this function }
  end;
  function gtk_paper_size_get_default_top_margin(size:PGtkPaperSize; unit:GtkUnit):double;
  begin
    { You must implement this function }
  end;
  function gtk_paper_size_get_default_bottom_margin(size:PGtkPaperSize; unit:GtkUnit):double;
  begin
    { You must implement this function }
  end;
  function gtk_paper_size_get_default_left_margin(size:PGtkPaperSize; unit:GtkUnit):double;
  begin
    { You must implement this function }
  end;
  function gtk_paper_size_get_default_right_margin(size:PGtkPaperSize; unit:GtkUnit):double;
  begin
    { You must implement this function }
  end;
  function gtk_paper_size_get_default:Pchar;
  begin
    { You must implement this function }
  end;
  function gtk_paper_size_new_from_key_file(key_file:PGKeyFile; group_name:Pchar; error:PPGError):PGtkPaperSize;
  begin
    { You must implement this function }
  end;
  procedure gtk_paper_size_to_key_file(size:PGtkPaperSize; key_file:PGKeyFile; group_name:Pchar);
  begin
    { You must implement this function }
  end;
  function gtk_paper_size_new_from_gvariant(variant:PGVariant):PGtkPaperSize;
  begin
    { You must implement this function }
  end;
  function gtk_paper_size_to_gvariant(paper_size:PGtkPaperSize):PGVariant;
  begin
    { You must implement this function }
  end;

