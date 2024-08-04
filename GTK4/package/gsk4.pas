unit GSK4;

//{$modeswitch typehelpers}

interface

uses
  ctypes, gdk2pixbuf, glib2, Cairo, pango, GDK4;

//const
//  {$IFDEF Linux}
//  gtklib = 'libgtk-4';
//  libgio = 'libgio-2.0';
//  gobjectlib = 'libgobject-2.0';
//  {$ENDIF}

//  {$IFDEF Windows}
//  gtklib = 'libgtk-4.dll';
//  libgio = 'libgio-2.0.dll';
//  gobjectlib = 'libgobject-2.0.dll';
//  {$ENDIF}

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

