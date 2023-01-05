program Project1;

uses
  heaptrc,
  sdl;

var
  scr, img: PSDL_Surface; // Our main screen
  Quit: boolean;
  Event: TSDL_Event;
  dstrect: TSDL_Rect;

  // https://www.libsdl.org/release/SDL-1.2.15/docs/html/sdllistmodes.html

  procedure WriteVideoModus;
  var
    modus, p: PPSDL_Rect;
//    pm: PSDL_Rect;
//    m: TSDL_Rect;
    i: integer;
  begin
    modus := SDL_ListModes(nil, SDL_FULLSCREEN or SDL_HWSURFACE);
    //  if modus=TSDL_Rect^^( 0) then WriteLn('NULL');
    if modus = Pointer(0) then begin
      WriteLn('Kein Modus vorhanden');
    end;

    if modus = Pointer(-1) then begin
      WriteLn('Alle Moden vorhanden');
    end;

    p := modus;
    i := 0;
    while p[i] <> nil do begin
      WriteLn('Widht:', p[i]^.w: 5, ' Height:', p[i]^.h: 5);
      Inc(i);
    end;

    //while p <> nil do begin
    //  pm := p^;
    //  m := pm^;
    //  WriteLn('Widht:',m.w:5,' Height:',m.h:5);
    //  Inc(p);
    //  if PtrInt(p)=-1 then halt;;
    //end;

    WriteLn();
    WriteLn();

    //pm:=p^;
    //while pm <> nil do begin
    //  WriteLn('Widht:', p[i]^.w: 5, ' Height:', p[i]^.h: 5);
    //  Inc(pm);
    //end;
    //
  end;

begin
  // Initialize the video SDL subsystem
  if SDL_Init(SDL_INIT_VIDEO) < 0 then begin
    Writeln('SDL could not initialize! SDL_Error: ', SDL_GetError);
  end;

  WriteVideoModus;


  scr := SDL_SetVideoMode(640, 480, 32, SDL_SWSURFACE);
  if scr = nil then  begin
    WriteLn('error');
  end;
  if scr = nil then begin
    WriteLn('could not initialize sdl2: ', SDL_GetError());
  end;

  dstrect.h := 100;
  dstrect.w := 100;
  SDL_FillRect(scr, @dstrect, $FFBBBB);

  dstrect.x := 150;
  dstrect.y := 150;
  SDL_FillRect(scr, @dstrect, $BBBBFF);

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
