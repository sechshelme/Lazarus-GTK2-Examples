program Project1;

uses
  sdl,
  sdl_image;

const
  Screen_Width = 640;
  Screen_Height = 480;
  Screen_BPP = 32;

  frames_per_Second: integer = 20;

var
  back, front, screen: PSDL_Surface;
  alpha: integer;

type

  { TTimer }

  TTimer = class(TObject)
  private
    startTicks, pausedTicks: integer;
    paused, started: boolean;
  public
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

  procedure Apply_Surface(x, y: integer; Source, destination: PSDL_Surface; clip: PSDL_Rect = nil);
  var
    offset: SDL_Rect;
  begin
    offset.x := x;
    offset.y := y;
    SDL_BlitSurface(Source, clip, destination, @offset);
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
  fps: TTimer;

  function Load_Files: boolean;
  begin
    Result := True;

    // Load Images
    back := Load_Image('fadein.png');
    if back = nil then begin
      Result := False;
      Exit;
    end;

    front := Load_Image('fadeout.png');
    if front = nil then begin
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

    // screen Setup
    screen := SDL_SetVideoMode(Screen_Width, Screen_Height, Screen_BPP, SDL_SWSURFACE);
    if screen = nil then begin
      Writeln('Kann kein Fenster öffnen: ', SDL_GetError);
      Exit;
    end;

    // Fenster Titel
    SDL_WM_SetCaption('Alpha Test', nil);

    if not Load_Files then begin
      WriteLn('Fehler beim Dateien laden !');
      Result := False;
      Exit;
    end;

    Result := True;

    fps := TTimer.Create;
    alpha := SDL_ALPHA_OPAQUE;
  end;

  function Run: boolean;
  var
    quit: boolean = False;
    event: TSDL_Event;
    keystatus: PUInt8;
  begin
    repeat
      fps.start;
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

      keystatus := SDL_GetKeyState(nil);
      if keystatus[SDLK_UP] <> 0 then begin
        if alpha < SDL_ALPHA_OPAQUE then begin
          Inc(alpha, 5);
        end;
      end;
      if keystatus[SDLK_DOWN] <> 0 then begin
        if alpha > SDL_ALPHA_TRANSPARENT then begin
          Dec(alpha, 5);
        end;
      end;

      SDL_SetAlpha(front, SDL_SRCALPHA, alpha);

      Apply_Surface(0, 0, back, screen);
      Apply_Surface(0, 0, front, screen);

      // Update screen
      if SDL_Flip(screen) = -1 then begin
        WriteLn('Fehler beim Flip !');
        Result := False;
        Exit;
      end;

      if fps.getTicks < 1000 div frames_per_Second then begin
        SDL_Delay(1000 div frames_per_Second - fps.getTicks);
      end;
    until quit;
    Result := True;
  end;

  procedure Destroy;
  begin
    fps.Free;

    // Images freigeben
    SDL_FreeSurface(back);
    SDL_FreeSurface(front);

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
