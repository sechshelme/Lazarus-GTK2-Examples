
unit gtkprogressbar;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkprogressbar.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkprogressbar.h
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
PGtkProgressBar  = ^GtkProgressBar;
PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef __GTK_PROGRESS_BAR_H__}
{$define __GTK_PROGRESS_BAR_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwidget.h>}


function GTK_TYPE_PROGRESS_BAR : longint; { return type might be wrong }

function GTK_PROGRESS_BAR(obj : longint) : longint;

function GTK_IS_PROGRESS_BAR(obj : longint) : longint;

type


function gtk_progress_bar_get_type:TGType;cdecl;external;

function gtk_progress_bar_new:PGtkWidget;cdecl;external;

procedure gtk_progress_bar_pulse(pbar:PGtkProgressBar);cdecl;external;

procedure gtk_progress_bar_set_text(pbar:PGtkProgressBar; text:Pchar);cdecl;external;

procedure gtk_progress_bar_set_fraction(pbar:PGtkProgressBar; fraction:Tdouble);cdecl;external;

procedure gtk_progress_bar_set_pulse_step(pbar:PGtkProgressBar; fraction:Tdouble);cdecl;external;

procedure gtk_progress_bar_set_inverted(pbar:PGtkProgressBar; inverted:Tgboolean);cdecl;external;

function gtk_progress_bar_get_text(pbar:PGtkProgressBar):Pchar;cdecl;external;

function gtk_progress_bar_get_fraction(pbar:PGtkProgressBar):Tdouble;cdecl;external;

function gtk_progress_bar_get_pulse_step(pbar:PGtkProgressBar):Tdouble;cdecl;external;

function gtk_progress_bar_get_inverted(pbar:PGtkProgressBar):Tgboolean;cdecl;external;

procedure gtk_progress_bar_set_ellipsize(pbar:PGtkProgressBar; mode:TPangoEllipsizeMode);cdecl;external;

function gtk_progress_bar_get_ellipsize(pbar:PGtkProgressBar):TPangoEllipsizeMode;cdecl;external;

procedure gtk_progress_bar_set_show_text(pbar:PGtkProgressBar; show_text:Tgboolean);cdecl;external;

function gtk_progress_bar_get_show_text(pbar:PGtkProgressBar):Tgboolean;cdecl;external;

{$endif}


implementation

function GTK_TYPE_PROGRESS_BAR : longint; { return type might be wrong }
  begin
    GTK_TYPE_PROGRESS_BAR:=gtk_progress_bar_get_type;
  end;

function GTK_PROGRESS_BAR(obj : longint) : longint;
begin
  GTK_PROGRESS_BAR:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_PROGRESS_BAR,GtkProgressBar);
end;

function GTK_IS_PROGRESS_BAR(obj : longint) : longint;
begin
  GTK_IS_PROGRESS_BAR:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_PROGRESS_BAR);
end;


end.
