
unit gtklabel;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtklabel.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtklabel.h
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
PGMenuModel  = ^GMenuModel;
PGtkLabel  = ^GtkLabel;
PGtkWidget  = ^GtkWidget;
Plongint  = ^longint;
PPangoAttrList  = ^PangoAttrList;
PPangoLayout  = ^PangoLayout;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef __GTK_LABEL_H__}
{$define __GTK_LABEL_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwidget.h>}


function GTK_TYPE_LABEL : longint; { return type might be wrong }

function GTK_LABEL(obj : longint) : longint;

function GTK_IS_LABEL(obj : longint) : longint;

type


function gtk_label_get_type:TGType;cdecl;external;

function gtk_label_new(str:Pchar):PGtkWidget;cdecl;external;

function gtk_label_new_with_mnemonic(str:Pchar):PGtkWidget;cdecl;external;

procedure gtk_label_set_text(self:PGtkLabel; str:Pchar);cdecl;external;

function gtk_label_get_text(self:PGtkLabel):Pchar;cdecl;external;

procedure gtk_label_set_attributes(self:PGtkLabel; attrs:PPangoAttrList);cdecl;external;

function gtk_label_get_attributes(self:PGtkLabel):PPangoAttrList;cdecl;external;

procedure gtk_label_set_label(self:PGtkLabel; str:Pchar);cdecl;external;

function gtk_label_get_label(self:PGtkLabel):Pchar;cdecl;external;

procedure gtk_label_set_markup(self:PGtkLabel; str:Pchar);cdecl;external;

procedure gtk_label_set_use_markup(self:PGtkLabel; setting:Tgboolean);cdecl;external;

function gtk_label_get_use_markup(self:PGtkLabel):Tgboolean;cdecl;external;

procedure gtk_label_set_use_underline(self:PGtkLabel; setting:Tgboolean);cdecl;external;

function gtk_label_get_use_underline(self:PGtkLabel):Tgboolean;cdecl;external;

procedure gtk_label_set_markup_with_mnemonic(self:PGtkLabel; str:Pchar);cdecl;external;

function gtk_label_get_mnemonic_keyval(self:PGtkLabel):Tguint;cdecl;external;

procedure gtk_label_set_mnemonic_widget(self:PGtkLabel; widget:PGtkWidget);cdecl;external;

function gtk_label_get_mnemonic_widget(self:PGtkLabel):PGtkWidget;cdecl;external;

procedure gtk_label_set_text_with_mnemonic(self:PGtkLabel; str:Pchar);cdecl;external;

procedure gtk_label_set_justify(self:PGtkLabel; jtype:TGtkJustification);cdecl;external;

function gtk_label_get_justify(self:PGtkLabel):TGtkJustification;cdecl;external;

procedure gtk_label_set_ellipsize(self:PGtkLabel; mode:TPangoEllipsizeMode);cdecl;external;

function gtk_label_get_ellipsize(self:PGtkLabel):TPangoEllipsizeMode;cdecl;external;

procedure gtk_label_set_width_chars(self:PGtkLabel; n_chars:longint);cdecl;external;

function gtk_label_get_width_chars(self:PGtkLabel):longint;cdecl;external;

procedure gtk_label_set_max_width_chars(self:PGtkLabel; n_chars:longint);cdecl;external;

function gtk_label_get_max_width_chars(self:PGtkLabel):longint;cdecl;external;

procedure gtk_label_set_lines(self:PGtkLabel; lines:longint);cdecl;external;

function gtk_label_get_lines(self:PGtkLabel):longint;cdecl;external;

procedure gtk_label_set_wrap(self:PGtkLabel; wrap:Tgboolean);cdecl;external;

function gtk_label_get_wrap(self:PGtkLabel):Tgboolean;cdecl;external;

procedure gtk_label_set_wrap_mode(self:PGtkLabel; wrap_mode:TPangoWrapMode);cdecl;external;

function gtk_label_get_wrap_mode(self:PGtkLabel):TPangoWrapMode;cdecl;external;

procedure gtk_label_set_natural_wrap_mode(self:PGtkLabel; wrap_mode:TGtkNaturalWrapMode);cdecl;external;

function gtk_label_get_natural_wrap_mode(self:PGtkLabel):TGtkNaturalWrapMode;cdecl;external;

procedure gtk_label_set_selectable(self:PGtkLabel; setting:Tgboolean);cdecl;external;

function gtk_label_get_selectable(self:PGtkLabel):Tgboolean;cdecl;external;

procedure gtk_label_select_region(self:PGtkLabel; start_offset:longint; end_offset:longint);cdecl;external;

function gtk_label_get_selection_bounds(self:PGtkLabel; start:Plongint; end:Plongint):Tgboolean;cdecl;external;

function gtk_label_get_layout(self:PGtkLabel):PPangoLayout;cdecl;external;

procedure gtk_label_get_layout_offsets(self:PGtkLabel; x:Plongint; y:Plongint);cdecl;external;

procedure gtk_label_set_single_line_mode(self:PGtkLabel; single_line_mode:Tgboolean);cdecl;external;

function gtk_label_get_single_line_mode(self:PGtkLabel):Tgboolean;cdecl;external;

function gtk_label_get_current_uri(self:PGtkLabel):Pchar;cdecl;external;

procedure gtk_label_set_xalign(self:PGtkLabel; xalign:single);cdecl;external;

function gtk_label_get_xalign(self:PGtkLabel):single;cdecl;external;

procedure gtk_label_set_yalign(self:PGtkLabel; yalign:single);cdecl;external;

function gtk_label_get_yalign(self:PGtkLabel):single;cdecl;external;

procedure gtk_label_set_extra_menu(self:PGtkLabel; model:PGMenuModel);cdecl;external;

function gtk_label_get_extra_menu(self:PGtkLabel):PGMenuModel;cdecl;external;


{$endif}


implementation

function GTK_TYPE_LABEL : longint; { return type might be wrong }
  begin
    GTK_TYPE_LABEL:=gtk_label_get_type;
  end;

function GTK_LABEL(obj : longint) : longint;
begin
  GTK_LABEL:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_LABEL,GtkLabel);
end;

function GTK_IS_LABEL(obj : longint) : longint;
begin
  GTK_IS_LABEL:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_LABEL);
end;


end.
