
unit gtkrevealer;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkrevealer.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkrevealer.h
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
PGtkRevealer  = ^GtkRevealer;
PGtkRevealerTransitionType  = ^GtkRevealerTransitionType;
PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_REVEALER_H__}
{$define __GTK_REVEALER_H__}
{$include <gtk/gtkwidget.h>}


function GTK_TYPE_REVEALER : longint; { return type might be wrong }

function GTK_REVEALER(obj : longint) : longint;

function GTK_IS_REVEALER(obj : longint) : longint;

type

  PGtkRevealerTransitionType = ^TGtkRevealerTransitionType;
  TGtkRevealerTransitionType = (GTK_REVEALER_TRANSITION_TYPE_NONE,GTK_REVEALER_TRANSITION_TYPE_CROSSFADE,
    GTK_REVEALER_TRANSITION_TYPE_SLIDE_RIGHT,
    GTK_REVEALER_TRANSITION_TYPE_SLIDE_LEFT,
    GTK_REVEALER_TRANSITION_TYPE_SLIDE_UP,
    GTK_REVEALER_TRANSITION_TYPE_SLIDE_DOWN,
    GTK_REVEALER_TRANSITION_TYPE_SWING_RIGHT,
    GTK_REVEALER_TRANSITION_TYPE_SWING_LEFT,
    GTK_REVEALER_TRANSITION_TYPE_SWING_UP,
    GTK_REVEALER_TRANSITION_TYPE_SWING_DOWN
    );


function gtk_revealer_get_type:TGType;cdecl;external;

function gtk_revealer_new:PGtkWidget;cdecl;external;

function gtk_revealer_get_reveal_child(revealer:PGtkRevealer):Tgboolean;cdecl;external;

procedure gtk_revealer_set_reveal_child(revealer:PGtkRevealer; reveal_child:Tgboolean);cdecl;external;

function gtk_revealer_get_child_revealed(revealer:PGtkRevealer):Tgboolean;cdecl;external;

function gtk_revealer_get_transition_duration(revealer:PGtkRevealer):Tguint;cdecl;external;

procedure gtk_revealer_set_transition_duration(revealer:PGtkRevealer; duration:Tguint);cdecl;external;

procedure gtk_revealer_set_transition_type(revealer:PGtkRevealer; transition:TGtkRevealerTransitionType);cdecl;external;

function gtk_revealer_get_transition_type(revealer:PGtkRevealer):TGtkRevealerTransitionType;cdecl;external;

procedure gtk_revealer_set_child(revealer:PGtkRevealer; child:PGtkWidget);cdecl;external;

function gtk_revealer_get_child(revealer:PGtkRevealer):PGtkWidget;cdecl;external;

{$endif}


implementation

function GTK_TYPE_REVEALER : longint; { return type might be wrong }
  begin
    GTK_TYPE_REVEALER:=gtk_revealer_get_type;
  end;

function GTK_REVEALER(obj : longint) : longint;
begin
  GTK_REVEALER:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_REVEALER,GtkRevealer);
end;

function GTK_IS_REVEALER(obj : longint) : longint;
begin
  GTK_IS_REVEALER:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_REVEALER);
end;


end.
