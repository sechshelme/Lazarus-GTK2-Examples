program Project1;

uses
  sdl;

var
  scr: PSDL_Surface; // Our main screen
  Quit: boolean;
  Event: TSDL_Event;

begin
  // Initialize the video SDL subsystem
  if SDL_Init(SDL_INIT_VIDEO) < 0 then begin
    Writeln('SDL could not initialize! SDL_Error: ',SDL_GetError);
  end;
  scr := SDL_SetVideoMode(640, 480, 8, SDL_SWSURFACE);
  SDL_WM_SetCaption('SDL-Fenster', nil);

  if scr = nil then begin
    WriteLn('could not initialize sdl2: ', SDL_GetError());
  end;
  repeat
    SDL_WaitEvent(@Event);
    if Event.type_ = SDL_QUITEV then begin
      Quit := True;
    end;

  until Quit;


  SDL_Quit; // close the subsystems and SDL
end.
