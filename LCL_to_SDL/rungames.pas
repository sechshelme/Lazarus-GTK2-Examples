unit RunGames;

{$mode ObjFPC}{$H+}

interface

uses
  sdl;

type

  { TRunGames }

  TRunGames = class(TObject)
  private
    posx, posy, Screen_Width, Screen_Heigth, Screen_BPP: integer;
    screen: PSDL_Surface;
    Quit: boolean;
  public
    constructor Create;
    destructor Destroy; override;
    procedure Run;
  end;

implementation

{ TRunGames }

constructor TRunGames.Create;
begin
  inherited Create;

  Screen_Width := 640;
  Screen_Heigth := 480;
  Screen_BPP := 32;

  posx := 100;
  posy := 100;

  // Initialisiere  SDL Subsystem
  if SDL_Init(SDL_INIT_VIDEO) < 0 then begin
    Writeln('SDL could not initialize! SDL_Error: ', SDL_GetError);
  end;

  // Erzeuge Fenster
screen := SDL_SetVideoMode(Screen_Width, Screen_Heigth, 8, SDL_SWSURFACE or SDL_FULLSCREEN);
  if screen = nil then begin
    WriteLn('could not initialize sdl2: ', SDL_GetError());
  end;

  // Fenster Titel
  SDL_WM_SetCaption('Run Game', nil);

  Quit := False;
end;

destructor TRunGames.Destroy;
begin
  // Subsystems and SDL beenden
  SDL_Quit;
  inherited Destroy;
end;

procedure TRunGames.Run;
const
  step = 5;
var
  Event: TSDL_Event;
  rect: TSDL_Rect;
begin
  repeat
    while SDL_PollEvent(@event) <> 0 do begin
      case event.type_ of
        SDL_KEYDOWN: begin
          case event.key.keysym.sym of
            SDLK_ESCAPE: begin
              quit := True;
            end;
            SDLK_RIGHT: begin
              Inc(posx, step);
            end;
            SDLK_LEFT: begin
              Dec(posx, step);
            end;
            SDLK_DOWN: begin
              Inc(posy, step);
            end;
            SDLK_UP: begin
              Dec(posy, step);
            end;
          end;
        end;
        SDL_QUITEV: begin
          quit := True;
        end;
      end;
    end;
    rect.x := posx;
    rect.y := posy;
    rect.h := 10;
    rect.w := 10;
    SDL_FillRect(screen, nil, $000000);

    rect.x := posx;
    rect.y := posy;
    rect.h := 10;
    rect.w := 10;
    SDL_FillRect(screen, @rect, $FF8888);
    SDL_Flip(screen);
  until quit;
end;

end.
