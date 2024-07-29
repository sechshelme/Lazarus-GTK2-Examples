unit gtktypes;

interface

uses
  common_GTK;

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}

type
  PGtkSnapshot = ^TGtkSnapshot;
  TGtkSnapshot = TGdkSnapshot;

function GTK_INVALID_LIST_POSITION: Tguint;

implementation

function GTK_INVALID_LIST_POSITION: Tguint;
begin
  GTK_INVALID_LIST_POSITION := Tguint($ffffffff);
end;


end.
