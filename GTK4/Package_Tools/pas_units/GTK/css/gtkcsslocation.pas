unit gtkcsslocation;

interface

uses
  glib2, common_GTK;

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}

type
  PGtkCssLocation = ^TGtkCssLocation;
  TGtkCssLocation = record
      bytes : Tgsize;
      chars : Tgsize;
      lines : Tgsize;
      line_bytes : Tgsize;
      line_chars : Tgsize;
    end;


// === Konventiert am: 2-8-24 19:06:05 ===


implementation



end.
