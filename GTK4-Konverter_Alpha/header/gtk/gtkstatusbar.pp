
unit gtkstatusbar;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkstatusbar.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkstatusbar.h
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
PGtkStatusbar  = ^GtkStatusbar;
PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef __GTK_STATUSBAR_H__}
{$define __GTK_STATUSBAR_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwidget.h>}


function GTK_TYPE_STATUSBAR : longint; { return type might be wrong }

function GTK_STATUSBAR(obj : longint) : longint;

function GTK_IS_STATUSBAR(obj : longint) : longint;

type


function gtk_statusbar_get_type:TGType;cdecl;external;

function gtk_statusbar_new:PGtkWidget;cdecl;external;

function gtk_statusbar_get_context_id(statusbar:PGtkStatusbar; context_description:Pchar):Tguint;cdecl;external;

function gtk_statusbar_push(statusbar:PGtkStatusbar; context_id:Tguint; text:Pchar):Tguint;cdecl;external;

procedure gtk_statusbar_pop(statusbar:PGtkStatusbar; context_id:Tguint);cdecl;external;

procedure gtk_statusbar_remove(statusbar:PGtkStatusbar; context_id:Tguint; message_id:Tguint);cdecl;external;

procedure gtk_statusbar_remove_all(statusbar:PGtkStatusbar; context_id:Tguint);cdecl;external;

{$endif}


implementation

function GTK_TYPE_STATUSBAR : longint; { return type might be wrong }
  begin
    GTK_TYPE_STATUSBAR:=gtk_statusbar_get_type;
  end;

function GTK_STATUSBAR(obj : longint) : longint;
begin
  GTK_STATUSBAR:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_STATUSBAR,GtkStatusbar);
end;

function GTK_IS_STATUSBAR(obj : longint) : longint;
begin
  GTK_IS_STATUSBAR:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_STATUSBAR);
end;


end.
