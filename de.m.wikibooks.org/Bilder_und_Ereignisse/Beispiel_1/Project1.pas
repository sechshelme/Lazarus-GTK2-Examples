program Project1;

uses
  sdl;

var
  screen, image: PSDL_Surface;
  t1, t2: PSDL_Thread;
  e: TSDL_Event;
  quit: boolean = False;
begin
  if SDL_Init(SDL_INIT_VIDEO) = -1 then begin
    WriteLn('Kann SDL nicht inizialisieren:', SDL_GetError);
    Halt(1);
  end;
  screen := SDL_SetVideoMode(640, 480, 16, SDL_SWSURFACE or SDL_DOUBLEBUF);
  if screen = nil then begin
    WriteLn('Video Modus kann nicht eingerichtet werden: ', SDL_GetError);
    Halt(1);
  end;
  image := SDL_LoadBMP('tux.bmp');
  if image = nil then begin
    WriteLn('Kann Images nicht laden: ', SDL_GetError);
    Halt(1);
  end;
  SDL_BlitSurface(image, nil, screen, nil);
  SDL_FreeSurface(image);
  SDL_UpdateRect(screen, 50, 50, 100, 100);
  SDL_UpdateRect(screen, 75, 75, 125, 125);
  while not quit do begin
    while SDL_PollEvent(@e) <> 0 do begin
      case e.type_ of
        SDL_QUITEV: begin
          quit := True;
        end;
        SDL_KEYDOWN: begin
          case e.key.keysym.sym of
            SDLK_ESCAPE: begin
              quit := True;
            end;
          end;
        end;
      end;
    end;
  end;
  SDL_Quit;
end.
