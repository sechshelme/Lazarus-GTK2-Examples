
unit gtkborder;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkborder.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkborder.h
    -v
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
PGtkBorder  = ^GtkBorder;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef __GTK_BORDER_H__}
{$define __GTK_BORDER_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <glib-object.h>}
{$include <gdk/gdk.h>}

type

function GTK_TYPE_BORDER : longint; { return type might be wrong }


type
  PGtkBorder = ^TGtkBorder;
  TGtkBorder = record
      left : Tgint16;
      right : Tgint16;
      top : Tgint16;
      bottom : Tgint16;
    end;



function gtk_border_get_type:TGType;cdecl;external;

(* error 
GtkBorder *gtk_border_new      (void) G_GNUC_MALLOC;
 in declarator_list *)
  var
 : TGtkBorder;


function gtk_border_copy(var border_:TGtkBorder):PGtkBorder;cdecl;external;

procedure gtk_border_free(var border_:TGtkBorder);cdecl;external;


{$endif}


implementation

function GTK_TYPE_BORDER : longint; { return type might be wrong }
  begin
    GTK_TYPE_BORDER:=gtk_border_get_type;
  end;


end.
