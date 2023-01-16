program Project1;

uses
  sdl;
// Mit der original Funktion geht es nicht.
// function SDL_CreateThread(fn: PInt; Data: Pointer): PSDL_Thread; cdecl; external SDLLibName;

  function SDL_CreateThread(fn: Pointer; Data: Pointer): PSDL_Thread; cdecl; external SDLLibName;

  function thread1(p: Pointer): integer;
  var
    rect: TSDL_Rect;
    s: PSDL_Surface;
  begin
    rect.x := 100;
    rect.y := 100;
    rect.w := 10;
    rect.h := 10;
    while True do begin
      s := PSDL_Surface(p);
      rect.x := 1 + Random(630);
      rect.y := 1 + Random(470);
      SDL_FillRect(s, @rect, SDL_MapRGB(s^.format, $FF, $00, $00));
      SDL_UpdateRect(s, rect.x, rect.y, rect.w, rect.h);
      SDL_Delay(100);
    end;
    Result := 0;
  end;

  function thread2(p: Pointer): integer;
  var
    rect: TSDL_Rect;
    s: PSDL_Surface;
  begin
    rect.x := 100;
    rect.y := 100;
    rect.w := 10;
    rect.h := 10;
    while True do begin
      s := PSDL_Surface(p);
      rect.x := 1 + Random(630);
      rect.y := 1 + Random(470);
      SDL_FillRect(s, @rect, SDL_MapRGB(s^.format, $00, $FF, $00));
//      SDL_UpdateRect(s, rect.x, rect.y, rect.w, rect.h);
      SDL_Delay(100);
    end;
    Result := 0;
  end;

var
  screen: PSDL_Surface;
  t1, t2: PSDL_Thread;
  e: TSDL_Event;
  quit: boolean = False;
begin
  if SDL_Init(SDL_INIT_VIDEO) = -1 then begin
    WriteLn('Kann SDL nicht inizialisieren:', SDL_GetError);
    Halt(1);
  end;
  screen := SDL_SetVideoMode(640, 480, 16, SDL_SWSURFACE);
  if screen = nil then begin
    WriteLn('Video Modus kann nicht eingerichtet werden: ', SDL_GetError);
    Halt(1);
  end;
  t1 := SDL_CreateThread(@thread1, screen);
 t2 := SDL_CreateThread(@thread2, screen);
  while (SDL_WaitEvent(@e) <> 0) and (not quit) do begin
    case e.type_ of
      SDL_KEYDOWN: begin
        case e.key.keysym.sym of
          SDLK_ESCAPE: begin
            SDL_KillThread(t1);
            SDL_KillThread(t2);
            quit := True;
          end;
        end;
      end;
    end;
  end;
  SDL_Quit;
end.
