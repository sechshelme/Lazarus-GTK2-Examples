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

  function Load_Image(const filename: string): PSDL_Surface;
  var
    loadedImage: PSDL_Surface;
  begin
    Result := nil;
    loadedImage := IMG_Load(PChar(filename));
    if loadedImage <> nil then begin
      Result := SDL_DisplayFormat(loadedImage);
      SDL_FreeSurface(loadedImage);
    end else begin
      WriteLn('Kann Datei ' + filename + ' nicht laden');
    end;
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
    image := Load_Image('logo.png');
    if image = nil then begin
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

    if not Load_Files then begin
      WriteLn('Fehler beim Dateien laden !');
      Result := False;
      Exit;
    end;
  end;

  function Run: boolean;
  var
    quit: boolean = False;
    event: TSDL_Event;
  begin
    Result := True;

    // Copy Image auf Screen
    Apply_Surface(0, 0, image, screen);

    // Update Screen
    if SDL_Flip(screen) = -1 then begin
      WriteLn('Fehler beim Flip !');
      Result := False;
      Exit;
    end;

    repeat
      while SDL_PollEvent(@event) = 0 do begin
        case event.type_ of
          SDL_QUITEV: begin
            quit := True;
          end;
        end;
      end;
    until quit;
  end;

  procedure Destroy;
  begin
    // Images freigeben
    SDL_FreeSurface(image);

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
