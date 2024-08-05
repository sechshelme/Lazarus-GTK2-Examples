/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}

type
  PGtkDebugFlags = ^TGtkDebugFlags;
  TGtkDebugFlags =  Longint;
  Const
    GTK_DEBUG_TEXT = 1 shl 0;
    GTK_DEBUG_TREE = 1 shl 1;
    GTK_DEBUG_KEYBINDINGS = 1 shl 2;
    GTK_DEBUG_MODULES = 1 shl 3;
    GTK_DEBUG_GEOMETRY = 1 shl 4;
    GTK_DEBUG_ICONTHEME = 1 shl 5;
    GTK_DEBUG_PRINTING = 1 shl 6;
    GTK_DEBUG_BUILDER = 1 shl 7;
    GTK_DEBUG_SIZE_REQUEST = 1 shl 8;
    GTK_DEBUG_NO_CSS_CACHE = 1 shl 9;
    GTK_DEBUG_INTERACTIVE = 1 shl 10;
    GTK_DEBUG_ACTIONS = 1 shl 12;
    GTK_DEBUG_LAYOUT = 1 shl 13;
    GTK_DEBUG_SNAPSHOT = 1 shl 14;
    GTK_DEBUG_CONSTRAINTS = 1 shl 15;
    GTK_DEBUG_BUILDER_OBJECTS = 1 shl 16;
    GTK_DEBUG_A11Y = 1 shl 17;
    GTK_DEBUG_ICONFALLBACK = 1 shl 18;
    GTK_DEBUG_INVERT_TEXT_DIR = 1 shl 19;

{ #define GTK_DEBUG_CHECK(type) G_UNLIKELY (gtk_get_debug_flags () & GTK_DEBUG_##type) }

function gtk_get_debug_flags:TGtkDebugFlags;cdecl;external gtklib;
procedure gtk_set_debug_flags(flags:TGtkDebugFlags);cdecl;external gtklib;

{$ENDIF read_interface}


{$IFDEF read_implementation}


{$ENDIF read_implementation}
