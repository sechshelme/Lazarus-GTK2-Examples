unit gdkx11property;

interface

uses
  x, glib2, common_GTK, gdktypes;

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}

function gdk_x11_get_xatom_by_name_for_display(display:PGdkDisplay; atom_name:Pchar):TAtom;cdecl;external gtklib;
function gdk_x11_get_xatom_name_for_display(display:PGdkDisplay; xatom:TAtom):Pchar;cdecl;external gtklib;

// === Konventiert am: 3-8-24 17:42:50 ===


implementation



end.
