
unit gtkatcontext;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkatcontext.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkatcontext.h
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
PGdkDisplay  = ^GdkDisplay;
PGtkAccessible  = ^GtkAccessible;
PGtkATContext  = ^GtkATContext;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtktypes.h>}
{$include <gtk/gtkenums.h>}
{$include <gtk/gtkaccessible.h>}


function GTK_TYPE_AT_CONTEXT : longint; { return type might be wrong }




function gtk_at_context_get_accessible(self:PGtkATContext):PGtkAccessible;cdecl;external;

function gtk_at_context_get_accessible_role(self:PGtkATContext):TGtkAccessibleRole;cdecl;external;

function gtk_at_context_create(accessible_role:TGtkAccessibleRole; accessible:PGtkAccessible; display:PGdkDisplay):PGtkATContext;cdecl;external;


implementation

function GTK_TYPE_AT_CONTEXT : longint; { return type might be wrong }
  begin
    GTK_TYPE_AT_CONTEXT:=gtk_at_context_get_type;
  end;


end.
