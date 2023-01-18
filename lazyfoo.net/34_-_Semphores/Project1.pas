program Project1;

uses
  sdl,
  sdl_ttf,
  sdl_image;

const
  Screen_Width: integer = 640;
  Screen_Heigth: integer = 480;
  Screen_BPP: integer = 32;

var
  background, screen: PSDL_Surface;
  Text: array[0..4] of PSDL_Surface;
  font: PTTF_Font;
  quit: boolean = False;

  threadA, threadB: PSDL_Thread;
  videoLock: PSDL_Sem;

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

  procedure Show_Surface(x, y: integer; Source: PSDL_Surface);
  var
    offset: SDL_Rect;
  begin
    SDL_SemWait(videoLock);
    offset.x := x;
    offset.y := y;
    SDL_BlitSurface(Source, nil, screen, @offset);
    SDL_Flip(screen);
    SDL_SemPost(videoLock);
  end;

  function blitter_a(Data: Pointer): integer;
  var
    y: integer = 10;
    b: integer;
  begin
    for b := 0 to 4 do begin
      SDL_Delay(200);
      Show_Surface((Screen_Width div 2 - Text[b]^.w) div 2, y, Text[b]);
      Inc(y, 100);
    end;
    Result := 0;
  end;

  function blitter_b(Data: Pointer): integer;
  var
    y: integer = 10;
    b: integer;
  begin
    for b := 0 to 4 do begin
      SDL_Delay(200);
      Show_Surface(Screen_Width div 2 + ((Screen_Width div 2 - Text[b]^.w) div 2), y, Text[b]);
      Inc(y, 100);
    end;
    Result := 0;
  end;

  function Load_Files: boolean;
  var
    textColor: TSDL_Color = (r: $FF; g: $FF; b: $00; unused: $00);
  begin
    Result := True;

    // Load Images
    background := Load_Image('background.png');
    if background = nil then begin
      Result := False;
      Exit;
    end;

    // Font
    font := TTF_OpenFont('lazy.ttf', 72);
    if font = nil then begin
      Result := False;
      Exit;
    end;

    Text[0] := TTF_RenderText_Solid(font, 'One', textColor);
    Text[1] := TTF_RenderText_Solid(font, 'Two', textColor);
    Text[2] := TTF_RenderText_Solid(font, 'Three', textColor);
    Text[3] := TTF_RenderText_Solid(font, 'Four', textColor);
    Text[4] := TTF_RenderText_Solid(font, 'Five', textColor);
  end;

  function Create: boolean;
  begin
    Result := False;

    // Start SDL
    if SDL_Init(SDL_INIT_EVERYTHING) < 0 then begin
      Writeln('Kann SDL nicht öffnen: ', SDL_GetError);
      Exit;
    end;

    // screen Setup
    screen := SDL_SetVideoMode(Screen_Width, Screen_Heigth, Screen_BPP, SDL_SWSURFACE);
    if screen = nil then begin
      Writeln('Kann kein Fenster öffnen: ', SDL_GetError);
      Exit;
    end;

    TTF_Init;
    videoLock := SDL_CreateSemaphore(1);

    // Fenster Titel
    SDL_WM_SetCaption('Thread test', nil);

    if not Load_Files then begin
      WriteLn('Fehler beim Dateien laden !');
      Result := False;
      Exit;
    end;

    Result := True;
  end;

  // Mit der original Funktion geht es nicht.
  // function SDL_CreateThread(fn: PInt; Data: Pointer): PSDL_Thread; cdecl; external SDLLibName;

  function SDL_CreateThread(fn: Pointer; Data: Pointer): PSDL_Thread; cdecl; external SDLLibName;

  function Run: boolean;
  var
    event: TSDL_Event;
    i: integer;
  begin
    Show_Surface(0, 0, background);

    threadA := SDL_CreateThread(@blitter_a, nil);
    threadB := SDL_CreateThread(@blitter_b, nil);

    SDL_WaitThread(threadA, LongInt(nil^));
    SDL_WaitThread(threadB, LongInt(nil^));
//    SDL_WaitThread(threadB, i);
    repeat
      SDL_Flip(screen);

      while SDL_PollEvent(@event) <> 0 do begin
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
      end;

    until quit;
    Result := True;
  end;

  procedure Destroy;
  var
    i: integer;
  begin
    SDL_DestroySemaphore(videoLock);
    SDL_FreeSurface(background);

    for i := 0 to Length(Text) - 1 do begin
      SDL_FreeSurface(Text[i]);
    end;

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
