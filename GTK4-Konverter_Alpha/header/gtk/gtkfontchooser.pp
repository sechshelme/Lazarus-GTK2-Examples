
unit gtkfontchooser;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkfontchooser.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkfontchooser.h
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
PGtkFontChooser  = ^GtkFontChooser;
PGtkFontChooserIface  = ^GtkFontChooserIface;
PGtkFontChooserLevel  = ^GtkFontChooserLevel;
PPangoFontDescription  = ^PangoFontDescription;
PPangoFontFace  = ^PangoFontFace;
PPangoFontFamily  = ^PangoFontFamily;
PPangoFontMap  = ^PangoFontMap;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_FONT_CHOOSER_H__}
{$define __GTK_FONT_CHOOSER_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwidget.h>}


type

  TGtkFontFilterFunc = function (family:PPangoFontFamily; face:PPangoFontFace; data:Tgpointer):Tgboolean;cdecl;


  PGtkFontChooserLevel = ^TGtkFontChooserLevel;
  TGtkFontChooserLevel = (GTK_FONT_CHOOSER_LEVEL_FAMILY := 0,GTK_FONT_CHOOSER_LEVEL_STYLE := 1 shl 0,
    GTK_FONT_CHOOSER_LEVEL_SIZE := 1 shl 1,GTK_FONT_CHOOSER_LEVEL_VARIATIONS := 1 shl 2,
    GTK_FONT_CHOOSER_LEVEL_FEATURES := 1 shl 3
    );

function GTK_TYPE_FONT_CHOOSER : longint; { return type might be wrong }

function GTK_FONT_CHOOSER(obj : longint) : longint;

function GTK_IS_FONT_CHOOSER(obj : longint) : longint;

function GTK_FONT_CHOOSER_GET_IFACE(inst : longint) : longint;

type






  PGtkFontChooserIface = ^TGtkFontChooserIface;
  TGtkFontChooserIface = record
      base_iface : TGTypeInterface;
      get_font_family : function (fontchooser:PGtkFontChooser):PPangoFontFamily;cdecl;
      get_font_face : function (fontchooser:PGtkFontChooser):PPangoFontFace;cdecl;
      get_font_size : function (fontchooser:PGtkFontChooser):longint;cdecl;
      set_filter_func : procedure (fontchooser:PGtkFontChooser; filter:TGtkFontFilterFunc; user_data:Tgpointer; destroy:TGDestroyNotify);cdecl;
      font_activated : procedure (chooser:PGtkFontChooser; fontname:Pchar);cdecl;
      set_font_map : procedure (fontchooser:PGtkFontChooser; fontmap:PPangoFontMap);cdecl;
      get_font_map : function (fontchooser:PGtkFontChooser):PPangoFontMap;cdecl;
      padding : array[0..9] of Tgpointer;
    end;



function gtk_font_chooser_get_type:TGType;cdecl;external;

function gtk_font_chooser_get_font_family(fontchooser:PGtkFontChooser):PPangoFontFamily;cdecl;external;

function gtk_font_chooser_get_font_face(fontchooser:PGtkFontChooser):PPangoFontFace;cdecl;external;

function gtk_font_chooser_get_font_size(fontchooser:PGtkFontChooser):longint;cdecl;external;

function gtk_font_chooser_get_font_desc(fontchooser:PGtkFontChooser):PPangoFontDescription;cdecl;external;

procedure gtk_font_chooser_set_font_desc(fontchooser:PGtkFontChooser; font_desc:PPangoFontDescription);cdecl;external;

function gtk_font_chooser_get_font(fontchooser:PGtkFontChooser):Pchar;cdecl;external;

procedure gtk_font_chooser_set_font(fontchooser:PGtkFontChooser; fontname:Pchar);cdecl;external;

function gtk_font_chooser_get_preview_text(fontchooser:PGtkFontChooser):Pchar;cdecl;external;

procedure gtk_font_chooser_set_preview_text(fontchooser:PGtkFontChooser; text:Pchar);cdecl;external;

function gtk_font_chooser_get_show_preview_entry(fontchooser:PGtkFontChooser):Tgboolean;cdecl;external;

procedure gtk_font_chooser_set_show_preview_entry(fontchooser:PGtkFontChooser; show_preview_entry:Tgboolean);cdecl;external;

procedure gtk_font_chooser_set_filter_func(fontchooser:PGtkFontChooser; filter:TGtkFontFilterFunc; user_data:Tgpointer; destroy:TGDestroyNotify);cdecl;external;

procedure gtk_font_chooser_set_font_map(fontchooser:PGtkFontChooser; fontmap:PPangoFontMap);cdecl;external;

function gtk_font_chooser_get_font_map(fontchooser:PGtkFontChooser):PPangoFontMap;cdecl;external;

procedure gtk_font_chooser_set_level(fontchooser:PGtkFontChooser; level:TGtkFontChooserLevel);cdecl;external;

function gtk_font_chooser_get_level(fontchooser:PGtkFontChooser):TGtkFontChooserLevel;cdecl;external;

function gtk_font_chooser_get_font_features(fontchooser:PGtkFontChooser):Pchar;cdecl;external;

function gtk_font_chooser_get_language(fontchooser:PGtkFontChooser):Pchar;cdecl;external;

procedure gtk_font_chooser_set_language(fontchooser:PGtkFontChooser; language:Pchar);cdecl;external;

{$endif}


implementation

function GTK_TYPE_FONT_CHOOSER : longint; { return type might be wrong }
  begin
    GTK_TYPE_FONT_CHOOSER:=gtk_font_chooser_get_type;
  end;

function GTK_FONT_CHOOSER(obj : longint) : longint;
begin
  GTK_FONT_CHOOSER:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_FONT_CHOOSER,GtkFontChooser);
end;

function GTK_IS_FONT_CHOOSER(obj : longint) : longint;
begin
  GTK_IS_FONT_CHOOSER:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_FONT_CHOOSER);
end;

function GTK_FONT_CHOOSER_GET_IFACE(inst : longint) : longint;
begin
  GTK_FONT_CHOOSER_GET_IFACE:=G_TYPE_INSTANCE_GET_INTERFACE(inst,GTK_TYPE_FONT_CHOOSER,GtkFontChooserIface);
end;


end.
