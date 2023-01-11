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
      Halt;
    end;

    // Erzeuge Fenster
    scr := SDL_SetVideoMode(640, 480, 8, SDL_SWSURFACE);
    if scr = nil then begin
      WriteLn('could not initialize sdl2: ', SDL_GetError());
      Halt;
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
    dstrect: TSDL_Rect;
    i: integer;
  begin
    repeat
      SDL_WaitEvent(@Event);
      case Event.type_ of
        SDL_QUITEV: begin
          Quit := True;
        end;
        SDL_KEYDOWN: begin
          dstrect.h := 100;
          dstrect.w := 10;
          for i := 0 to 610 do begin
            SDL_FillRect(scr, @dstrect, random($FFFFFF));

            dstrect.x := i;
            dstrect.y := 150;
          end;

          SDL_Flip(scr);
        end;
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
