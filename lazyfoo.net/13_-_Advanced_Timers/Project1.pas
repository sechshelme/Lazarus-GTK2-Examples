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
type

  { TTimer }

  TTimer = class(TObject)
    startTicks, pausedTicks: integer;
    paused, started: boolean;
    constructor Create;
    destructor Destroy; override;
    procedure start;
    procedure stop;
    procedure pause;
    procedure unpaused;
    function getTicks: integer;
    function is_started: boolean;
    function is_paused: boolean;
  end;

  { TTimer }

  constructor TTimer.Create;
  begin
    inherited Create;
    startTicks := 0;
    pausedTicks := 0;
    paused := False;
    started := False;
  end;

  destructor TTimer.Destroy;
  begin
    inherited Destroy;
  end;

  procedure TTimer.start;
  begin
    started := True;
    paused := False;
    startTicks := SDL_GetTicks;
  end;

  procedure TTimer.stop;
  begin
    started := False;
    paused := False;
  end;

  procedure TTimer.pause;
  begin
    if started and not paused then begin
      paused := True;
      pausedTicks := SDL_GetTicks - startTicks;
    end;
  end;

  procedure TTimer.unpaused;
  begin
    if paused then begin
      paused := False;
      startTicks := SDL_GetTicks - pausedTicks;
      pausedTicks := 0;
    end;
  end;

  function TTimer.getTicks: integer;
  begin
    if started then begin
      if paused then begin
        Result := pausedTicks;
        Exit;
      end else begin
        Result := SDL_GetTicks - startTicks;
        Exit;
      end;
    end;
    Result := 0;
  end;

  function TTimer.is_started: boolean;
  begin
    Result := started;
  end;

  function TTimer.is_paused: boolean;
  begin
    Result := paused;
  end;

  // Ende TTimer

var
  background, screen: PSDL_Surface;
  font: PTTF_Font;
  Timer: TTimer;

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

    Timer := TTimer.Create;
  end;

  function Run: boolean;
  var
    quit: boolean = False;
    event: TSDL_Event;
    s: string;
    secouds, startStop, pauseMessage: PSDL_Surface;
  begin
    Result := True;

    // Copy Image auf Screen
    startStop := TTF_RenderText_Solid(font, 'Press S to start or stop the timer', textColor);
    pauseMessage := TTF_RenderText_Solid(font, 'Press P to pause or unpause the timer', textColor);

    repeat
      while SDL_PollEvent(@event) <> 0 do begin
        case event.type_ of
          SDL_KEYDOWN: begin
            case event.key.keysym.sym of
              SDLK_s: begin
                if Timer.is_started then begin
                  Timer.stop;
                end else begin
                  Timer.start;
                end;
              end;
              SDLK_p: begin
                if Timer.is_paused then begin
                  Timer.unpaused;
                end else begin
                  Timer.pause;
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
      Apply_Surface((Screen_Width - pauseMessage^.w) div 2, 250, pauseMessage, screen);

      Str(Timer.getTicks / 1000: 4: 2, s);

      secouds := TTF_RenderText_Solid(font, PChar('Timer: ' + s), textColor);
      Apply_Surface((Screen_Width - secouds^.w) div 2, 0, secouds, screen);

      SDL_FreeSurface(secouds);

      // Update Screen
      if SDL_Flip(screen) = -1 then begin
        WriteLn('Fehler beim Flip !');
        Result := False;
        Exit;
      end;
    until quit;
    Result := True;
    SDL_FreeSurface(startStop);
    SDL_FreeSurface(pauseMessage);
  end;

  procedure Destroy;
  begin
    Timer.Free;

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
