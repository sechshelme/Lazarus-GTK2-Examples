/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}

{
#define GSK_ROUNDED_RECT_INIT(_x,_y,_w,_h)       (GskRoundedRect)  .bounds = GRAPHENE_RECT_INIT(_x,_y,_w,_h), \
                                                                    .corner =  \
                                                                       GRAPHENE_SIZE_INIT(0, 0),\
                                                                       GRAPHENE_SIZE_INIT(0, 0),\
                                                                       GRAPHENE_SIZE_INIT(0, 0),\
                                                                       GRAPHENE_SIZE_INIT(0, 0),\
 }
type
  TGskRoundedRect = record
    bounds: Tgraphene_rect_t;
    corner: array[0..3] of Tgraphene_size_t;
  end;
  PGskRoundedRect = ^TGskRoundedRect;

  //function GSK_ROUNDED_RECT_INIT(x,y,w,h:Integer):TGskRoundedRect;

function gsk_rounded_rect_init(self: PGskRoundedRect; bounds: Pgraphene_rect_t; top_left: Pgraphene_size_t; top_right: Pgraphene_size_t; bottom_right: Pgraphene_size_t;
  bottom_left: Pgraphene_size_t): PGskRoundedRect; cdecl; external gtklib;
function gsk_rounded_rect_init_copy(self: PGskRoundedRect; src: PGskRoundedRect): PGskRoundedRect; cdecl; external gtklib;
function gsk_rounded_rect_init_from_rect(self: PGskRoundedRect; bounds: Pgraphene_rect_t; radius: single): PGskRoundedRect; cdecl; external gtklib;
function gsk_rounded_rect_normalize(self: PGskRoundedRect): PGskRoundedRect; cdecl; external gtklib;
function gsk_rounded_rect_offset(self: PGskRoundedRect; dx: single; dy: single): PGskRoundedRect; cdecl; external gtklib;
function gsk_rounded_rect_shrink(self: PGskRoundedRect; top: single; right: single; bottom: single; left: single): PGskRoundedRect; cdecl; external gtklib;
function gsk_rounded_rect_is_rectilinear(self: PGskRoundedRect): Tgboolean; cdecl; external gtklib;
function gsk_rounded_rect_contains_point(self: PGskRoundedRect; point: Pgraphene_point_t): Tgboolean; cdecl; external gtklib;
function gsk_rounded_rect_contains_rect(self: PGskRoundedRect; rect: Pgraphene_rect_t): Tgboolean; cdecl; external gtklib;
function gsk_rounded_rect_intersects_rect(self: PGskRoundedRect; rect: Pgraphene_rect_t): Tgboolean; cdecl; external gtklib;

// === Konventiert am: 3-8-24 15:58:50 ===


{$ENDIF read_interface}


{$IFDEF read_implementation}

//function GSK_ROUNDED_RECT_INIT(x, y, w, h: Integer): TGskRoundedRect;
//begin
//
//end;



{$ENDIF read_implementation}
