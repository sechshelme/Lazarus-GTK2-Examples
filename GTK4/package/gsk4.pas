unit GSK4;

//{$modeswitch typehelpers}

interface

uses
  ctypes, gdk2pixbuf, glib2, Cairo, pango, GDK4;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}

  {$DEFINE read_interface}
  {$include GSK4_includes.inc}
  {$UNDEF read_interface}


implementation

{$DEFINE read_implementation}
{$include GSK4_includes.inc}
{$UNDEF read_implementation}

end.
