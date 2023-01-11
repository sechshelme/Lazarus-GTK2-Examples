program Project1;

uses
  sdl,
  sdl_image;

const
  Screen_Width: integer = 640;
  Screen_Heigth: integer = 480;
  Screen_BPP: integer = 32;
var
  bitmapFont, screen: PSDL_Surface;
type

  { TBitmapFont }

  TBitmapFont = class(TObject)
  private
    bitmap: PSDL_Surface;
    chars: array[0..255] of TSDL_Rect;
    space, newLine: integer;
  public
    constructor Create(surface: PSDL_Surface);
    procedure show_text(Ax, Ay: integer; const s: string; surface: PSDL_Surface);
  end;

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
    bitmapFont := Load_Image('lazyfont.png');
    if bitmapFont = nil then begin
      Result := False;
      Exit;
    end;
  end;

  function get_pixel32(x, y: integer; surface: PSDL_Surface): uint32;
  var
    pixels: PUInt32;
  begin
    pixels := surface^.pixels;
    Result := pixels[y * surface^.w + x];
  end;

  { TBitmapFont }

  constructor TBitmapFont.Create(surface: PSDL_Surface);
  var
    currentChar: integer = 0;
    cellW, cellH, pCol, pRow, rows, cols, pX, pY, top, baseA, i: integer;
    bgColor: uint32;
  label
    Ende0, Ende1, Ende2, Ende3;
  begin
    if surface = nil then begin
      Exit;
    end;
    bitmap := surface;
    bgColor := SDL_MapRGB(bitmap^.format, $00, $FF, $FF);

    cellW := bitmap^.w div 16;
    cellH := bitmap^.h div 16;

    top := cellH;
    baseA := cellH;

    for rows := 0 to 15 do begin
      for cols := 0 to 15 do begin
        chars[currentChar].x := cellW * cols;
        chars[currentChar].y := cellH * rows;
        chars[currentChar].w := cellW;
        chars[currentChar].h := cellH;
        for pCol := 0 to cellW - 1 do begin
          for pRow := 0 to cellH - 1 do begin
            pX := (cellW * cols) + pCol;
            pY := (cellH * rows) + pRow;
            if get_pixel32(pX, pY, bitmap) <> bgColor then begin
              chars[currentChar].x := pX;
              goto Ende0;
            end;
          end;
        end;
        Ende0:

          for pCol := cellW - 1 downto 0 do begin
            for pRow := 0 to cellH - 1 do begin
              pX := (cellW * cols) + pCol;
              pY := (cellH * rows) + pRow;
              if get_pixel32(pX, pY, bitmap) <> bgColor then begin
                chars[currentChar].w := (pX - chars[currentChar].x) + 1;
                goto Ende1;
              end;
            end;
          end;
        Ende1:

          for pRow := 0 to cellH - 1 do begin
            for pCol := 0 to cellW - 1 do begin
              pX := (cellW * cols) + pCol;
              pY := (cellH * rows) + pRow;
              if get_pixel32(pX, pY, bitmap) <> bgColor then begin
                if pRow < top then begin
                  top := pRow;
                end;
                goto Ende2;
              end;
            end;
          end;
        Ende2:

          for pRow := cellH - 1 downto 0 do begin
            for pCol := 0 to cellW - 1 do begin
              pX := (cellW * cols) + pCol;
              pY := (cellH * rows) + pRow;
              if get_pixel32(pX, pY, bitmap) <> bgColor then begin
                baseA := pRow;
                goto Ende3;
              end;
            end;
          end;
        Ende3:
          Inc(currentChar);
      end;
    end;

    space := cellW div 2;
    newLine := baseA - top;
    for i := 0 to 255 do begin
      Inc(chars[i].y, top);
      Dec(chars[i].h, top);
    end;
  end;

  procedure TBitmapFont.show_text(Ax, Ay: integer; const s: string; surface: PSDL_Surface);
  var
    Show: integer;
    X, Y: integer;
    ascii: byte;
  begin
    X := aX;
    Y := aY;
    if bitmap <> nil then begin
      for Show := 1 to Length(s) do begin
        if s[Show] = ' ' then begin
          Inc(X, space);
        end else if s[Show] = LineEnding then begin
          Inc(Y, newLine);
          X := Ax;
        end else begin
          ascii := byte(s[Show]);
          Apply_Surface(X, Y, bitmap, surface, @chars[ascii]);
          Inc(X, chars[ascii].w + 1);
        end;
      end;
    end;
  end;

  { Ende TBitmapFont }

var
  font: TBitmapFont;

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

    font.show_text(100, 100, 'Hello World !' + LineEnding + 'Hallo Welt !' + LineEnding + '1234567890'
    +LineEnding+'öäü ÜÄÏŸ iiii', screen);
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
