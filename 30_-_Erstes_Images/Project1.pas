program Project1;

uses
  heaptrc,
  sdl;

var
  scr, img: PSDL_Surface; // Our main screen
  Quit: boolean;
  Event: TSDL_Event;
  dstrect: TSDL_Rect;
  ofs: TSDL_Rect;

begin
  // Initialize the video SDL subsystem
  if SDL_Init(SDL_INIT_VIDEO) < 0 then begin
    Writeln('SDL could not initialize! SDL_Error: ', SDL_GetError);
  end;
  scr := SDL_SetVideoMode(640, 480, 32, SDL_SWSURFACE);
  if scr = nil then  begin
    WriteLn('error');
  end;
  SDL_WM_SetCaption('SDL-Fenster', nil);
  img := SDL_LoadBMP('icon.bmp');
  if img = nil then begin
    WriteLn('error');
  end;

  if scr = nil then begin
    WriteLn('could not initialize sdl2: ', SDL_GetError());
  end;

  ofs.x := 100;
  ofs.y := 100;
//  SDL_Flip(img);
  SDL_BlitSurface(img, nil, scr, @ofs);
  ofs.x := 200;
  ofs.y := 200;
//  SDL_Flip(img);
  SDL_BlitSurface(img, nil, scr, @ofs);

  SDL_Flip(scr);


  dstrect.h := 100;
  dstrect.w := 100;
  SDL_FillRect(scr, @dstrect, $BBBBBB);
  SDL_Flip(scr);

  repeat
    SDL_WaitEvent(@Event);
    case Event.type_ of
      SDL_QUITEV: begin
        Quit := True;
      end;
      SDL_KEYDOWN: begin
      end;
    end;

  until Quit;

  SDL_FreeSurface(img);
  SDL_FreeSurface(scr);


  SDL_Quit; // close the subsystems and SDL
end.
