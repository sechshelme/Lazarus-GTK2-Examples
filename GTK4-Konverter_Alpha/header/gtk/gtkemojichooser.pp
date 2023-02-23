
unit gtkemojichooser;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkemojichooser.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkemojichooser.h
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
PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwidget.h>}


function GTK_TYPE_EMOJI_CHOOSER : longint; { return type might be wrong }

function GTK_EMOJI_CHOOSER(obj : longint) : longint;

function GTK_EMOJI_CHOOSER_CLASS(klass : longint) : longint;

function GTK_IS_EMOJI_CHOOSER(obj : longint) : longint;

function GTK_IS_EMOJI_CHOOSER_CLASS(klass : longint) : longint;

function GTK_EMOJI_CHOOSER_GET_CLASS(obj : longint) : longint;

type


function gtk_emoji_chooser_get_type:TGType;cdecl;external;

function gtk_emoji_chooser_new:PGtkWidget;cdecl;external;


implementation

function GTK_TYPE_EMOJI_CHOOSER : longint; { return type might be wrong }
  begin
    GTK_TYPE_EMOJI_CHOOSER:=gtk_emoji_chooser_get_type;
  end;

function GTK_EMOJI_CHOOSER(obj : longint) : longint;
begin
  GTK_EMOJI_CHOOSER:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_EMOJI_CHOOSER,GtkEmojiChooser);
end;

function GTK_EMOJI_CHOOSER_CLASS(klass : longint) : longint;
begin
  GTK_EMOJI_CHOOSER_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_EMOJI_CHOOSER,GtkEmojiChooserClass);
end;

function GTK_IS_EMOJI_CHOOSER(obj : longint) : longint;
begin
  GTK_IS_EMOJI_CHOOSER:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_EMOJI_CHOOSER);
end;

function GTK_IS_EMOJI_CHOOSER_CLASS(klass : longint) : longint;
begin
  GTK_IS_EMOJI_CHOOSER_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_EMOJI_CHOOSER);
end;

function GTK_EMOJI_CHOOSER_GET_CLASS(obj : longint) : longint;
begin
  GTK_EMOJI_CHOOSER_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_EMOJI_CHOOSER,GtkEmojiChooserClass);
end;


end.
