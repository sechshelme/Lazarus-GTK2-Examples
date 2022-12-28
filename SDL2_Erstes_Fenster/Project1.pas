program Project1;

// https://github.com/PascalGameDevelopment/SDL2-for-Pascal

uses SDL2;

var
  sdlWindow1: PSDL_Window;
  sdlRenderer: PSDL_Renderer;

begin

  //initilization of video subsystem
  if SDL_Init(SDL_INIT_VIDEO) < 0 then Halt;

  // full set up
  sdlWindow1 := SDL_CreateWindow('Window1', 50, 50, 500, 500, SDL_WINDOW_SHOWN);
  if sdlWindow1 = nil then Halt;

  sdlRenderer := SDL_CreateRenderer(sdlWindow1, -1, 0);
  if sdlRenderer = nil then Halt;

  // quick set up
  {
  if SDL_CreateWindowAndRenderer(500, 500, SDL_WINDOW_SHOWN, @sdlWindow1, @sdlRenderer) <> 0
    then Halt;
  }

  // render to window for 2 seconds
  SDL_RenderPresent(sdlRenderer);
  SDL_Delay(2000);

  // clear memory
  SDL_DestroyRenderer(sdlRenderer);
  SDL_DestroyWindow (sdlWindow1);

  //closing SDL2
  SDL_Quit;

end.
