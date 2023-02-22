
  Type
  Pchar  = ^char;
  PGError  = ^GError;
  PGKeyFile  = ^GKeyFile;
  PGtkPageSetup  = ^GtkPageSetup;
  PGtkPaperSize  = ^GtkPaperSize;
  PGVariant  = ^GVariant;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { GTK - The GIMP Toolkit
   * gtkpagesetup.h: Page Setup
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
{$ifndef __GTK_PAGE_SETUP_H__}
{$define __GTK_PAGE_SETUP_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkpapersize.h>}

  type
    _GtkPageSetup = GtkPageSetup;

  { was #define dname def_expr }
  function GTK_TYPE_PAGE_SETUP : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_PAGE_SETUP(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_PAGE_SETUP(obj : longint) : longint;  

(* error 
GType              gtk_page_setup_get_type          (void) G_GNUC_CONST;
 in declarator_list *)

    var
 : GType;

  function gtk_page_setup_new:^GtkPageSetup;

  function gtk_page_setup_copy(other:PGtkPageSetup):^GtkPageSetup;

  function gtk_page_setup_get_orientation(setup:PGtkPageSetup):GtkPageOrientation;

  procedure gtk_page_setup_set_orientation(setup:PGtkPageSetup; orientation:GtkPageOrientation);

  function gtk_page_setup_get_paper_size(setup:PGtkPageSetup):^GtkPaperSize;

  procedure gtk_page_setup_set_paper_size(setup:PGtkPageSetup; size:PGtkPaperSize);

  function gtk_page_setup_get_top_margin(setup:PGtkPageSetup; unit:GtkUnit):double;

  procedure gtk_page_setup_set_top_margin(setup:PGtkPageSetup; margin:double; unit:GtkUnit);

  function gtk_page_setup_get_bottom_margin(setup:PGtkPageSetup; unit:GtkUnit):double;

  procedure gtk_page_setup_set_bottom_margin(setup:PGtkPageSetup; margin:double; unit:GtkUnit);

  function gtk_page_setup_get_left_margin(setup:PGtkPageSetup; unit:GtkUnit):double;

  procedure gtk_page_setup_set_left_margin(setup:PGtkPageSetup; margin:double; unit:GtkUnit);

  function gtk_page_setup_get_right_margin(setup:PGtkPageSetup; unit:GtkUnit):double;

  procedure gtk_page_setup_set_right_margin(setup:PGtkPageSetup; margin:double; unit:GtkUnit);

  procedure gtk_page_setup_set_paper_size_and_default_margins(setup:PGtkPageSetup; size:PGtkPaperSize);

  { These take orientation, but not margins into consideration  }
  function gtk_page_setup_get_paper_width(setup:PGtkPageSetup; unit:GtkUnit):double;

  function gtk_page_setup_get_paper_height(setup:PGtkPageSetup; unit:GtkUnit):double;

  { These take orientation, and margins into consideration  }
  function gtk_page_setup_get_page_width(setup:PGtkPageSetup; unit:GtkUnit):double;

  function gtk_page_setup_get_page_height(setup:PGtkPageSetup; unit:GtkUnit):double;

  { Saving and restoring page setup  }
(* Const before type ignored *)
  function gtk_page_setup_new_from_file(file_name:Pchar; error:PPGError):^GtkPageSetup;

(* Const before type ignored *)
  function gtk_page_setup_load_file(setup:PGtkPageSetup; file_name:Pchar; error:PPGError):gboolean;

(* Const before type ignored *)
  function gtk_page_setup_to_file(setup:PGtkPageSetup; file_name:Pchar; error:PPGError):gboolean;

(* Const before type ignored *)
  function gtk_page_setup_new_from_key_file(key_file:PGKeyFile; group_name:Pchar; error:PPGError):^GtkPageSetup;

(* Const before type ignored *)
  function gtk_page_setup_load_key_file(setup:PGtkPageSetup; key_file:PGKeyFile; group_name:Pchar; error:PPGError):gboolean;

(* Const before type ignored *)
  procedure gtk_page_setup_to_key_file(setup:PGtkPageSetup; key_file:PGKeyFile; group_name:Pchar);

  function gtk_page_setup_to_gvariant(setup:PGtkPageSetup):^GVariant;

  function gtk_page_setup_new_from_gvariant(variant:PGVariant):^GtkPageSetup;

{$endif}
  { __GTK_PAGE_SETUP_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_PAGE_SETUP : longint; { return type might be wrong }
    begin
      GTK_TYPE_PAGE_SETUP:=gtk_page_setup_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_PAGE_SETUP(obj : longint) : longint;
  begin
    GTK_PAGE_SETUP:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_PAGE_SETUP,GtkPageSetup);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_PAGE_SETUP(obj : longint) : longint;
  begin
    GTK_IS_PAGE_SETUP:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_PAGE_SETUP);
  end;

  function gtk_page_setup_new:PGtkPageSetup;
  begin
    { You must implement this function }
  end;
  function gtk_page_setup_copy(other:PGtkPageSetup):PGtkPageSetup;
  begin
    { You must implement this function }
  end;
  function gtk_page_setup_get_orientation(setup:PGtkPageSetup):GtkPageOrientation;
  begin
    { You must implement this function }
  end;
  procedure gtk_page_setup_set_orientation(setup:PGtkPageSetup; orientation:GtkPageOrientation);
  begin
    { You must implement this function }
  end;
  function gtk_page_setup_get_paper_size(setup:PGtkPageSetup):PGtkPaperSize;
  begin
    { You must implement this function }
  end;
  procedure gtk_page_setup_set_paper_size(setup:PGtkPageSetup; size:PGtkPaperSize);
  begin
    { You must implement this function }
  end;
  function gtk_page_setup_get_top_margin(setup:PGtkPageSetup; unit:GtkUnit):double;
  begin
    { You must implement this function }
  end;
  procedure gtk_page_setup_set_top_margin(setup:PGtkPageSetup; margin:double; unit:GtkUnit);
  begin
    { You must implement this function }
  end;
  function gtk_page_setup_get_bottom_margin(setup:PGtkPageSetup; unit:GtkUnit):double;
  begin
    { You must implement this function }
  end;
  procedure gtk_page_setup_set_bottom_margin(setup:PGtkPageSetup; margin:double; unit:GtkUnit);
  begin
    { You must implement this function }
  end;
  function gtk_page_setup_get_left_margin(setup:PGtkPageSetup; unit:GtkUnit):double;
  begin
    { You must implement this function }
  end;
  procedure gtk_page_setup_set_left_margin(setup:PGtkPageSetup; margin:double; unit:GtkUnit);
  begin
    { You must implement this function }
  end;
  function gtk_page_setup_get_right_margin(setup:PGtkPageSetup; unit:GtkUnit):double;
  begin
    { You must implement this function }
  end;
  procedure gtk_page_setup_set_right_margin(setup:PGtkPageSetup; margin:double; unit:GtkUnit);
  begin
    { You must implement this function }
  end;
  procedure gtk_page_setup_set_paper_size_and_default_margins(setup:PGtkPageSetup; size:PGtkPaperSize);
  begin
    { You must implement this function }
  end;
  function gtk_page_setup_get_paper_width(setup:PGtkPageSetup; unit:GtkUnit):double;
  begin
    { You must implement this function }
  end;
  function gtk_page_setup_get_paper_height(setup:PGtkPageSetup; unit:GtkUnit):double;
  begin
    { You must implement this function }
  end;
  function gtk_page_setup_get_page_width(setup:PGtkPageSetup; unit:GtkUnit):double;
  begin
    { You must implement this function }
  end;
  function gtk_page_setup_get_page_height(setup:PGtkPageSetup; unit:GtkUnit):double;
  begin
    { You must implement this function }
  end;
  function gtk_page_setup_new_from_file(file_name:Pchar; error:PPGError):PGtkPageSetup;
  begin
    { You must implement this function }
  end;
  function gtk_page_setup_load_file(setup:PGtkPageSetup; file_name:Pchar; error:PPGError):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_page_setup_to_file(setup:PGtkPageSetup; file_name:Pchar; error:PPGError):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_page_setup_new_from_key_file(key_file:PGKeyFile; group_name:Pchar; error:PPGError):PGtkPageSetup;
  begin
    { You must implement this function }
  end;
  function gtk_page_setup_load_key_file(setup:PGtkPageSetup; key_file:PGKeyFile; group_name:Pchar; error:PPGError):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_page_setup_to_key_file(setup:PGtkPageSetup; key_file:PGKeyFile; group_name:Pchar);
  begin
    { You must implement this function }
  end;
  function gtk_page_setup_to_gvariant(setup:PGtkPageSetup):PGVariant;
  begin
    { You must implement this function }
  end;
  function gtk_page_setup_new_from_gvariant(variant:PGVariant):PGtkPageSetup;
  begin
    { You must implement this function }
  end;

