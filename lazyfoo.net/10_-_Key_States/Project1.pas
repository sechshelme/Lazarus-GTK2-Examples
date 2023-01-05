program Project1;

uses
  sdl,
  sdl_ttf,
  sdl_image;

const
  Screen_Width: integer = 640;
  Screen_Heigth: integer = 480;
  Screen_BPP: integer = 32;

  textColor: TSDL_Color = (r: $00; g: $FF; b: $00; unused: $00);

var
  background, screen, LeftMsg, TopMsg, RightMsg, BottomMsg: PSDL_Surface;
  font: PTTF_Font;

  procedure Apply_Surface(x, y: integer; Source, destination: PSDL_Surface; clip: PSDL_Rect = nil);
  var
    offset: SDL_Rect;
  begin
    offset.x := x;
    offset.y := y;
    SDL_BlitSurface(Source, clip, destination, @offset);
  end;

  function Load_Image(const filename: string): PSDL_Surface;
  var
    loadedImage, optimizedImage: PSDL_Surface;
  begin
    Result := nil;
    loadedImage := IMG_Load(PChar(filename));
    if loadedImage <> nil then begin
      optimizedImage := SDL_DisplayFormat(loadedImage);
      SDL_FreeSurface(loadedImage);
    end else begin
      WriteLn('Kann Datei ' + filename + ' nicht laden');
      exit;
    end;
    if optimizedImage <> nil then begin
      SDL_SetColorKey(optimizedImage, SDL_SRCCOLORKEY, SDL_MapRGB(optimizedImage^.format, $0, $FF, $FF));
    end;
    Result := optimizedImage;
  end;

  function Load_Files: boolean;
  begin
    Result := True;

    // Load Images
    background := Load_Image('background.png');
    if background = nil then begin
      Result := False;
      Exit;
    end;

    // Lade Schrift
    font := TTF_OpenFont('font.ttf', 28);
    if font = nil then begin
      WriteLn('Kann Schrift nicht laden');
      Result := False;
      Exit;
    end;

  end;

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

    // TTF Font inizialisieren
    if TTF_Init = -1 then begin
      WriteLn('Kann Font nicht inizialisieren');
      Result := False;
      Exit;
    end;

    if not Load_Files then begin
      Result := False;
      Exit;
    end;

    // Fenster Titel
    SDL_WM_SetCaption('Tasten-Test', nil);
  end;

  function Run: boolean;
  var
    quit: boolean = False;
    event: TSDL_Event;
    keystates: PUInt8;
  begin
    Result := True;
    LeftMsg := TTF_RenderText_Solid(font, 'Pfeil Left', textColor);
    TopMsg := TTF_RenderText_Solid(font, 'Pfeil  Up', textColor);
    RightMsg := TTF_RenderText_Solid(font, 'Pfeil Right', textColor);
    BottomMsg := TTF_RenderText_Solid(font, 'Pfeil Down', textColor);

    SDL_SetColorKey(LeftMsg, SDL_SRCCOLORKEY, SDL_MapRGB(LeftMsg^.format, $00, $00, $00));
    SDL_SetColorKey(TopMsg, SDL_SRCCOLORKEY, SDL_MapRGB(TopMsg^.format, $00, $00, $00));
    SDL_SetColorKey(RightMsg, SDL_SRCCOLORKEY, SDL_MapRGB(RightMsg^.format, $00, $00, $00));
    SDL_SetColorKey(BottomMsg, SDL_SRCCOLORKEY, SDL_MapRGB(BottomMsg^.format, $00, $00, $00));

    // Copy Image auf Screen
    Apply_Surface(0, 0, background, screen);
    SDL_Flip(screen);
    keystates := SDL_GetKeyState(nil);

    repeat
      while SDL_PollEvent(@event) <> 0 do begin
        case event.type_ of
          SDL_QUITEV: begin
            quit := True;
          end;
        end;
      end;

      Apply_Surface(0, 0, background, screen);

      if keystates[SDLK_UP] <> 0 then  begin
        Apply_Surface((Screen_Width - TopMsg^.w) div 2, (Screen_Heigth div 2 - TopMsg^.h) div 2, TopMsg, screen);
      end;
      if keystates[SDLK_DOWN] <> 0 then  begin
        Apply_Surface((Screen_Width - BottomMsg^.w) div 2, (Screen_Heigth div 2 - BottomMsg^.h) div 2 + Screen_Heigth div 2, BottomMsg, screen);
      end;
      if keystates[SDLK_LEFT] <> 0 then  begin
        Apply_Surface((Screen_Width div 2 - LeftMsg^.w) div 2, (Screen_Heigth - LeftMsg^.h) div 2, LeftMsg, screen);
      end;
      if keystates[SDLK_RIGHT] <> 0 then  begin
        Apply_Surface((Screen_Width div 2 - RightMsg^.w) div 2 + (Screen_Width div 2), (Screen_Heigth - RightMsg^.h) div 2, RightMsg, screen);
      end;
      if keystates[SDLK_ESCAPE] <> 0 then  begin
        quit:=True;
      end;
      SDL_Flip(screen);
    until quit;
    Result := True;
  end;

  procedure Destroy;
  begin
    // Images freigeben
    SDL_FreeSurface(background);

    SDL_FreeSurface(LeftMsg);
    SDL_FreeSurface(TopMsg);
    SDL_FreeSurface(RightMsg);
    SDL_FreeSurface(BottomMsg);

    // SDL beenden
    TTF_CloseFont(font);
    TTF_Quit;

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
