unit Common;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils;
         type
  TListMacro = record
    old, new: string;
  end;
  TListMacros = array of TListMacro;

const
  HeaderPath = '/usr/include/gtk-4.0/';
  HeaderDespPath = '/tmp/GTK4-Konverter-header/';
  PackageDirectory='gtk';

  //  HeaderMask = 'gtkb*.h';

  //HeaderMask = 'gtke*.h';
  //    HeaderMask = 'gdkt*.h';
  HeaderMask = '*.h';
  HeaderMask4 = '*.h';



implementation

end.

