
unit gtkpasswordentrybuffer;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkpasswordentrybuffer.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkpasswordentrybuffer.h
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
PGtkEntryBuffer  = ^GtkEntryBuffer;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$include <gtk/gtkentrybuffer.h>}


function GTK_TYPE_PASSWORD_ENTRY_BUFFER : longint; { return type might be wrong }




function gtk_password_entry_buffer_new:PGtkEntryBuffer;cdecl;external;


implementation

function GTK_TYPE_PASSWORD_ENTRY_BUFFER : longint; { return type might be wrong }
  begin
    GTK_TYPE_PASSWORD_ENTRY_BUFFER:=gtk_password_entry_buffer_get_type;
  end;


end.
