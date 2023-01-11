program Project1;

uses
  sdl,
  sdl_image;

const
  Screen_Width: integer = 640;
  Screen_Heigth: integer = 480;
  Screen_BPP: integer = 32;

  Flip_Vertical = 1;
  Flip_Horizontal = 2;
var
  topLeft, topRight, bottomLeft, bottomRight, screen: PSDL_Surface;

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
    colorkey: uint32;
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
      colorkey := SDL_MapRGB(optimizedImage^.format, $0, $FF, $FF);
      SDL_SetColorKey(optimizedImage, SDL_SRCCOLORKEY, colorkey);
    end;
    Result := optimizedImage;
  end;

  function Load_Files: boolean;
  begin
    Result := True;

    // Load Images
    topLeft := Load_Image('corner.png');
    if topLeft = nil then begin
      Result := False;
      Exit;
    end;
  end;

  function get_pixel32(surface: PSDL_Surface; x, y: integer): uint32;
  var
    pixels: PUInt32;
  begin
    pixels := surface^.pixels;
    Result := pixels[y * surface^.w + x];
  end;

  procedure put_pixel32(surface: PSDL_Surface; x, y: integer; pixel: uint32);
  var
    pixels: PUInt32;
  begin
    pixels := surface^.pixels;
    pixels[y * surface^.w + x] := pixel;
  end;

  function flip_surface(surface: PSDL_Surface; flags: integer): PSDL_Surface;
  var
    flipped: PSDL_Surface;
    x, rx, y, ry: integer;
    pixel: uint32;
  begin
    with surface^ do begin
      if (flags and SDL_SRCCOLORKEY) <> 0 then begin
        flipped := SDL_CreateRGBSurface(SDL_SWSURFACE, w, h, format^.BitsPerPixel, format^.RMask, format^.GMask, format^.BMask, 0);
      end else begin
        flipped := SDL_CreateRGBSurface(SDL_SWSURFACE, w, h, format^.BitsPerPixel, format^.RMask, format^.GMask, format^.BMask, format^.AMask);
      end;
    end;
    if SDL_MustLock(surface) then begin
      SDL_LockSurface(surface);
    end;
    rx := flipped^.w - 1;
    for  x := 0 to flipped^.w - 1 do begin
      ry := flipped^.h - 1;
      for  y := 0 to flipped^.h - 1 do begin

        pixel := get_pixel32(surface, x, y);
        if (flags and Flip_Vertical <> 0) and (flags and Flip_Horizontal <> 0) then begin
          put_pixel32(flipped, rx, ry, pixel);
        end else if flags and Flip_Horizontal <> 0 then begin
          put_pixel32(flipped, rx, y, pixel);
        end else if flags and Flip_Vertical <> 0 then begin
          put_pixel32(flipped, x, ry, pixel);
        end;

        Dec(ry);
      end;
      Dec(rx);
    end;

    if SDL_MustLock(surface) then begin
      SDL_UnlockSurface(surface);
    end;

    if surface^.flags and SDL_SRCCOLORKEY <> 0 then begin
      SDL_SetColorKey(flipped, SDL_RLEACCEL or SDL_SRCCOLORKEY, surface^.format^.colorkey);
    end;

    Result := flipped;
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
    SDL_WM_SetCaption('Flip Test', nil);
  end;

  function Run: boolean;
  var
    quit: boolean = False;
    event: TSDL_Event;
  begin
    Result := True;

    topRight := flip_surface(topLeft, Flip_Horizontal);
    bottomLeft := flip_surface(topLeft, Flip_Vertical);
    bottomRight := flip_surface(topLeft, Flip_Horizontal or Flip_Vertical);

    Apply_Surface(0, 0, topLeft, screen);
    Apply_Surface(320, 0, topRight, screen);
    Apply_Surface(0, 240, bottomLeft, screen);
    Apply_Surface(320, 240, bottomRight, screen);

    SDL_Flip(screen);

    repeat
      SDL_WaitEvent(@Event);
      case event.type_ of
        SDL_KEYDOWN: begin
          case event.key.keysym.sym of
            SDLK_ESCAPE: begin
              quit := True;
            end;
          end;
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
    SDL_FreeSurface(topLeft);
    SDL_FreeSurface(topRight);
    SDL_FreeSurface(bottomLeft);
    SDL_FreeSurface(bottomRight);

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
