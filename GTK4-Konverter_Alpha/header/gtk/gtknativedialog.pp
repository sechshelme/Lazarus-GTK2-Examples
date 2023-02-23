
unit gtknativedialog;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtknativedialog.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtknativedialog.h
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
PGtkNativeDialog  = ^GtkNativeDialog;
PGtkNativeDialogClass  = ^GtkNativeDialogClass;
PGtkWindow  = ^GtkWindow;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_NATIVE_DIALOG_H__}
{$define __GTK_NATIVE_DIALOG_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwindow.h>}


function GTK_TYPE_NATIVE_DIALOG : longint; { return type might be wrong }








type
  PGtkNativeDialogClass = ^TGtkNativeDialogClass;
  TGtkNativeDialogClass = record
      parent_class : TGObjectClass;
      response : procedure (self:PGtkNativeDialog; response_id:longint);cdecl;
      show : procedure (self:PGtkNativeDialog);cdecl;
      hide : procedure (self:PGtkNativeDialog);cdecl;
      _gtk_reserved1 : procedure ;cdecl;
      _gtk_reserved2 : procedure ;cdecl;
      _gtk_reserved3 : procedure ;cdecl;
      _gtk_reserved4 : procedure ;cdecl;
    end;



procedure gtk_native_dialog_show(self:PGtkNativeDialog);cdecl;external;

procedure gtk_native_dialog_hide(self:PGtkNativeDialog);cdecl;external;

procedure gtk_native_dialog_destroy(self:PGtkNativeDialog);cdecl;external;

function gtk_native_dialog_get_visible(self:PGtkNativeDialog):Tgboolean;cdecl;external;

procedure gtk_native_dialog_set_modal(self:PGtkNativeDialog; modal:Tgboolean);cdecl;external;

function gtk_native_dialog_get_modal(self:PGtkNativeDialog):Tgboolean;cdecl;external;

procedure gtk_native_dialog_set_title(self:PGtkNativeDialog; title:Pchar);cdecl;external;

function gtk_native_dialog_get_title(self:PGtkNativeDialog):Pchar;cdecl;external;

procedure gtk_native_dialog_set_transient_for(self:PGtkNativeDialog; parent:PGtkWindow);cdecl;external;

function gtk_native_dialog_get_transient_for(self:PGtkNativeDialog):PGtkWindow;cdecl;external;

{$endif}


implementation

function GTK_TYPE_NATIVE_DIALOG : longint; { return type might be wrong }
  begin
    GTK_TYPE_NATIVE_DIALOG:=gtk_native_dialog_get_type;
  end;


end.
