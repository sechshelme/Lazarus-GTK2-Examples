unit GSK4_broadway;

//{$modeswitch typehelpers}

interface

uses
  ctypes, gdk2pixbuf, glib2, Cairo, pango, GSK4;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}

  {$DEFINE read_interface}
  {$include GSK/broadway/gskbroadwayrenderer.inc }
  {$UNDEF read_interface}

implementation

{$DEFINE read_implementation}
{$include GSK/broadway/gskbroadwayrenderer.inc }
{$UNDEF read_implementation}

end.
