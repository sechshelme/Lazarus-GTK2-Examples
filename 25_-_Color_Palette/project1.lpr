program project1;

uses
  SDL;

var
  screen: PSDL_Surface;
  e: TSDL_Event;
  colors: array[0..$FF] of TSDL_Color;
  i: integer;
  quit: boolean = False;
  rect: TSDL_Rect;

begin
  if SDL_Init(SDL_INIT_VIDEO) < 0 then begin
    Writeln('SDL could not initialize! SDL_Error: ', SDL_GetError);
    Halt;
  end;

  screen := SDL_SetVideoMode(640, 480, 8, SDL_SWSURFACE);
  if screen = nil then begin
    WriteLn('could not initialize sdl2: ', SDL_GetError());
    Halt;
  end;

  for i := 0 to Length(colors) - 1 do begin
    colors[i].r := i;
    colors[i].g := i;
    colors[i].b := i;
  end;

  while not quit do begin
    while SDL_PollEvent(@e) <> 0 do begin
      case e.type_ of
        SDL_KEYDOWN: begin
          case e.key.keysym.sym of
            SDLK_ESCAPE: begin
              quit := True;
            end;
            SDLK_SPACE: begin
              SDL_SetPalette(screen, SDL_LOGPAL or SDL_PHYSPAL, colors, 0, 256);
            end;
          end;
        end;
        SDL_QUITEV: begin
          quit := True;
        end;
      end;
    end;
    rect.h := 100;
    rect.w := 10;
    for i := 0 to $FF do begin
      SDL_FillRect(screen, @rect, i);

      rect.x := i;
      rect.y := 150;
    end;

    SDL_Flip(screen);
  end;

  SDL_Quit;
end.
