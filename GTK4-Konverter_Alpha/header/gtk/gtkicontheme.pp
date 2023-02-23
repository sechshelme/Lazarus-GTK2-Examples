
unit gtkicontheme;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkicontheme.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkicontheme.h
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
PGdkDisplay  = ^GdkDisplay;
PGFile  = ^GFile;
PGIcon  = ^GIcon;
PGtkIconLookupFlags  = ^GtkIconLookupFlags;
PGtkIconPaintable  = ^GtkIconPaintable;
PGtkIconTheme  = ^GtkIconTheme;
PGtkIconThemeError  = ^GtkIconThemeError;
Plongint  = ^longint;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_ICON_THEME_H__}
{$define __GTK_ICON_THEME_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gdk/gdk.h>}
{$include <gtk/gtkenums.h>}


function GTK_TYPE_ICON_PAINTABLE : longint; { return type might be wrong }

function GTK_ICON_PAINTABLE(obj : longint) : longint;

function GTK_IS_ICON_PAINTABLE(obj : longint) : longint;

function GTK_TYPE_ICON_THEME : longint; { return type might be wrong }

function GTK_ICON_THEME(obj : longint) : longint;

function GTK_IS_ICON_THEME(obj : longint) : longint;

type


  PGtkIconLookupFlags = ^TGtkIconLookupFlags;
  TGtkIconLookupFlags = (GTK_ICON_LOOKUP_FORCE_REGULAR := 1 shl 0,GTK_ICON_LOOKUP_FORCE_SYMBOLIC := 1 shl 1,
    GTK_ICON_LOOKUP_PRELOAD := 1 shl 2);


function GTK_ICON_THEME_ERROR : longint; { return type might be wrong }


type
  PGtkIconThemeError = ^TGtkIconThemeError;
  TGtkIconThemeError = (GTK_ICON_THEME_NOT_FOUND,GTK_ICON_THEME_FAILED
    );


function gtk_icon_theme_error_quark:TGQuark;cdecl;external;

function gtk_icon_theme_get_type:TGType;cdecl;external;

function gtk_icon_theme_new:PGtkIconTheme;cdecl;external;

function gtk_icon_theme_get_for_display(display:PGdkDisplay):PGtkIconTheme;cdecl;external;

function gtk_icon_theme_get_display(self:PGtkIconTheme):PGdkDisplay;cdecl;external;

procedure gtk_icon_theme_set_search_path(self:PGtkIconTheme; path:PPchar);cdecl;external;

function gtk_icon_theme_get_search_path(self:PGtkIconTheme):^Pchar;cdecl;external;

procedure gtk_icon_theme_add_search_path(self:PGtkIconTheme; path:Pchar);cdecl;external;

procedure gtk_icon_theme_set_resource_path(self:PGtkIconTheme; path:PPchar);cdecl;external;

function gtk_icon_theme_get_resource_path(self:PGtkIconTheme):^Pchar;cdecl;external;

procedure gtk_icon_theme_add_resource_path(self:PGtkIconTheme; path:Pchar);cdecl;external;

procedure gtk_icon_theme_set_theme_name(self:PGtkIconTheme; theme_name:Pchar);cdecl;external;

function gtk_icon_theme_get_theme_name(self:PGtkIconTheme):Pchar;cdecl;external;

function gtk_icon_theme_has_icon(self:PGtkIconTheme; icon_name:Pchar):Tgboolean;cdecl;external;

function gtk_icon_theme_has_gicon(self:PGtkIconTheme; gicon:PGIcon):Tgboolean;cdecl;external;

function gtk_icon_theme_get_icon_sizes(self:PGtkIconTheme; icon_name:Pchar):Plongint;cdecl;external;

function gtk_icon_theme_lookup_icon(self:PGtkIconTheme; icon_name:Pchar; fallbacks:PPchar; size:longint; scale:longint; 
           direction:TGtkTextDirection; flags:TGtkIconLookupFlags):PGtkIconPaintable;cdecl;external;

function gtk_icon_theme_lookup_by_gicon(self:PGtkIconTheme; icon:PGIcon; size:longint; scale:longint; direction:TGtkTextDirection; 
           flags:TGtkIconLookupFlags):PGtkIconPaintable;cdecl;external;

function gtk_icon_paintable_new_for_file(file:PGFile; size:longint; scale:longint):PGtkIconPaintable;cdecl;external;

function gtk_icon_theme_get_icon_names(self:PGtkIconTheme):^Pchar;cdecl;external;

function gtk_icon_paintable_get_type:TGType;cdecl;external;

function gtk_icon_paintable_get_file(self:PGtkIconPaintable):PGFile;cdecl;external;

function gtk_icon_paintable_get_icon_name(self:PGtkIconPaintable):Pchar;cdecl;external;

function gtk_icon_paintable_is_symbolic(self:PGtkIconPaintable):Tgboolean;cdecl;external;

{$endif}


implementation

function GTK_TYPE_ICON_PAINTABLE : longint; { return type might be wrong }
  begin
    GTK_TYPE_ICON_PAINTABLE:=gtk_icon_paintable_get_type;
  end;

function GTK_ICON_PAINTABLE(obj : longint) : longint;
begin
  GTK_ICON_PAINTABLE:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_ICON_PAINTABLE,GtkIconPaintable);
end;

function GTK_IS_ICON_PAINTABLE(obj : longint) : longint;
begin
  GTK_IS_ICON_PAINTABLE:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_ICON_PAINTABLE);
end;

function GTK_TYPE_ICON_THEME : longint; { return type might be wrong }
  begin
    GTK_TYPE_ICON_THEME:=gtk_icon_theme_get_type;
  end;

function GTK_ICON_THEME(obj : longint) : longint;
begin
  GTK_ICON_THEME:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_ICON_THEME,GtkIconTheme);
end;

function GTK_IS_ICON_THEME(obj : longint) : longint;
begin
  GTK_IS_ICON_THEME:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_ICON_THEME);
end;

function GTK_ICON_THEME_ERROR : longint; { return type might be wrong }
  begin
    GTK_ICON_THEME_ERROR:=gtk_icon_theme_error_quark;
  end;


end.
