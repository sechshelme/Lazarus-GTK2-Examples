/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}

function GDK_XID_TO_POINTER(xid: Tguint): Pointer;
function GDK_POINTER_TO_XID(p: Pointer): guint;


// === Konventiert am: 3-8-24 17:51:25 ===


{$ENDIF read_interface}


{$IFDEF read_implementation}


function GDK_XID_TO_POINTER(xid: Tguint): Pointer;
begin
  GDK_XID_TO_POINTER := GUINT_TO_POINTER(xid);
end;

function GDK_POINTER_TO_XID(p: Pointer): guint;
begin
  GDK_POINTER_TO_XID := guint(p);
end;


{$ENDIF read_implementation}
