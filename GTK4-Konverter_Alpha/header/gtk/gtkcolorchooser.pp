
unit gtkcolorchooser;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkcolorchooser.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkcolorchooser.h
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
PGdkRGBA  = ^GdkRGBA;
PGtkColorChooser  = ^GtkColorChooser;
PGtkColorChooserInterface  = ^GtkColorChooserInterface;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_COLOR_CHOOSER_H__}
{$define __GTK_COLOR_CHOOSER_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwidget.h>}


function GTK_TYPE_COLOR_CHOOSER : longint; { return type might be wrong }

function GTK_COLOR_CHOOSER(obj : longint) : longint;

function GTK_IS_COLOR_CHOOSER(obj : longint) : longint;

function GTK_COLOR_CHOOSER_GET_IFACE(inst : longint) : longint;

type




  PGtkColorChooserInterface = ^TGtkColorChooserInterface;
  TGtkColorChooserInterface = record
      base_interface : TGTypeInterface;
      get_rgba : procedure (chooser:PGtkColorChooser; color:PGdkRGBA);cdecl;
      set_rgba : procedure (chooser:PGtkColorChooser; color:PGdkRGBA);cdecl;
      add_palette : procedure (chooser:PGtkColorChooser; orientation:TGtkOrientation; colors_per_line:longint; n_colors:longint; colors:PGdkRGBA);cdecl;
      color_activated : procedure (chooser:PGtkColorChooser; color:PGdkRGBA);cdecl;
      padding : array[0..11] of Tgpointer;
    end;



function gtk_color_chooser_get_type:TGType;cdecl;external;

procedure gtk_color_chooser_get_rgba(chooser:PGtkColorChooser; color:PGdkRGBA);cdecl;external;

procedure gtk_color_chooser_set_rgba(chooser:PGtkColorChooser; color:PGdkRGBA);cdecl;external;

function gtk_color_chooser_get_use_alpha(chooser:PGtkColorChooser):Tgboolean;cdecl;external;

procedure gtk_color_chooser_set_use_alpha(chooser:PGtkColorChooser; use_alpha:Tgboolean);cdecl;external;

procedure gtk_color_chooser_add_palette(chooser:PGtkColorChooser; orientation:TGtkOrientation; colors_per_line:longint; n_colors:longint; colors:PGdkRGBA);cdecl;external;

{$endif}


implementation

function GTK_TYPE_COLOR_CHOOSER : longint; { return type might be wrong }
  begin
    GTK_TYPE_COLOR_CHOOSER:=gtk_color_chooser_get_type;
  end;

function GTK_COLOR_CHOOSER(obj : longint) : longint;
begin
  GTK_COLOR_CHOOSER:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_COLOR_CHOOSER,GtkColorChooser);
end;

function GTK_IS_COLOR_CHOOSER(obj : longint) : longint;
begin
  GTK_IS_COLOR_CHOOSER:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_COLOR_CHOOSER);
end;

function GTK_COLOR_CHOOSER_GET_IFACE(inst : longint) : longint;
begin
  GTK_COLOR_CHOOSER_GET_IFACE:=G_TYPE_INSTANCE_GET_INTERFACE(inst,GTK_TYPE_COLOR_CHOOSER,GtkColorChooserInterface);
end;


end.
