program Project1;

uses
  sdl,
  sdl_ttf,
  sdl_image,heaptrc;

const
  Screen_Width: integer = 640;
  Screen_Heigth: integer = 480;
  Screen_BPP: integer = 32;

  textColor: TSDL_Color = (r: $00; g: $FF; b: $00; unused: $00);

var
  message, background, screen, LeftMessage, TopMessage, RightMessage, BottomMessage: PSDL_Surface;
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
  begin
    Result := True;
    LeftMessage := TTF_RenderText_Solid(font, 'Pfeil Left', textColor);
    TopMessage := TTF_RenderText_Solid(font, 'Pfeil  Up', textColor);
    RightMessage := TTF_RenderText_Solid(font, 'Pfeil Right', textColor);
    BottomMessage := TTF_RenderText_Solid(font, 'Pfeil Down', textColor);

    // Copy Image auf Screen
    Apply_Surface(0, 0, background, screen);
    SDL_Flip(screen);

    repeat
      SDL_WaitEvent(@Event);
      case event.type_ of
        SDL_KEYDOWN: begin
          case event.key.keysym.sym of
            SDLK_UP: begin
              message := TopMessage;
            end;
            SDLK_DOWN: begin
              message := BottomMessage;
            end;
            SDLK_LEFT: begin
              message := LeftMessage;
            end;
            SDLK_RIGHT: begin
              message := RightMessage;
            end;
            SDLK_ESCAPE: begin
              quit := True;
            end;
          end;
          Apply_Surface(0, 0, background, screen);
          if message <> nil then begin
            SDL_SetColorKey(message, SDL_SRCCOLORKEY, SDL_MapRGB(message^.format, $00, $00, $00));
            Apply_Surface((Screen_Width - message^.w) div 2, (Screen_Heigth - message^.h) div 2, message, screen);
            message := nil;
          end;
          SDL_Flip(screen);
        end;
        SDL_QUITEV: begin
          quit := True;
        end;
      end;
    until quit;
  end;

  procedure Destroy;
  begin
    // Images freigeben
    SDL_FreeSurface(background);
    SDL_FreeSurface(message);

    SDL_FreeSurface(LeftMessage);
    SDL_FreeSurface(TopMessage);
    SDL_FreeSurface(RightMessage);
    SDL_FreeSurface(BottomMessage);

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
