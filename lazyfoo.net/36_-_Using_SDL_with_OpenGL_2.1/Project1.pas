program Project1;

uses
  gl,
  glu,
  sdl,
  sdl_image;

const
  Screen_Width: integer = 640;
  Screen_Heigth: integer = 480;
  Screen_BPP: integer = 32;

  frames_per_Second: integer = 60;

var
  screen: PSDL_Surface;

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
  fps: TTimer;

  function Create: boolean;
  begin
    Result := False;

    // Start SDL
    if SDL_Init(SDL_INIT_EVERYTHING) < 0 then begin
      Writeln('Kann SDL nicht öffnen: ', SDL_GetError);
      Exit;
    end;

    // screen Setup
    screen := SDL_SetVideoMode(Screen_Width, Screen_Heigth, Screen_BPP, SDL_OPENGL or SDL_RESIZABLE or SDL_SWSURFACE);
    if screen = nil then begin
      Writeln('Kann kein Fenster öffnen: ', SDL_GetError);
      Exit;
    end;

    // Fenster Titel
    SDL_WM_SetCaption('OpenGL', nil);

    Result := True;
    fps := TTimer.Create;

    glClearColor(0.0, 0.0, 1.0, 0.0);
  end;

  function Run: boolean;
  const
    r = 1.0;
  var
    quit: boolean = False;
    event: TSDL_Event;
  begin

    repeat
      fps.start;
      while SDL_PollEvent(@event) <> 0 do begin
        case event.type_ of
          SDL_VIDEORESIZE: begin
            WriteLn(event.resize.w);
            Screen_Width:=event.resize.w;
            Screen_Heigth:=event.resize.h;
            screen := SDL_SetVideoMode(Screen_Width, Screen_Heigth, Screen_BPP, SDL_OPENGL or SDL_RESIZABLE or SDL_SWSURFACE);
            glViewport(0, 0, Screen_Width, Screen_Heigth);
          end;
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

      glRotatef(1.0, 0.0, 0.0, 1.0);
      glClear(GL_COLOR_BUFFER_BIT);

      glBegin(GL_QUADS);
      glColor3f(1.0, 0.0, 0.0);
      glVertex2f(r, r);
      glColor3f(1.0, 1.0, 0.0);
      glVertex2f(-r, r);
      glColor3f(1.0, 0.0, 1.0);
      glVertex2f(-r, -r);
      glColor3f(0.0, 1.0, 0.0);
      glVertex2f(r, -r);
      glEnd;

      SDL_GL_SwapBuffers;

      if fps.getTicks < 1000 div frames_per_Second then begin
        SDL_Delay(1000 div frames_per_Second - fps.getTicks);
      end;
    until quit;
    Result := True;
  end;

  procedure Destroy;
  begin
    fps.Free;

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
