program Project1;

uses
  sdl,
  sdl_ttf,
  sdl_image,
  sdl_mixer;

const
  Screen_Width: integer = 640;
  Screen_Heigth: integer = 480;
  Screen_BPP: integer = 32;

  textColor: TSDL_Color = (r: $00; g: $FF; b: $00; unused: $00);

var
  message, background, screen: PSDL_Surface;
  font: PTTF_Font;

  music: PMix_Music;
  scratch, high, med, low: PMix_Chunk;

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

    music := Mix_LoadMUS('doom.mid');
//    music := Mix_LoadMUS('scratch.wav');
    if music = nil then begin
      WriteLn('Kann Musik nicht laden');
      Result := False;
      Exit;
    end;

    scratch := Mix_LoadWAV('scratch.wav');
    high := Mix_LoadWAV('high.wav');
    med := Mix_LoadWAV('medium.wav');
    low := Mix_LoadWAV('low.wav');
    if (scratch = nil) or (high = nil) or (med = nil) or (low = nil) then begin
      WriteLn('Kann Sound nicht laden');
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

    if Mix_OpenAudio(48000, MIX_DEFAULT_FORMAT, 2, 4096) = -1 then begin
      Write('Kann Audio nicht öffnen');
      Exit;
    end;

    if not Load_Files then begin
      Exit;
    end;

    Result := True;

    // Fenster Titel
    SDL_WM_SetCaption('Sound', nil);
  end;

  procedure PrintText(const s: string; Top: integer);
  begin
    message := TTF_RenderText_Solid(font, PChar(Utf8ToAnsi(s)), textColor);
    SDL_SetColorKey(message, SDL_SRCCOLORKEY, SDL_MapRGB(message^.format, $00, $00, $00));
    Apply_Surface((Screen_Width - message^.w) div 2, Top, message, screen);
    SDL_FreeSurface(message);
  end;

  function Run: boolean;
  var
    quit: boolean = False;
    event: TSDL_Event;
  begin
    Result := True;

    // Copy Image auf Screen
    Apply_Surface(0, 0, background, screen);

    PrintText('Drücke 1 bis 4 für Sound-Effekte', 100);
    PrintText('Drücke 9 Start und Pause Musik', 200);
    PrintText('Drücke 0 Stop Musik', 300);

    SDL_Flip(screen);

    repeat
      while SDL_PollEvent(@Event) <> 0 do begin
        case event.type_ of
          SDL_KEYDOWN: begin
            case event.key.keysym.sym of
              SDLK_1: begin
                Mix_PlayChannel(-1, scratch, 0);
              end;
              SDLK_2: begin
                Mix_PlayChannel(-1, high, 0);
              end;
              SDLK_3: begin
                Mix_PlayChannel(-1, med, 0);
              end;
              SDLK_4: begin
                Mix_PlayChannel(-1, low, 0);
              end;
              SDLK_9: begin
                if Mix_PlayingMusic = 0 then begin
                  Mix_PlayMusic(music, -1);
                end else begin
                  if Mix_PausedMusic = 1 then begin
                    Mix_ResumeMusic;
                  end else begin
                    Mix_PauseMusic;
                  end;
                end;
              end;
              SDLK_0: begin
                Mix_HaltMusic;
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
    until quit;
    Result := True;
  end;

  procedure Destroy;
  begin
    SDL_FreeSurface(background);

    Mix_FreeChunk(scratch);
    Mix_FreeChunk(high);
    Mix_FreeChunk(med);
    Mix_FreeChunk(low);
    Mix_FreeMusic(music);
    Mix_CloseAudio;

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
