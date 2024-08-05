unit GDK4_broadway;

//{$modeswitch typehelpers}

interface

uses
  ctypes, gdk2pixbuf, glib2, Cairo, pango, GDK4;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}

  {$DEFINE read_interface}
  {$include GDK/broadway/gdkbroadwaycursor.inc }
  {$include GDK/broadway/gdkbroadwaydisplay.inc }
  {$include GDK/broadway/gdkbroadwaymonitor.inc }
  {$include GDK/broadway/gdkbroadwaysurface.inc }
  {$UNDEF read_interface}

implementation

{$DEFINE read_implementation}
{$include GDK/broadway/gdkbroadwaycursor.inc }
{$include GDK/broadway/gdkbroadwaydisplay.inc }
{$include GDK/broadway/gdkbroadwaymonitor.inc }
{$include GDK/broadway/gdkbroadwaysurface.inc }
{$UNDEF read_implementation}

end.
