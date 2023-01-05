program Project1;

uses
  sdl,
  sdl_image,
  sdl_ttf;

const
  Screen_Width: integer = 640;
  Screen_Heigth: integer = 480;
  Screen_BPP: integer = 32;

  textColor: TSDL_Color = (r: $00; g: $FF; b: $00; unused: $00);
var
  background, startStop, secouds, screen: PSDL_Surface;
  font: PTTF_Font;

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

  procedure Apply_Surface(x, y: integer; Source, destination: PSDL_Surface);
  var
    offset: SDL_Rect;
  begin
    offset.x := x;
    offset.y := y;
    SDL_BlitSurface(Source, nil, destination, @offset);
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
    Result := False;

    // Start SDL
    if SDL_Init(SDL_INIT_EVERYTHING) < 0 then begin
      Writeln('Kann SDL nicht öffnen: ', SDL_GetError);
      Exit;
    end;

    // Screen Setup
    screen := SDL_SetVideoMode(Screen_Width, Screen_Heigth, Screen_BPP, SDL_SWSURFACE);
    if screen = nil then begin
      Writeln('Kann kein Fenster öffnen: ', SDL_GetError);
      Exit;
    end;

    // TTF Font inizialisieren
    if TTF_Init = -1 then begin
      WriteLn('Kann Font nicht inizialisieren');
      Exit;
    end;

    // Fenster Titel
    SDL_WM_SetCaption('Timer Test', nil);

    if not Load_Files then begin
      WriteLn('Fehler beim Dateien laden !');
      Result := False;
      Exit;
    end;

    Result := True;
  end;

  function Run: boolean;
  var
    quit: boolean = False;
    event: TSDL_Event;
    start: uint32;
    running: boolean = True;
    s: string;
  begin
    Result := True;

    // Copy Image auf Screen
    startStop := TTF_RenderText_Solid(font, 'Press S to start or stop the timer', textColor);
    start := SDL_GetTicks;

    repeat
      while SDL_PollEvent(@event) <> 0 do begin
        case event.type_ of
          SDL_KEYDOWN: begin
            case event.key.keysym.sym of
              SDLK_s: begin
                if running then begin
                  running := False;
                  start := 0;
                end else begin
                  running := True;
                  start := SDL_GetTicks;
                end;
              end;
              SDLK_ESCAPE: begin
                quit := True;
              end;
            end;
          end;
          SDL_QUITEV: begin
            quit := True;
          end;
        end;
      end;

        Apply_Surface(0, 0, background, screen);
        Apply_Surface((Screen_Width - startStop^.w) div 2, 200, startStop, screen);

        if running then begin
          Str(SDL_GetTicks - start, s);

          secouds := TTF_RenderText_Solid(font, PChar('Timer: ' + s), textColor);
          Apply_Surface((Screen_Width - secouds^.w) div 2, 50, secouds, screen);

          SDL_FreeSurface(secouds);
        end;

        // Update Screen
        if SDL_Flip(screen) = -1 then begin
          WriteLn('Fehler beim Flip !');
          Result := False;
          Exit;
        end;

    until quit;
    Result := True;
  end;

  procedure Destroy;
  begin
    // Images freigeben
    SDL_FreeSurface(background);

    TTF_CloseFont(font);
    TTF_Quit;

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
