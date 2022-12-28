program Project1;

uses
  sdl;

type

  { TApplication }

  TApplication = class(TObject)
  private
    Quit: boolean;
    scr: PSDL_Surface; // Our main screen
  public
    constructor Create;
    destructor Destroy; override;
    procedure Run;
  end;


  { TApplication }

  constructor TApplication.Create;
  begin
    inherited Create;

    // Initialisiere  SDL Subsystem
    if SDL_Init(SDL_INIT_VIDEO) < 0 then begin
      Writeln('SDL could not initialize! SDL_Error: ', SDL_GetError);
    end;

    // Erzeuge Fenster
    scr := SDL_SetVideoMode(640, 480, 8, SDL_SWSURFACE);
    if scr = nil then begin
      WriteLn('could not initialize sdl2: ', SDL_GetError());
    end;

    // Fenster Titel
    SDL_WM_SetCaption('SDL-Fenster', nil);
  end;

  destructor TApplication.Destroy;
  begin
    // Subsystems and SDL beenden
    SDL_Quit;
    inherited Destroy;
  end;

  procedure TApplication.Run;
  var
    Event: TSDL_Event;
  begin
    repeat
      SDL_WaitEvent(@Event);
      if Event.type_ = SDL_QUITEV then begin
        Quit := True;
      end;
    until Quit;
  end;

var
  app: TApplication;

begin
  app := TApplication.Create;
  app.Run;
  app.Free;
end.
