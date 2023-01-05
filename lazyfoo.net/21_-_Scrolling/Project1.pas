program Project1;

uses
  sdl,
  sdl_image;

const
  Screen_Width = 640;
  Screen_Height = 480;
  Screen_BPP = 32;

  frames_per_Second: integer = 60;

  Dot_Width = 20;
  Dot_Height = 20;

  Level_Width = 1280;
  Level_Height = 960;

  camera: SDL_Rect = (x: 0; y: 0; w: Screen_Width; h: Screen_Height);

var
  dot, background, screen: PSDL_Surface;

type

  { TDot }

  TDot = class(TObject)
  private
    x, y, xVel, yVel: integer;
  public
    procedure handle_input(event: TSDL_Event);
    procedure move;
    procedure Show;
    procedure set_camera;
  end;

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

  { TDot }

  procedure TDot.handle_input(event: TSDL_Event);
  begin
    begin
      case event.type_ of
        SDL_KEYDOWN: begin
          case event.key.keysym.sym of
            SDLK_UP: begin
              yVel -= Dot_Height div 2;
            end;
            SDLK_DOWN: begin
              yVel += Dot_Height div 2;
            end;
            SDLK_LEFT: begin
              xVel -= Dot_Width div 2;
            end;
            SDLK_RIGHT: begin
              xVel += Dot_Width div 2;
            end;
          end;
        end;
        SDL_KEYUP: begin
          case event.key.keysym.sym of
            SDLK_UP: begin
              yVel += Dot_Height div 2;
            end;
            SDLK_DOWN: begin
              yVel -= Dot_Height div 2;
            end;
            SDLK_LEFT: begin
              xVel += Dot_Width div 2;
            end;
            SDLK_RIGHT: begin
              xVel -= Dot_Width div 2;
            end;
          end;
        end;
      end;
    end;
  end;

  procedure TDot.move;
  begin
    x += xVel;
    if (x < 0) or (x + Dot_Width > Level_Width) then begin
      x -= xVel;
    end;
    y += yVel;
    if (y < 0) or (y + Dot_Height > Level_Height) then begin
      y -= yVel;
    end;
  end;

  procedure TDot.Show;
  begin
    Apply_Surface(x - camera.x, y - camera.y, dot, screen);
  end;

  procedure TDot.set_camera;
  begin
    camera.x := (x + Dot_Width div 2) - Screen_Width div 2;
    camera.y := (y + Dot_Height div 2) - Screen_Height div 2;
    if camera.x < 0 then begin
      camera.x := 0;
    end;
    if camera.y < 0 then begin
      camera.y := 0;
    end;
    if camera.x > Level_Width - camera.w then begin
      camera.x := Level_Width - camera.w;
    end;
    if camera.y > Level_Height - camera.h then begin
      camera.y := Level_Height - camera.h;
    end;
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
  myDot: TDot;

  function Load_Files: boolean;
  begin
    Result := True;

    // Load Images
    dot := Load_Image('dot.bmp');
    if dot = nil then begin
      Result := False;
      Exit;
    end;

    background := Load_Image('bg.png');
    if background = nil then begin
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
    SDL_WM_SetCaption('Move the Dot', nil);

    if not Load_Files then begin
      WriteLn('Fehler beim Dateien laden !');
      Result := False;
      Exit;
    end;

    Result := True;

    myDot := TDot.Create;
    fps := TTimer.Create;
  end;

  function Run: boolean;
  var
    quit: boolean = False;
    event: TSDL_Event;
  begin
    repeat
      fps.start;
      while SDL_PollEvent(@event) <> 0 do begin
        myDot.handle_input(event);
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

      myDot.move;
      myDot.set_camera;
      Apply_Surface(0, 0, background, screen, @camera);

      myDot.Show;

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
    myDot.Free;

    // Images freigeben
    SDL_FreeSurface(dot);
    SDL_FreeSurface(background);

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
