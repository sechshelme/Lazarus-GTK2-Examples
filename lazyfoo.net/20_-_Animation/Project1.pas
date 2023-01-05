program Project1;

uses
  sdl,
  sdl_image;

const
  Screen_Width: integer = 640;
  Screen_Heigth: integer = 480;
  Screen_BPP: integer = 32;

  frames_per_Second: integer = 20;

  Foo_Width = 64;
  Foo_Height = 205;
  Foo_Right = 0;
  Foo_Left = 1;


var
  clipsRight: array [0..3] of TSDL_Rect;
  clipsLeft: array [0..3] of TSDL_Rect;
  foo, screen: PSDL_Surface;

type

  { TFoo }

  TFoo = class(TObject)
  private
    offset, velocity, frame, status: integer;
  public
    constructor Create;
    procedure handle_input(event: TSDL_Event);
    procedure move;
    procedure Show;
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

  { TFoo }

  procedure set_clips;
  var
    i: integer;
  begin
    for i := 0 to 3 do begin
      clipsRight[i].x := i * Foo_Width;
      clipsRight[i].y := 0;
      clipsRight[i].w := Foo_Width;
      clipsRight[i].h := Foo_Height;

      clipsLeft[i].x := i * Foo_Width;
      clipsLeft[i].y := Foo_Height;
      clipsLeft[i].w := Foo_Width;
      clipsLeft[i].h := Foo_Height;
    end;
  end;

  constructor TFoo.Create;
  begin
    inherited Create;
    status := Foo_Right;
  end;

  procedure TFoo.handle_input(event: TSDL_Event);
  begin
    begin
      case event.type_ of
        SDL_KEYDOWN: begin
          case event.key.keysym.sym of
            SDLK_LEFT: begin
              velocity -= Foo_Width div 4;
            end;
            SDLK_RIGHT: begin
              velocity += Foo_Width div 4;
            end;
          end;
        end;
        SDL_KEYUP: begin
          case event.key.keysym.sym of
            SDLK_LEFT: begin
              velocity += Foo_Width div 4;
            end;
            SDLK_RIGHT: begin
              velocity -= Foo_Width div 4;
            end;
          end;
        end;
      end;
    end;
  end;

  procedure TFoo.move;
  begin
    offset += velocity;
    if (offset < 0) or (offset + Foo_Width > Screen_Width) then begin
      offset -= velocity;
    end;
  end;

  procedure TFoo.Show;
  begin
    if velocity < 0 then begin
      status := Foo_Left;
      Inc(frame);
    end else if velocity > 0 then begin
      status := Foo_Right;
      Inc(frame);
    end else begin
      frame := 0;
    end;
    if frame > 4 then begin
      frame := 0;
    end;
    if status = Foo_Right then begin
      Apply_Surface(offset, Screen_Heigth - Foo_Height, foo, screen, @clipsRight[frame]);
    end else begin
      Apply_Surface(offset, Screen_Heigth - Foo_Height, foo, screen, @clipsLeft[frame]);
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
  walk: TFoo;

  function Load_Files: boolean;
  begin
    Result := True;

    // Load Images
    foo := Load_Image('foo.png');
    if foo = nil then begin
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
    SDL_WM_SetCaption('Frame Rate Test', nil);

    if not Load_Files then begin
      WriteLn('Fehler beim Dateien laden !');
      Result := False;
      Exit;
    end;

    Result := True;
    set_clips;

    walk := TFoo.Create;
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
        walk.handle_input(event);
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

      walk.move;

      SDL_FillRect(screen, @screen^.clip_rect, SDL_MapRGB(screen^.format, $FF, $FF, $FF));
      walk.Show;

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
    walk.Free;

    // Images freigeben
    SDL_FreeSurface(foo);

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
