unit gtksizerequest;

interface

uses
  common_GTK;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}

type
  TGtkRequestedSize = record
    Data: Tgpointer;
    minimum_size: longint;
    natural_size: longint;
  end;
  PGtkRequestedSize = ^TGtkRequestedSize;


function gtk_distribute_natural_allocation(extra_space: longint; n_requested_sizes: Tguint; sizes: PGtkRequestedSize): longint; cdecl; external gtklib;

implementation


end.
