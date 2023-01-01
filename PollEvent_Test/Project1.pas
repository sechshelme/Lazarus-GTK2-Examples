program Project1;

uses
  sdl,
  sdl_image;

const
  Screen_Width: integer = 640;
  Screen_Heigth: integer = 480;
  Screen_BPP: integer = 32;
var
  image, screen: PSDL_Surface;

  function Create: boolean;
  begin
    Result := True;

    // Start SDL
    if SDL_Init(SDL_INIT_EVERYTHING) < 0 then begin
      Writeln('Kann SDL nicht öffnen: ', SDL_GetError);
      Result := False;
      Exit;
    end;

    // Screen Setup
    screen := SDL_SetVideoMode(Screen_Width, Screen_Heigth, Screen_BPP, SDL_SWSURFACE);
    if screen = nil then begin
      Writeln('Kann kein Fenster öffnen: ', SDL_GetError);
      Result := False;
      Exit;
    end;

  end;

  function Run: boolean;
  var
    quit: boolean = False;
    event: TSDL_Event;
    i: integer;
  begin
    Result := True;

    // Update Screen
    if SDL_Flip(screen) = -1 then begin
      WriteLn('Fehler beim Flip !');
      Result := False;
      Exit;
    end;

    //repeat
    //  i:=SDL_PollEvent(@event);
    //  if i <> 0 then WriteLn(i) ;
    //until quit;

    repeat
      while SDL_PollEvent(@event) = 0 do begin
        case event.type_ of
          SDL_MOUSEBUTTONDOWN: begin
            WriteLn('down');
          end;
          SDL_QUITEV: begin
            quit := True;
          end;
        end;
//        event.type_ := 0;
      end;
    until quit;
  end;

  procedure Destroy;
  begin
    // SDL beenden
    SDL_Quit;
  end;

begin
  if not Create then begin
    Halt(1);
  end;
  if not Run then begin
    Halt(1);
  end;
  Destroy;
end.
