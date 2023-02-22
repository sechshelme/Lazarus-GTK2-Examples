
  Type
  Pchar  = ^char;
  PGdkPaintable  = ^GdkPaintable;
  PGtkAboutDialog  = ^GtkAboutDialog;
  PGtkWidget  = ^GtkWidget;
  PGtkWindow  = ^GtkWindow;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { GTK - The GIMP Toolkit
  
     Copyright (C) 2001 CodeFactory AB
     Copyright (C) 2001 Anders Carlsson <andersca@codefactory.se>
     Copyright (C) 2003, 2004 Matthias Clasen <mclasen@redhat.com>
  
     This library is free software; you can redistribute it and/or
     modify it under the terms of the GNU Library General Public License as
     published by the Free Software Foundation; either version 2 of the
     License, or (at your option) any later version.
  
     This library is distributed in the hope that it will be useful,
     but WITHOUT ANY WARRANTY; without even the implied warranty of
     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
     Library General Public License for more details.
  
     You should have received a copy of the GNU Library General Public
     License along with this library. If not, see <http://www.gnu.org/licenses/>.
  
     Author: Anders Carlsson <andersca@codefactory.se>
   }
{$ifndef __GTK_ABOUT_DIALOG_H__}
{$define __GTK_ABOUT_DIALOG_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwindow.h>}
  { Zeile entfernt  }

  { was #define dname def_expr }
  function GTK_TYPE_ABOUT_DIALOG : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_ABOUT_DIALOG(object : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_ABOUT_DIALOG(object : longint) : longint;  


  type
    _GtkAboutDialog = GtkAboutDialog;
  {*
   * GtkLicense:
   * @GTK_LICENSE_UNKNOWN: No license specified
   * @GTK_LICENSE_CUSTOM: A license text is going to be specified by the
   *   developer
   * @GTK_LICENSE_GPL_2_0: The GNU General Public License, version 2.0 or later
   * @GTK_LICENSE_GPL_3_0: The GNU General Public License, version 3.0 or later
   * @GTK_LICENSE_LGPL_2_1: The GNU Lesser General Public License, version 2.1 or later
   * @GTK_LICENSE_LGPL_3_0: The GNU Lesser General Public License, version 3.0 or later
   * @GTK_LICENSE_BSD: The BSD standard license
   * @GTK_LICENSE_MIT_X11: The MIT/X11 standard license
   * @GTK_LICENSE_ARTISTIC: The Artistic License, version 2.0
   * @GTK_LICENSE_GPL_2_0_ONLY: The GNU General Public License, version 2.0 only
   * @GTK_LICENSE_GPL_3_0_ONLY: The GNU General Public License, version 3.0 only
   * @GTK_LICENSE_LGPL_2_1_ONLY: The GNU Lesser General Public License, version 2.1 only
   * @GTK_LICENSE_LGPL_3_0_ONLY: The GNU Lesser General Public License, version 3.0 only
   * @GTK_LICENSE_AGPL_3_0: The GNU Affero General Public License, version 3.0 or later
   * @GTK_LICENSE_AGPL_3_0_ONLY: The GNU Affero General Public License, version 3.0 only
   * @GTK_LICENSE_BSD_3: The 3-clause BSD licence
   * @GTK_LICENSE_APACHE_2_0: The Apache License, version 2.0
   * @GTK_LICENSE_MPL_2_0: The Mozilla Public License, version 2.0
   *
   * The type of license for an application.
   *
   * This enumeration can be expanded at later date.
    }

    GtkLicense = (GTK_LICENSE_UNKNOWN,GTK_LICENSE_CUSTOM,
      GTK_LICENSE_GPL_2_0,GTK_LICENSE_GPL_3_0,
      GTK_LICENSE_LGPL_2_1,GTK_LICENSE_LGPL_3_0,
      GTK_LICENSE_BSD,GTK_LICENSE_MIT_X11,GTK_LICENSE_ARTISTIC,
      GTK_LICENSE_GPL_2_0_ONLY,GTK_LICENSE_GPL_3_0_ONLY,
      GTK_LICENSE_LGPL_2_1_ONLY,GTK_LICENSE_LGPL_3_0_ONLY,
      GTK_LICENSE_AGPL_3_0,GTK_LICENSE_AGPL_3_0_ONLY,
      GTK_LICENSE_BSD_3,GTK_LICENSE_APACHE_2_0,
      GTK_LICENSE_MPL_2_0);
  { Zeile entfernt  }

  function gtk_about_dialog_get_type:GType;

  { Zeile entfernt  }
  function gtk_about_dialog_new:^GtkWidget;

  { Zeile entfernt  }
(* Const before type ignored *)
  procedure gtk_show_about_dialog(parent:PGtkWindow; first_property_name:Pchar; args:array of const);

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_about_dialog_get_program_name(about:PGtkAboutDialog):^char;

  { Zeile entfernt  }
(* Const before type ignored *)
  procedure gtk_about_dialog_set_program_name(about:PGtkAboutDialog; name:Pchar);

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_about_dialog_get_version(about:PGtkAboutDialog):^char;

  { Zeile entfernt  }
(* Const before type ignored *)
  procedure gtk_about_dialog_set_version(about:PGtkAboutDialog; version:Pchar);

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_about_dialog_get_copyright(about:PGtkAboutDialog):^char;

  { Zeile entfernt  }
(* Const before type ignored *)
  procedure gtk_about_dialog_set_copyright(about:PGtkAboutDialog; copyright:Pchar);

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_about_dialog_get_comments(about:PGtkAboutDialog):^char;

  { Zeile entfernt  }
(* Const before type ignored *)
  procedure gtk_about_dialog_set_comments(about:PGtkAboutDialog; comments:Pchar);

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_about_dialog_get_license(about:PGtkAboutDialog):^char;

  { Zeile entfernt  }
(* Const before type ignored *)
  procedure gtk_about_dialog_set_license(about:PGtkAboutDialog; license:Pchar);

  { Zeile entfernt  }
  procedure gtk_about_dialog_set_license_type(about:PGtkAboutDialog; license_type:GtkLicense);

  { Zeile entfernt  }
  function gtk_about_dialog_get_license_type(about:PGtkAboutDialog):GtkLicense;

  { Zeile entfernt  }
  function gtk_about_dialog_get_wrap_license(about:PGtkAboutDialog):gboolean;

  { Zeile entfernt  }
  procedure gtk_about_dialog_set_wrap_license(about:PGtkAboutDialog; wrap_license:gboolean);

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_about_dialog_get_system_information(about:PGtkAboutDialog):^char;

  { Zeile entfernt  }
(* Const before type ignored *)
  procedure gtk_about_dialog_set_system_information(about:PGtkAboutDialog; system_information:Pchar);

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_about_dialog_get_website(about:PGtkAboutDialog):^char;

  { Zeile entfernt  }
(* Const before type ignored *)
  procedure gtk_about_dialog_set_website(about:PGtkAboutDialog; website:Pchar);

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_about_dialog_get_website_label(about:PGtkAboutDialog):^char;

  { Zeile entfernt  }
(* Const before type ignored *)
  procedure gtk_about_dialog_set_website_label(about:PGtkAboutDialog; website_label:Pchar);

  { Zeile entfernt  }
(* Const before type ignored *)
(* Const before declarator ignored *)
  function gtk_about_dialog_get_authors(about:PGtkAboutDialog):^^char;

  { Zeile entfernt  }
(* Const before type ignored *)
  procedure gtk_about_dialog_set_authors(about:PGtkAboutDialog; authors:PPchar);

  { Zeile entfernt  }
(* Const before type ignored *)
(* Const before declarator ignored *)
  function gtk_about_dialog_get_documenters(about:PGtkAboutDialog):^^char;

  { Zeile entfernt  }
(* Const before type ignored *)
  procedure gtk_about_dialog_set_documenters(about:PGtkAboutDialog; documenters:PPchar);

  { Zeile entfernt  }
(* Const before type ignored *)
(* Const before declarator ignored *)
  function gtk_about_dialog_get_artists(about:PGtkAboutDialog):^^char;

  { Zeile entfernt  }
(* Const before type ignored *)
  procedure gtk_about_dialog_set_artists(about:PGtkAboutDialog; artists:PPchar);

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_about_dialog_get_translator_credits(about:PGtkAboutDialog):^char;

  { Zeile entfernt  }
(* Const before type ignored *)
  procedure gtk_about_dialog_set_translator_credits(about:PGtkAboutDialog; translator_credits:Pchar);

  { Zeile entfernt  }
  function gtk_about_dialog_get_logo(about:PGtkAboutDialog):^GdkPaintable;

  { Zeile entfernt  }
  procedure gtk_about_dialog_set_logo(about:PGtkAboutDialog; logo:PGdkPaintable);

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_about_dialog_get_logo_icon_name(about:PGtkAboutDialog):^char;

  { Zeile entfernt  }
(* Const before type ignored *)
  procedure gtk_about_dialog_set_logo_icon_name(about:PGtkAboutDialog; icon_name:Pchar);

  { Zeile entfernt  }
(* Const before type ignored *)
(* Const before type ignored *)
  procedure gtk_about_dialog_add_credit_section(about:PGtkAboutDialog; section_name:Pchar; people:PPchar);

  { Zeile entfernt  }
  { Zeile entfernt  }
{$endif}
  { __GTK_ABOUT_DIALOG_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_ABOUT_DIALOG : longint; { return type might be wrong }
    begin
      GTK_TYPE_ABOUT_DIALOG:=gtk_about_dialog_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_ABOUT_DIALOG(object : longint) : longint;
  begin
    GTK_ABOUT_DIALOG:=G_TYPE_CHECK_INSTANCE_CAST(object,GTK_TYPE_ABOUT_DIALOG,GtkAboutDialog);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_ABOUT_DIALOG(object : longint) : longint;
  begin
    GTK_IS_ABOUT_DIALOG:=G_TYPE_CHECK_INSTANCE_TYPE(object,GTK_TYPE_ABOUT_DIALOG);
  end;

  function gtk_about_dialog_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gtk_about_dialog_new:PGtkWidget;
  begin
    { You must implement this function }
  end;
  procedure gtk_show_about_dialog(parent:PGtkWindow; first_property_name:Pchar);
  begin
    { You must implement this function }
  end;
  function gtk_about_dialog_get_program_name(about:PGtkAboutDialog):Pchar;
  begin
    { You must implement this function }
  end;
  procedure gtk_about_dialog_set_program_name(about:PGtkAboutDialog; name:Pchar);
  begin
    { You must implement this function }
  end;
  function gtk_about_dialog_get_version(about:PGtkAboutDialog):Pchar;
  begin
    { You must implement this function }
  end;
  procedure gtk_about_dialog_set_version(about:PGtkAboutDialog; version:Pchar);
  begin
    { You must implement this function }
  end;
  function gtk_about_dialog_get_copyright(about:PGtkAboutDialog):Pchar;
  begin
    { You must implement this function }
  end;
  procedure gtk_about_dialog_set_copyright(about:PGtkAboutDialog; copyright:Pchar);
  begin
    { You must implement this function }
  end;
  function gtk_about_dialog_get_comments(about:PGtkAboutDialog):Pchar;
  begin
    { You must implement this function }
  end;
  procedure gtk_about_dialog_set_comments(about:PGtkAboutDialog; comments:Pchar);
  begin
    { You must implement this function }
  end;
  function gtk_about_dialog_get_license(about:PGtkAboutDialog):Pchar;
  begin
    { You must implement this function }
  end;
  procedure gtk_about_dialog_set_license(about:PGtkAboutDialog; license:Pchar);
  begin
    { You must implement this function }
  end;
  procedure gtk_about_dialog_set_license_type(about:PGtkAboutDialog; license_type:GtkLicense);
  begin
    { You must implement this function }
  end;
  function gtk_about_dialog_get_license_type(about:PGtkAboutDialog):GtkLicense;
  begin
    { You must implement this function }
  end;
  function gtk_about_dialog_get_wrap_license(about:PGtkAboutDialog):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_about_dialog_set_wrap_license(about:PGtkAboutDialog; wrap_license:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_about_dialog_get_system_information(about:PGtkAboutDialog):Pchar;
  begin
    { You must implement this function }
  end;
  procedure gtk_about_dialog_set_system_information(about:PGtkAboutDialog; system_information:Pchar);
  begin
    { You must implement this function }
  end;
  function gtk_about_dialog_get_website(about:PGtkAboutDialog):Pchar;
  begin
    { You must implement this function }
  end;
  procedure gtk_about_dialog_set_website(about:PGtkAboutDialog; website:Pchar);
  begin
    { You must implement this function }
  end;
  function gtk_about_dialog_get_website_label(about:PGtkAboutDialog):Pchar;
  begin
    { You must implement this function }
  end;
  procedure gtk_about_dialog_set_website_label(about:PGtkAboutDialog; website_label:Pchar);
  begin
    { You must implement this function }
  end;
  function gtk_about_dialog_get_authors(about:PGtkAboutDialog):PPchar;
  begin
    { You must implement this function }
  end;
  procedure gtk_about_dialog_set_authors(about:PGtkAboutDialog; authors:PPchar);
  begin
    { You must implement this function }
  end;
  function gtk_about_dialog_get_documenters(about:PGtkAboutDialog):PPchar;
  begin
    { You must implement this function }
  end;
  procedure gtk_about_dialog_set_documenters(about:PGtkAboutDialog; documenters:PPchar);
  begin
    { You must implement this function }
  end;
  function gtk_about_dialog_get_artists(about:PGtkAboutDialog):PPchar;
  begin
    { You must implement this function }
  end;
  procedure gtk_about_dialog_set_artists(about:PGtkAboutDialog; artists:PPchar);
  begin
    { You must implement this function }
  end;
  function gtk_about_dialog_get_translator_credits(about:PGtkAboutDialog):Pchar;
  begin
    { You must implement this function }
  end;
  procedure gtk_about_dialog_set_translator_credits(about:PGtkAboutDialog; translator_credits:Pchar);
  begin
    { You must implement this function }
  end;
  function gtk_about_dialog_get_logo(about:PGtkAboutDialog):PGdkPaintable;
  begin
    { You must implement this function }
  end;
  procedure gtk_about_dialog_set_logo(about:PGtkAboutDialog; logo:PGdkPaintable);
  begin
    { You must implement this function }
  end;
  function gtk_about_dialog_get_logo_icon_name(about:PGtkAboutDialog):Pchar;
  begin
    { You must implement this function }
  end;
  procedure gtk_about_dialog_set_logo_icon_name(about:PGtkAboutDialog; icon_name:Pchar);
  begin
    { You must implement this function }
  end;
  procedure gtk_about_dialog_add_credit_section(about:PGtkAboutDialog; section_name:Pchar; people:PPchar);
  begin
    { You must implement this function }
  end;

