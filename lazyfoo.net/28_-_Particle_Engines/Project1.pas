program Project1;

uses
  sdl,
  sdl_image;

const
  Screen_Width: integer = 640;
  Screen_Heigth: integer = 480;
  Screen_BPP: integer = 32;

  frames_per_Second: integer = 60;

  Dot_Width = 20;
  Dot_Height = 20;
  TOTAL_PARTICLES = 20;

var
  dot, red, green, blue, shimmer, screen: PSDL_Surface;

type

  { TParticle }

  TParticle = class(TObject)
  private
    x, y, frame: integer;
    type_: PSDL_Surface;
  public
    constructor Create(Ax, Ay: integer);
    procedure Show;
    function is_dead: boolean;
  end;

  { TDot }

  TDot = class(TObject)
  private
    x, y, xvel, yVel: integer;
    particles: array[0..TOTAL_PARTICLES - 1] of TParticle;
  public
    constructor Create;
    destructor Destroy; override;
    procedure handle_Input(event: TSDL_Event);
    procedure move;
    procedure show_particles;
    procedure Show;
  end;

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

  { TParticle }

  constructor TParticle.Create(Ax, Ay: integer);
  begin
    x := Ax - 5 + Random(25);
    y := Ay - 5 + Random(25);
    frame := Random(5);
    case Random(3) of
      0: begin
        type_ := red;
      end;
      1: begin
        type_ := green;
      end;
      2: begin
        type_ := blue;
      end;
    end;
  end;

  procedure TParticle.Show;
  begin
    Apply_Surface(x, y, type_, screen);
    if frame mod 2 = 0 then begin
      Apply_Surface(x, y, shimmer, screen);
    end;
    Inc(frame);
  end;

  function TParticle.is_dead: boolean;
  begin
    Result := frame > 10;
  end;

  { TDot }

  constructor TDot.Create;
  var
    i: integer;
  begin
    inherited Create;
    for i := 0 to Length(particles) - 1 do begin
      particles[i] := TParticle.Create(x, y);
    end;
  end;

  destructor TDot.Destroy;
  var
    i: integer;
  begin
    for i := 0 to Length(particles) - 1 do begin
      particles[i].Free;
    end;
    inherited Destroy;
  end;

  procedure TDot.handle_Input(event: TSDL_Event);
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

  procedure TDot.move;
  begin
    x += xvel;
    if (x < 0) or (x + Dot_Width > Screen_Width) then begin
      x -= xvel;
    end;
    y += yvel;
    if (y < 0) or (y + Dot_Height > Screen_Heigth) then begin
      y -= yvel;
    end;
  end;

  procedure TDot.show_particles;
  var
    i: integer;
  begin
    for i := 0 to Length(particles) - 1 do begin
      if particles[i].is_dead then begin
        particles[i].Free;
        particles[i] := TParticle.Create(x, y);
      end;
    end;
    for i := 0 to Length(particles) - 1 do begin
      particles[i].Show;
    end;
  end;

  procedure TDot.Show;
  begin
    Apply_Surface(x, y, dot, screen);
    show_particles;
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
  MyDot: TDot;

  function Load_Files: boolean;
  begin
    Result := True;

    // Load Images
    dot := Load_Image('dot.bmp');
    if dot = nil then begin
      Result := False;
      Exit;
    end;

    red := Load_Image('red.bmp');
    green := Load_Image('green.bmp');
    blue := Load_Image('blue.bmp');
    shimmer := Load_Image('shimmer.bmp');
    if (red = nil) and (green = nil) and (blue = nil) and (shimmer = nil) then begin
      Result := False;
      Exit;
    end;

    SDL_SetAlpha(red, SDL_SRCALPHA or SDL_RLEACCEL, 192);
    SDL_SetAlpha(green, SDL_SRCALPHA or SDL_RLEACCEL, 192);
    SDL_SetAlpha(blue, SDL_SRCALPHA or SDL_RLEACCEL, 192);
    SDL_SetAlpha(shimmer, SDL_SRCALPHA or SDL_RLEACCEL, 192);
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

    // Fenster Titel
    SDL_WM_SetCaption('Particle Test', nil);

    Randomize;

    if not Load_Files then begin
      WriteLn('Fehler beim Dateien laden !');
      Result := False;
      Exit;
    end;

    Result := True;

    MyDot := TDot.Create;
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
        MyDot.handle_Input(event);
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

      MyDot.move;

      SDL_FillRect(screen, @screen^.clip_rect, SDL_MapRGB(screen^.format, $88, $FF, $88));
      MyDot.Show;

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
    MyDot.Free;

    // Images freigeben
    SDL_FreeSurface(dot);
    SDL_FreeSurface(red);
    SDL_FreeSurface(green);
    SDL_FreeSurface(blue);
    SDL_FreeSurface(shimmer);

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
