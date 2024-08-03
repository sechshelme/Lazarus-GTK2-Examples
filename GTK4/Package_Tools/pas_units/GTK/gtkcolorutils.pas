unit gtkcolorutils;

interface

uses
  common_GTK;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}


procedure gtk_hsv_to_rgb(h: single; s: single; v: single; r: Psingle; g: Psingle; b: Psingle); cdecl; external gtklib;
procedure gtk_rgb_to_hsv(r: single; g: single; b: single; h: Psingle; s: Psingle; v: Psingle); cdecl; external gtklib;

implementation


end.
