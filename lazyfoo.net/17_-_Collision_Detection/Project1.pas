program Project1;

uses
  sdl,
  sdl_image;

const
  Screen_Width: integer = 640;
  Screen_Heigth: integer = 480;
  Screen_BPP: integer = 32;

  frames_per_Second: integer = 20;

  Square_Width = 20;
  Square_Height = 20;

var
  square, screen: PSDL_Surface;
  wall:SDL_Rect;

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

  { TSquare }

  TSquare = class(TObject)
  private
    box: SDL_Rect;
    xVel, yVel: integer;
  public
    constructor Create;
    procedure handle_Input(event: TSDL_Event);
    procedure move;
    procedure Show;
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

  function check_collision(A, B: TSDL_Rect): boolean;
  var
    leftA, leftB, rightA, rightB, topA, topB, bottomA, bottomB: integer;
  begin
    leftA := A.x;
    rightA := A.x + A.w;
    topA := A.y;
    bottomA := A.y + A.h;

    leftB := B.x;
    rightB := B.x + B.w;
    topB := B.y;
    bottomB := B.y + B.h;

    Result := True;
    if bottomA <= topB then begin
      Result := False;
    end;
    if topA >= bottomB then begin
      Result := False;
    end;
    if rightA <= leftB then begin
      Result := False;
    end;
    if leftA >= rightB then begin
      Result := False;
    end;
  end;

  { TSquare }

  constructor TSquare.Create;
  begin
    box.w := Square_Width;
    box.h := Square_Height;
  end;

  procedure TSquare.handle_Input(event: TSDL_Event);
  begin
    case event.type_ of
        SDL_KEYDOWN: begin
        case event.key.keysym.sym of
          SDLK_UP: begin
            yVel -= Square_Height div 2;
          end;
          SDLK_DOWN: begin
            yVel += Square_Height div 2;
          end;
          SDLK_LEFT: begin
            xVel -= Square_Width div 2;
          end;
          SDLK_RIGHT: begin
            xVel += Square_Width div 2;
          end;
        end;
      end;
      SDL_KEYUP: begin
        case event.key.keysym.sym of
          SDLK_UP: begin
            yVel += Square_Height div 2;
          end;
          SDLK_DOWN: begin
            yVel -= Square_Height div 2;
          end;
          SDLK_LEFT: begin
            xVel += Square_Width div 2;
          end;
          SDLK_RIGHT: begin
            xVel -= Square_Width div 2;
          end;
        end;
      end;
    end;
  end;

  procedure TSquare.move;
  begin
    box.x += xVel;
    if (box.x < 0) or (box.x + Square_Width > Screen_Width) or (check_collision(box, wall)) then begin
      box.x -= xVel;
    end;
    box.y += yVel;
    if (box.y < 0) or (box.y + Square_Height > Screen_Heigth) or (check_collision(box, wall)) then begin
      box.y -= yVel;
    end;
  end;

  procedure TSquare.Show;
  begin
    Apply_Surface(box.x, box.y, square, screen);
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
  MySquare: TSquare;

  function Load_Files: boolean;
  begin
    Result := True;

    // Load Images
    square := Load_Image('dot.bmp');
    if square = nil then begin
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
    screen := SDL_SetVideoMode(Screen_Width, Screen_Heigth, Screen_BPP, SDL_SWSURFACE);
    if screen = nil then begin
      Writeln('Kann kein Fenster öffnen: ', SDL_GetError);
      Exit;
    end;

    // Fenster Titel
    SDL_WM_SetCaption('Motation', nil);

    if not Load_Files then begin
      WriteLn('Fehler beim Dateien laden !');
      Result := False;
      Exit;
    end;

    wall.x:=300;
    wall.y:=40;
    wall.w:=40;
    wall.h:=400;

    Result := True;

    MySquare := TSquare.Create;
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
        MySquare.handle_Input(event);
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

      MySquare.move;

      SDL_FillRect(screen, @screen^.clip_rect, SDL_MapRGB(screen^.format, $FF, $FF, $FF));
      SDL_FillRect(screen, @wall, SDL_MapRGB(screen^.format, $77, $77, $77));
      MySquare.Show;

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
    MySquare.Free;

    // Images freigeben
    SDL_FreeSurface(square);

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
