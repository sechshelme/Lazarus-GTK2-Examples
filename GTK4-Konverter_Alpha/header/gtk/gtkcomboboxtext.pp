
unit gtkcomboboxtext;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkcomboboxtext.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkcomboboxtext.h
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
PGtkComboBoxText  = ^GtkComboBoxText;
PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_COMBO_BOX_TEXT_H__}
{$define __GTK_COMBO_BOX_TEXT_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkcombobox.h>}


function GTK_TYPE_COMBO_BOX_TEXT : longint; { return type might be wrong }

function GTK_COMBO_BOX_TEXT(obj : longint) : longint;

function GTK_IS_COMBO_BOX_TEXT(obj : longint) : longint;

type


function gtk_combo_box_text_get_type:TGType;cdecl;external;

function gtk_combo_box_text_new:PGtkWidget;cdecl;external;

function gtk_combo_box_text_new_with_entry:PGtkWidget;cdecl;external;

procedure gtk_combo_box_text_append_text(combo_box:PGtkComboBoxText; text:Pchar);cdecl;external;

procedure gtk_combo_box_text_insert_text(combo_box:PGtkComboBoxText; position:longint; text:Pchar);cdecl;external;

procedure gtk_combo_box_text_prepend_text(combo_box:PGtkComboBoxText; text:Pchar);cdecl;external;

procedure gtk_combo_box_text_remove(combo_box:PGtkComboBoxText; position:longint);cdecl;external;

procedure gtk_combo_box_text_remove_all(combo_box:PGtkComboBoxText);cdecl;external;

function gtk_combo_box_text_get_active_text(combo_box:PGtkComboBoxText):Pchar;cdecl;external;

procedure gtk_combo_box_text_insert(combo_box:PGtkComboBoxText; position:longint; id:Pchar; text:Pchar);cdecl;external;

procedure gtk_combo_box_text_append(combo_box:PGtkComboBoxText; id:Pchar; text:Pchar);cdecl;external;

procedure gtk_combo_box_text_prepend(combo_box:PGtkComboBoxText; id:Pchar; text:Pchar);cdecl;external;

{$endif}


implementation

function GTK_TYPE_COMBO_BOX_TEXT : longint; { return type might be wrong }
  begin
    GTK_TYPE_COMBO_BOX_TEXT:=gtk_combo_box_text_get_type;
  end;

function GTK_COMBO_BOX_TEXT(obj : longint) : longint;
begin
  GTK_COMBO_BOX_TEXT:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_COMBO_BOX_TEXT,GtkComboBoxText);
end;

function GTK_IS_COMBO_BOX_TEXT(obj : longint) : longint;
begin
  GTK_IS_COMBO_BOX_TEXT:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_COMBO_BOX_TEXT);
end;


end.
