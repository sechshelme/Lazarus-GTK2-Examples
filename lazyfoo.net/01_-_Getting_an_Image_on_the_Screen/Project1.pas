program Project1;

uses
  sdl;

var
  hello, screen: PSDL_Surface;

begin
  // Start SDL
  SDL_Init(SDL_INIT_EVERYTHING);

  // Screen Setup
  screen := SDL_SetVideoMode(640, 480, 32, SDL_SWSURFACE);

  // Load Images
  hello := SDL_LoadBMP('hello.bmp');

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
