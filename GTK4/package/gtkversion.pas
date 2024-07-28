
unit gtkversion;

interface

uses
  common_GTK;

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


const
  GTK_MAJOR_VERSION = 4;
  GTK_MINOR_VERSION = 14;
  GTK_MICRO_VERSION = 2;
  GTK_BINARY_AGE = 1402;
  GTK_INTERFACE_AGE = 2;
{
#define GTK_CHECK_VERSION(major,minor,micro)                          \
    (GTK_MAJOR_VERSION > (major) ||                                   \
     (GTK_MAJOR_VERSION == (major) && GTK_MINOR_VERSION > (minor)) || \
     (GTK_MAJOR_VERSION == (major) && GTK_MINOR_VERSION == (minor) && \
      GTK_MICRO_VERSION >= (micro)))

 }

function gtk_get_major_version: Tguint; cdecl; external gtklib;
function gtk_get_minor_version: Tguint; cdecl; external gtklib;
function gtk_get_micro_version: Tguint; cdecl; external gtklib;
function gtk_get_binary_age: Tguint; cdecl; external gtklib;
function gtk_get_interface_age: Tguint; cdecl; external gtklib;
function gtk_check_version(required_major: Tguint; required_minor: Tguint; required_micro: Tguint): PChar; cdecl; external gtklib;

implementation


end.
