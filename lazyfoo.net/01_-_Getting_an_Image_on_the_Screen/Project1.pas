program Project1;

uses
  sdl;

var
  hello, screen: PSDL_Surface; // Our main screen

begin
  // Start SDL
  if SDL_Init(SDL_INIT_EVERYTHING) < 0 then begin
    Writeln('SDL could not initialize! SDL_Error: ', SDL_GetError);
  end;

  // Screen Setup
  screen := SDL_SetVideoMode(640, 480, 8, SDL_SWSURFACE);

  // Load Images
  hello := SDL_LoadBMP('SDL_logo.bmp');

  // Copy Image auf Screen
  SDL_BlitSurface(hello, nil, screen, nil);

  // Update Screen
  SDL_Flip(screen);

  // Pause 5sek
  SDL_Delay(5000);

  // Images freigeben
  SDL_FreeSurface(hello);

  // SDL beenden
  SDL_Quit;
end.
