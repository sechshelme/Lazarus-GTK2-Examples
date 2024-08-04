unit gtktestutils;

interface

uses
  glib2, common_GTK, gtktypes, gtkwidget;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}

procedure gtk_test_init(argcp: Plongint; argvp: PPPchar; args: array of const); cdecl; external gtklib;
procedure gtk_test_init(argcp: Plongint; argvp: PPPchar); cdecl; external gtklib;
procedure gtk_test_register_all_types; cdecl; external gtklib;
function gtk_test_list_all_types(n_types: Pguint): PGType; cdecl; external gtklib;
procedure gtk_test_widget_wait_for_draw(widget: PGtkWidget); cdecl; external gtklib;

implementation


end.
