program Project1;

uses
  sdl,
  sdl_image;

const
  Screen_Width: integer = 320;
  Screen_Heigth: integer = 240;
  Screen_BPP: integer = 32;

  clip: array[0..3] of SDL_Rect = (
    (x: 0; y: 0; w: 100; h: 100),
    (x: 100; y: 0; w: 100; h: 100),
    (x: 0; y: 100; w: 100; h: 100),
    (x: 100; y: 100; w: 100; h: 100));

var
  dots, screen: PSDL_Surface;

  procedure Apply_Surface(x, y: integer; Source, destination: PSDL_Surface; clip: PSDL_Rect = nil);
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
      Exit;
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
    dots := Load_Image('dots.png');
    if dots = nil then begin
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

    if not Load_Files then begin
      Result := False;
      Exit;
    end;

    // Fenster Titel
    SDL_WM_SetCaption('Event Test', nil);
  end;

  function Run: boolean;
  var
    quit: boolean = False;
    event: TSDL_Event;
  begin
    Result := True;

    SDL_FillRect(screen, @screen^.clip_rect, SDL_MapRGB(screen^.format, $FF, $FF, $FF));

    // Copy Image auf Screen
    Apply_Surface(0, 0, dots, screen, @clip[0]);
    Apply_Surface(Screen_Width - 100, 0, dots, screen, @clip[1]);
    Apply_Surface(0, Screen_Heigth - 100, dots, screen, @clip[2]);
    Apply_Surface(Screen_Width - 100, Screen_Heigth - 100, dots, screen, @clip[3]);

    // Update Screen
    if SDL_Flip(screen) = -1 then begin
      WriteLn('Fehler beim Flip !');
      Result := False;
      Exit;
    end;

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
    SDL_FreeSurface(dots);

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
