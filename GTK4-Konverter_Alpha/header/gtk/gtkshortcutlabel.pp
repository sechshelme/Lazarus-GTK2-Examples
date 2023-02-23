
unit gtkshortcutlabel;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkshortcutlabel.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkshortcutlabel.h
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
PGtkShortcutLabel  = ^GtkShortcutLabel;
PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_SHORTCUT_LABEL_H__}
{$define __GTK_SHORTCUT_LABEL_H__}
{$include <gtk/gtkwidget.h>}


function GTK_TYPE_SHORTCUT_LABEL : longint; { return type might be wrong }

function GTK_SHORTCUT_LABEL(obj : longint) : longint;

function GTK_IS_SHORTCUT_LABEL(obj : longint) : longint;

type


function gtk_shortcut_label_get_type:TGType;cdecl;external;

function gtk_shortcut_label_new(accelerator:Pchar):PGtkWidget;cdecl;external;

function gtk_shortcut_label_get_accelerator(self:PGtkShortcutLabel):Pchar;cdecl;external;

procedure gtk_shortcut_label_set_accelerator(self:PGtkShortcutLabel; accelerator:Pchar);cdecl;external;

function gtk_shortcut_label_get_disabled_text(self:PGtkShortcutLabel):Pchar;cdecl;external;

procedure gtk_shortcut_label_set_disabled_text(self:PGtkShortcutLabel; disabled_text:Pchar);cdecl;external;

{$endif}


implementation

function GTK_TYPE_SHORTCUT_LABEL : longint; { return type might be wrong }
  begin
    GTK_TYPE_SHORTCUT_LABEL:=gtk_shortcut_label_get_type;
  end;

function GTK_SHORTCUT_LABEL(obj : longint) : longint;
begin
  GTK_SHORTCUT_LABEL:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_SHORTCUT_LABEL,GtkShortcutLabel);
end;

function GTK_IS_SHORTCUT_LABEL(obj : longint) : longint;
begin
  GTK_IS_SHORTCUT_LABEL:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_SHORTCUT_LABEL);
end;


end.
