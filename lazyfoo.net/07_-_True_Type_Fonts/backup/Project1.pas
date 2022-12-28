program Project1;

uses
  sdl,
  sdl_ttf,
  sdl_image;

const
  Screen_Width: integer = 640;
  Screen_Heigth: integer = 480;
  Screen_BPP: integer = 32;

  textColor: TSDL_Color = (r: $FF; g: $FF; b: $FF; unused: $00);

var
  message, background, screen: PSDL_Surface;
  font: PTTF_Font;

  procedure apply_surface(x, y: integer; Source, destination: PSDL_Surface; clip: PSDL_Rect = nil);
  var
    offset: SDL_Rect;
  begin
    offset.x := x;
    offset.y := y;
    SDL_BlitSurface(Source, clip, destination, @offset);
  end;

  function load_image(const filename: string): PSDL_Surface;
  var
    loadedImage, optimizedImage: PSDL_Surface;
    colorkey: uint32;
  begin
    Result := nil;
    loadedImage := IMG_Load(PChar(filename));
    if loadedImage <> nil then begin
      optimizedImage := SDL_DisplayFormat(loadedImage);
      SDL_FreeSurface(loadedImage);
    end else begin
      WriteLn('Kann Datei ' + filename + ' nicht laden');
    end;
    if optimizedImage <> nil then begin
      colorkey := SDL_MapRGB(optimizedImage^.format, $0, $FF, $FF);
      SDL_SetColorKey(optimizedImage, SDL_SRCCOLORKEY, colorkey);
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

    // Fenster Titel
    SDL_WM_SetCaption('TTF Test', nil);
  end;

  function Run: boolean;
  var
    quit: boolean = False;
    event: TSDL_Event;
  begin
    Result := True;
    message := TTF_RenderText_Solid(font, 'Ich bin ein sehr langer Text', textColor);

    // Copy Image auf Screen
    apply_surface(0, 0, background, screen);
    apply_surface(0, 150, message, screen);

    SDL_Flip(screen);

    repeat
      SDL_WaitEvent(@Event);
      case event.type_ of
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

    // SDL beenden
    TTF_CloseFont(font);

    SDL_Quit;
  end;

begin
  if not Create then begin
    Halt(1);
  end;
  if not Load_Files then begin
    Halt(1);
  end;
  if not Run then begin
    Halt(1);
  end;
  Destroy;
end.
