/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 04-08-2024   16:38                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}

function gdk_keyval_name(keyval: Tguint): PChar; cdecl; external gtklib;
function gdk_keyval_from_name(keyval_name: PChar): Tguint; cdecl; external gtklib;
procedure gdk_keyval_convert_case(symbol: Tguint; lower: Pguint; upper: Pguint); cdecl; external gtklib;
function gdk_keyval_to_upper(keyval: Tguint): Tguint; cdecl; external gtklib;
function gdk_keyval_to_lower(keyval: Tguint): Tguint; cdecl; external gtklib;
function gdk_keyval_is_upper(keyval: Tguint): Tgboolean; cdecl; external gtklib;
function gdk_keyval_is_lower(keyval: Tguint): Tgboolean; cdecl; external gtklib;
function gdk_keyval_to_unicode(keyval: Tguint): Tguint32; cdecl; external gtklib;
function gdk_unicode_to_keyval(wc: Tguint32): Tguint; cdecl; external gtklib;

// === Konventiert am: 2-8-24 17:23:21 ===


{$ENDIF read_interface}


{$IFDEF read_implementation}



{$ENDIF read_implementation}