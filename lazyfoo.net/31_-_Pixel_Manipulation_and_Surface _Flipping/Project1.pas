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
    pixels[(y * surface^.w) + x] := pixel;
  end;

  function flip_surface(surface: PSDL_Surface; flag: integer): PSDL_Surface;
  var
    flipped: PSDL_Surface;
  begin
    if (surface^.flags and SDL_SRCCOLORKEY) <> 0 then begin
      flipped := SDL_CreateRGBSurface(SDL_SWSURFACE, surface^.w, surface^.h, surface^.format^.BitsPerPixel, surface^.format^.RMask, surface^.format^.GMask, surface^.format^.BMask, 0);
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
    SDL_WM_SetCaption('Bitmap font Test', nil);

    font := TBitmapFont.Create(bitmapFont);
  end;

  function Run: boolean;
  var
    quit: boolean = False;
    event: TSDL_Event;
    colorkey: uint32;
  begin
    Result := True;

    SDL_FillRect(screen, @screen^.clip_rect, SDL_MapRGB(screen^.format, $88, $FF, $88));

    font.show_text(100, 100, 'Hello World !' + LineEnding + 'Hallo Welt !' + LineEnding + '1234567890', screen);
    // Copy Image auf Screen
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
    SDL_FreeSurface(bitmapFont);

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
