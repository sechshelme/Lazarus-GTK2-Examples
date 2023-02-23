
unit gtkaboutdialog;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkaboutdialog.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkaboutdialog.h
    -p
    -T
    -S
    -d
    -c
}

{ Pointers to basic pascal types, inserted by h2pas conversion program.}
Type
  PLongint  = ^Longint;
  PSmallInt = ^SmallInt;
  PByte     = ^Byte;
  PWord     = ^Word;
  PDWord    = ^DWord;
  PDouble   = ^Double;

Type
Pchar  = ^char;
PGdkPaintable  = ^GdkPaintable;
PGtkAboutDialog  = ^GtkAboutDialog;
PGtkLicense  = ^GtkLicense;
PGtkWidget  = ^GtkWidget;
PGtkWindow  = ^GtkWindow;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_ABOUT_DIALOG_H__}
{$define __GTK_ABOUT_DIALOG_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwindow.h>}


function GTK_TYPE_ABOUT_DIALOG : longint; { return type might be wrong }

function GTK_ABOUT_DIALOG(object : longint) : longint;

function GTK_IS_ABOUT_DIALOG(object : longint) : longint;

type


  PGtkLicense = ^TGtkLicense;
  TGtkLicense = (GTK_LICENSE_UNKNOWN,GTK_LICENSE_CUSTOM,
    GTK_LICENSE_GPL_2_0,GTK_LICENSE_GPL_3_0,
    GTK_LICENSE_LGPL_2_1,GTK_LICENSE_LGPL_3_0,
    GTK_LICENSE_BSD,GTK_LICENSE_MIT_X11,GTK_LICENSE_ARTISTIC,
    GTK_LICENSE_GPL_2_0_ONLY,GTK_LICENSE_GPL_3_0_ONLY,
    GTK_LICENSE_LGPL_2_1_ONLY,GTK_LICENSE_LGPL_3_0_ONLY,
    GTK_LICENSE_AGPL_3_0,GTK_LICENSE_AGPL_3_0_ONLY,
    GTK_LICENSE_BSD_3,GTK_LICENSE_APACHE_2_0,
    GTK_LICENSE_MPL_2_0);


function gtk_about_dialog_get_type:TGType;cdecl;external;

function gtk_about_dialog_new:PGtkWidget;cdecl;external;

procedure gtk_show_about_dialog(parent:PGtkWindow; first_property_name:Pchar; args:array of const);cdecl;external;
procedure gtk_show_about_dialog(parent:PGtkWindow; first_property_name:Pchar);cdecl;external;

function gtk_about_dialog_get_program_name(about:PGtkAboutDialog):Pchar;cdecl;external;

procedure gtk_about_dialog_set_program_name(about:PGtkAboutDialog; name:Pchar);cdecl;external;

function gtk_about_dialog_get_version(about:PGtkAboutDialog):Pchar;cdecl;external;

procedure gtk_about_dialog_set_version(about:PGtkAboutDialog; version:Pchar);cdecl;external;

function gtk_about_dialog_get_copyright(about:PGtkAboutDialog):Pchar;cdecl;external;

procedure gtk_about_dialog_set_copyright(about:PGtkAboutDialog; copyright:Pchar);cdecl;external;

function gtk_about_dialog_get_comments(about:PGtkAboutDialog):Pchar;cdecl;external;

procedure gtk_about_dialog_set_comments(about:PGtkAboutDialog; comments:Pchar);cdecl;external;

function gtk_about_dialog_get_license(about:PGtkAboutDialog):Pchar;cdecl;external;

procedure gtk_about_dialog_set_license(about:PGtkAboutDialog; license:Pchar);cdecl;external;

procedure gtk_about_dialog_set_license_type(about:PGtkAboutDialog; license_type:TGtkLicense);cdecl;external;

function gtk_about_dialog_get_license_type(about:PGtkAboutDialog):TGtkLicense;cdecl;external;

function gtk_about_dialog_get_wrap_license(about:PGtkAboutDialog):Tgboolean;cdecl;external;

procedure gtk_about_dialog_set_wrap_license(about:PGtkAboutDialog; wrap_license:Tgboolean);cdecl;external;

function gtk_about_dialog_get_system_information(about:PGtkAboutDialog):Pchar;cdecl;external;

procedure gtk_about_dialog_set_system_information(about:PGtkAboutDialog; system_information:Pchar);cdecl;external;

function gtk_about_dialog_get_website(about:PGtkAboutDialog):Pchar;cdecl;external;

procedure gtk_about_dialog_set_website(about:PGtkAboutDialog; website:Pchar);cdecl;external;

function gtk_about_dialog_get_website_label(about:PGtkAboutDialog):Pchar;cdecl;external;

procedure gtk_about_dialog_set_website_label(about:PGtkAboutDialog; website_label:Pchar);cdecl;external;

function gtk_about_dialog_get_authors(about:PGtkAboutDialog):^Pchar;cdecl;external;

procedure gtk_about_dialog_set_authors(about:PGtkAboutDialog; authors:PPchar);cdecl;external;

function gtk_about_dialog_get_documenters(about:PGtkAboutDialog):^Pchar;cdecl;external;

procedure gtk_about_dialog_set_documenters(about:PGtkAboutDialog; documenters:PPchar);cdecl;external;

function gtk_about_dialog_get_artists(about:PGtkAboutDialog):^Pchar;cdecl;external;

procedure gtk_about_dialog_set_artists(about:PGtkAboutDialog; artists:PPchar);cdecl;external;

function gtk_about_dialog_get_translator_credits(about:PGtkAboutDialog):Pchar;cdecl;external;

procedure gtk_about_dialog_set_translator_credits(about:PGtkAboutDialog; translator_credits:Pchar);cdecl;external;

function gtk_about_dialog_get_logo(about:PGtkAboutDialog):PGdkPaintable;cdecl;external;

procedure gtk_about_dialog_set_logo(about:PGtkAboutDialog; logo:PGdkPaintable);cdecl;external;

function gtk_about_dialog_get_logo_icon_name(about:PGtkAboutDialog):Pchar;cdecl;external;

procedure gtk_about_dialog_set_logo_icon_name(about:PGtkAboutDialog; icon_name:Pchar);cdecl;external;

procedure gtk_about_dialog_add_credit_section(about:PGtkAboutDialog; section_name:Pchar; people:PPchar);cdecl;external;


{$endif}


implementation

function GTK_TYPE_ABOUT_DIALOG : longint; { return type might be wrong }
  begin
    GTK_TYPE_ABOUT_DIALOG:=gtk_about_dialog_get_type;
  end;

function GTK_ABOUT_DIALOG(object : longint) : longint;
begin
  GTK_ABOUT_DIALOG:=G_TYPE_CHECK_INSTANCE_CAST(object,GTK_TYPE_ABOUT_DIALOG,GtkAboutDialog);
end;

function GTK_IS_ABOUT_DIALOG(object : longint) : longint;
begin
  GTK_IS_ABOUT_DIALOG:=G_TYPE_CHECK_INSTANCE_TYPE(object,GTK_TYPE_ABOUT_DIALOG);
end;


end.
