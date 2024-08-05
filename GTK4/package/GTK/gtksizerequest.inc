/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}

type
  TGtkRequestedSize = record
    Data: Tgpointer;
    minimum_size: longint;
    natural_size: longint;
  end;
  PGtkRequestedSize = ^TGtkRequestedSize;


function gtk_distribute_natural_allocation(extra_space: longint; n_requested_sizes: Tguint; sizes: PGtkRequestedSize): longint; cdecl; external gtklib;

{$ENDIF read_interface}


{$IFDEF read_implementation}


{$ENDIF read_implementation}
