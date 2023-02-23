
unit gtkcssprovider;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkcssprovider.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkcssprovider.h
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
PGFile  = ^GFile;
PGtkCssProvider  = ^GtkCssProvider;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_CSS_PROVIDER_H__}
{$define __GTK_CSS_PROVIDER_H__}
{$include <gio/gio.h>}
{$include <gtk/css/gtkcss.h>}


function GTK_TYPE_CSS_PROVIDER : longint; { return type might be wrong }

function GTK_CSS_PROVIDER(o : longint) : longint;

function GTK_IS_CSS_PROVIDER(o : longint) : longint;

type
  PGtkCssProvider = ^TGtkCssProvider;
  TGtkCssProvider = record
      parent_instance : TGObject;
    end;



function gtk_css_provider_get_type:TGType;cdecl;external;

function gtk_css_provider_new:PGtkCssProvider;cdecl;external;

function gtk_css_provider_to_string(provider:PGtkCssProvider):Pchar;cdecl;external;

procedure gtk_css_provider_load_from_data(css_provider:PGtkCssProvider; data:Pchar; length:Tgssize);cdecl;external;

procedure gtk_css_provider_load_from_file(css_provider:PGtkCssProvider; file:PGFile);cdecl;external;

procedure gtk_css_provider_load_from_path(css_provider:PGtkCssProvider; path:Pchar);cdecl;external;

procedure gtk_css_provider_load_from_resource(css_provider:PGtkCssProvider; resource_path:Pchar);cdecl;external;

procedure gtk_css_provider_load_named(provider:PGtkCssProvider; name:Pchar; variant:Pchar);cdecl;external;

{$endif}


implementation

function GTK_TYPE_CSS_PROVIDER : longint; { return type might be wrong }
  begin
    GTK_TYPE_CSS_PROVIDER:=gtk_css_provider_get_type;
  end;

function GTK_CSS_PROVIDER(o : longint) : longint;
begin
  GTK_CSS_PROVIDER:=G_TYPE_CHECK_INSTANCE_CAST(o,GTK_TYPE_CSS_PROVIDER,GtkCssProvider);
end;

function GTK_IS_CSS_PROVIDER(o : longint) : longint;
begin
  GTK_IS_CSS_PROVIDER:=G_TYPE_CHECK_INSTANCE_TYPE(o,GTK_TYPE_CSS_PROVIDER);
end;


end.
