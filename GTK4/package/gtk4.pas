unit GTK4;

//{$modeswitch typehelpers}

interface

  uses
    ctypes, Cairo, glib2, pango;

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
  {$include GTK4_includes.inc}
  {$UNDEF read_interface}


implementation

{$DEFINE read_implementation}
{$include GTK4_includes.inc}
{$UNDEF read_implementation}

end.

