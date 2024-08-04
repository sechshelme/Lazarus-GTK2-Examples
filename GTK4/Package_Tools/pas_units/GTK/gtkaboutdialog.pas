unit gtkaboutdialog;

interface

uses
  glib2, common_GTK, GDK4, gtkwidget, gtktypes, gtkwindow;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}

type
  TGtkLicense = longint;
  PGtkLicense = ^TGtkLicense;

const
  GTK_LICENSE_UNKNOWN = 0;
  GTK_LICENSE_CUSTOM = 1;
  GTK_LICENSE_GPL_2_0 = 2;
  GTK_LICENSE_GPL_3_0 = 3;
  GTK_LICENSE_LGPL_2_1 = 4;
  GTK_LICENSE_LGPL_3_0 = 5;
  GTK_LICENSE_BSD = 6;
  GTK_LICENSE_MIT_X11 = 7;
  GTK_LICENSE_ARTISTIC = 8;
  GTK_LICENSE_GPL_2_0_ONLY = 9;
  GTK_LICENSE_GPL_3_0_ONLY = 10;
  GTK_LICENSE_LGPL_2_1_ONLY = 11;
  GTK_LICENSE_LGPL_3_0_ONLY = 12;
  GTK_LICENSE_AGPL_3_0 = 13;
  GTK_LICENSE_AGPL_3_0_ONLY = 14;
  GTK_LICENSE_BSD_3 = 15;
  GTK_LICENSE_APACHE_2_0 = 16;
  GTK_LICENSE_MPL_2_0 = 17;
  GTK_LICENSE_0BSD = 18;

type
  TGtkAboutDialog = record
  end; // _GtkAboutDialog
  PGtkAboutDialog = ^TGtkAboutDialog;


function gtk_about_dialog_get_type: TGType; cdecl; external gtklib;
function gtk_about_dialog_new: PGtkWidget; cdecl; external gtklib;
//procedure gtk_show_about_dialog(parent: PGtkWindow; first_property_name: PChar; args: array of const); cdecl; external gtklib;
//procedure gtk_show_about_dialog(parent: PGtkWindow; first_property_name: PChar); cdecl; external gtklib;
procedure gtk_show_about_dialog(parent: PGtkWindow; first_property_name: PChar);varargs cdecl; external gtklib;
function gtk_about_dialog_get_program_name(about: PGtkAboutDialog): PChar; cdecl; external gtklib;
procedure gtk_about_dialog_set_program_name(about: PGtkAboutDialog; Name: PChar); cdecl; external gtklib;
function gtk_about_dialog_get_version(about: PGtkAboutDialog): PChar; cdecl; external gtklib;
procedure gtk_about_dialog_set_version(about: PGtkAboutDialog; version: PChar); cdecl; external gtklib;
function gtk_about_dialog_get_copyright(about: PGtkAboutDialog): PChar; cdecl; external gtklib;
procedure gtk_about_dialog_set_copyright(about: PGtkAboutDialog; copyright: PChar); cdecl; external gtklib;
function gtk_about_dialog_get_comments(about: PGtkAboutDialog): PChar; cdecl; external gtklib;
procedure gtk_about_dialog_set_comments(about: PGtkAboutDialog; comments: PChar); cdecl; external gtklib;
function gtk_about_dialog_get_license(about: PGtkAboutDialog): PChar; cdecl; external gtklib;
procedure gtk_about_dialog_set_license(about: PGtkAboutDialog; license: PChar); cdecl; external gtklib;
procedure gtk_about_dialog_set_license_type(about: PGtkAboutDialog; license_type: TGtkLicense); cdecl; external gtklib;
function gtk_about_dialog_get_license_type(about: PGtkAboutDialog): TGtkLicense; cdecl; external gtklib;
function gtk_about_dialog_get_wrap_license(about: PGtkAboutDialog): Tgboolean; cdecl; external gtklib;
procedure gtk_about_dialog_set_wrap_license(about: PGtkAboutDialog; wrap_license: Tgboolean); cdecl; external gtklib;
function gtk_about_dialog_get_system_information(about: PGtkAboutDialog): PChar; cdecl; external gtklib;
procedure gtk_about_dialog_set_system_information(about: PGtkAboutDialog; system_information: PChar); cdecl; external gtklib;
function gtk_about_dialog_get_website(about: PGtkAboutDialog): PChar; cdecl; external gtklib;
procedure gtk_about_dialog_set_website(about: PGtkAboutDialog; website: PChar); cdecl; external gtklib;
function gtk_about_dialog_get_website_label(about: PGtkAboutDialog): PChar; cdecl; external gtklib;
procedure gtk_about_dialog_set_website_label(about: PGtkAboutDialog; website_label: PChar); cdecl; external gtklib;
function gtk_about_dialog_get_authors(about: PGtkAboutDialog): PPchar; cdecl; external gtklib;
procedure gtk_about_dialog_set_authors(about: PGtkAboutDialog; authors: PPchar); cdecl; external gtklib;
function gtk_about_dialog_get_documenters(about: PGtkAboutDialog): PPchar; cdecl; external gtklib;
procedure gtk_about_dialog_set_documenters(about: PGtkAboutDialog; documenters: PPchar); cdecl; external gtklib;
function gtk_about_dialog_get_artists(about: PGtkAboutDialog): PPchar; cdecl; external gtklib;
procedure gtk_about_dialog_set_artists(about: PGtkAboutDialog; artists: PPchar); cdecl; external gtklib;
function gtk_about_dialog_get_translator_credits(about: PGtkAboutDialog): PChar; cdecl; external gtklib;
procedure gtk_about_dialog_set_translator_credits(about: PGtkAboutDialog; translator_credits: PChar); cdecl; external gtklib;
function gtk_about_dialog_get_logo(about: PGtkAboutDialog): PGdkPaintable; cdecl; external gtklib;
procedure gtk_about_dialog_set_logo(about: PGtkAboutDialog; logo: PGdkPaintable); cdecl; external gtklib;
function gtk_about_dialog_get_logo_icon_name(about: PGtkAboutDialog): PChar; cdecl; external gtklib;
procedure gtk_about_dialog_set_logo_icon_name(about: PGtkAboutDialog; icon_name: PChar); cdecl; external gtklib;
procedure gtk_about_dialog_add_credit_section(about: PGtkAboutDialog; section_name: PChar; people: PPchar); cdecl; external gtklib;

// === Konventiert am: 12-7-24 15:14:28 ===

function GTK_TYPE_ABOUT_DIALOG: TGType;
function GTK_ABOUT_DIALOG(obj: Pointer): PGtkAboutDialog;
function GTK_IS_ABOUT_DIALOG(obj: Pointer): Tgboolean;

implementation

function GTK_TYPE_ABOUT_DIALOG: TGType;
begin
  GTK_TYPE_ABOUT_DIALOG := gtk_about_dialog_get_type;
end;

function GTK_ABOUT_DIALOG(obj: Pointer): PGtkAboutDialog;
begin
  Result := PGtkAboutDialog(g_type_check_instance_cast(obj, GTK_TYPE_ABOUT_DIALOG));
end;

function GTK_IS_ABOUT_DIALOG(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_ABOUT_DIALOG);
end;



end.
