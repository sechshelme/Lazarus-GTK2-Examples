program Project1;

uses
//  heaptrc,
  sdl;

var
  scr, img: PSDL_Surface; // Our main screen
  Quit: boolean;
  Event: TSDL_Event;
  rect: TSDL_Rect;

  // https://www.libsdl.org/release/SDL-1.2.15/docs/html/sdllistmodes.html

type
  // Useful for determining the video hardware capabilities
  PSDL_VideoInfo2 = ^TSDL_VideoInfo2;

  TSDL_VideoInfo2 = bitpacked record
    //    hw_available: UInt8; // Hardware and WindowManager flags in first 2 bits ( see below )
    hw_available: 0..1; // Can you create hardware surfaces
    wm_available: 0..1; // Can you talk to a window manager?
    UnusedBits1: 0..63;
    //    blit_hw: UInt8; // Blit Hardware flags. See below for which bits do what
    UnusedBits2: 0..1;
    blit_hw: 0..1; // Flag:UInt32  Accelerated blits HW --> HW
    blit_hw_CC: 0..1; // Flag:UInt32  Accelerated blits with Colorkey
    blit_hw_A: 0..1; // Flag:UInt32  Accelerated blits with Alpha
    blit_sw: 0..1; // Flag:UInt32  Accelerated blits SW --> HW
    blit_sw_CC: 0..1; // Flag:UInt32  Accelerated blits with Colorkey
    blit_sw_A: 0..1; // Flag:UInt32  Accelerated blits with Alpha
    blit_fill: 0..1; // Flag:UInt32  Accelerated color fill}
    UnusedBits3: uint16; // Unused at this point
    video_mem: uint32; // The total amount of video memory (in K)
    vfmt: PSDL_PixelFormat; // Value: The format of the video surface
    current_w: SInt32;  // Value: The current video mode width
    current_h: SInt32;  // Value: The current video mode height
  end;

  const   SDLLibName = 'SDL';

  function SDL_GetVideoInfo: PSDL_VideoInfo2; cdecl; external SDLLibName;
  //  {$EXTERNALSYM SDL_GetVideoInfo}



  procedure WriteVideoModus;
  var
    modus, p: PPSDL_Rect;
    i: integer;
    VideoInfo: PSDL_VideoInfo2;
    pc1, pc2: array[0..255] of Char;
  begin
    modus := SDL_ListModes(nil, SDL_FULLSCREEN or SDL_HWSURFACE or SDL_OPENGL);
    //  if modus=TSDL_Rect^^( 0) then WriteLn('NULL');
    if modus = PPSDL_Rect(0) then begin
      WriteLn('Kein Modus vorhanden');
    end else if modus = PPSDL_Rect(-1) then begin
      WriteLn('Alle Moden vorhanden');
    end else begin
      p := modus;
      while p^ <> nil do begin
        WriteLn('Widht:', p^^.w: 5, ' Height:', p^^.h: 5);
        Inc(p);
      end;
    end;

    VideoInfo := SDL_GetVideoInfo;
    WriteLn('hw_available: ', VideoInfo^.hw_available: 5);
    WriteLn('wm_available: ', VideoInfo^.wm_available: 5);
    WriteLn('blit_hw:      ', VideoInfo^.blit_hw: 5);
    WriteLn('blit_hw_CC:   ', VideoInfo^.blit_hw_CC: 5);
    WriteLn('blit_hw_A:    ', VideoInfo^.blit_hw_A: 5);
    WriteLn('blit_sw:      ', VideoInfo^.blit_sw: 5);
    WriteLn('blit_sw_CC:   ', VideoInfo^.blit_sw_CC: 5);
    WriteLn('blit_sw_A:    ', VideoInfo^.blit_sw_A: 5);
    WriteLn('blit_fill:    ', VideoInfo^.blit_fill: 5);


    WriteLn('video_mem:    ', VideoInfo^.video_mem: 5);
    WriteLn('PSDL_PixelFormat^.BitsPerPixel: ', VideoInfo^.vfmt^.BitsPerPixel: 5);
    WriteLn('PSDL_PixelFormat^.BytesPerPixel: ', VideoInfo^.vfmt^.BytesPerPixel: 5);
    WriteLn('PSDL_PixelFormat^.Rloss: ', VideoInfo^.vfmt^.Rloss: 5);
    WriteLn('PSDL_PixelFormat^.Gloss: ', VideoInfo^.vfmt^.Rloss: 5);
    WriteLn('PSDL_PixelFormat^.Bloss: ', VideoInfo^.vfmt^.Gloss: 5);
    WriteLn('PSDL_PixelFormat^.Aloss: ', VideoInfo^.vfmt^.Aloss: 5);
    WriteLn('current_w: ', VideoInfo^.current_w: 5);
    WriteLn('current_h: ', VideoInfo^.current_h: 5);

    SDL_VideoDriverName(@pc1, 512);
    WriteLn(pc1);
    SDL_VideoDriverName(pc2, 512);
    WriteLn(pc2);

  end;

  procedure WriteVideoModus2;
  begin
  end;

begin
  // Initialize the video SDL subsystem
  if SDL_Init(SDL_INIT_VIDEO) < 0 then begin
    Writeln('SDL could not initialize! SDL_Error: ', SDL_GetError);
  end;

  scr := SDL_SetVideoMode(640, 480, 32, SDL_SWSURFACE);
  if scr = nil then  begin
    WriteLn('error');
  end;
  WriteVideoModus;

  rect.h := 100;
  rect.w := 100;
  SDL_FillRect(scr, @rect, $FFBBBB);

  rect.x := 150;
  rect.y := 150;
  SDL_FillRect(scr, @rect, $BBBBFF);

  SDL_Flip(scr);
  SDL_WM_SetCaption('SDL-Fenster', nil);

  repeat
    SDL_WaitEvent(@Event);
    case Event.type_ of
      SDL_QUITEV: begin
        Quit := True;
      end;
      SDL_KEYDOWN: begin
        Quit := True;
      end;
    end;

  until Quit;

  SDL_Quit; // close the subsystems and SDL
end.
