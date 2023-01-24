unit RunGames;

{$mode ObjFPC}{$H+}

interface

uses
  sdl;

type

  { TRunGames }

  TRunGames = class(TObject)
  private
    dotWidth, posx, posy, xvel, yvel, Screen_Width, Screen_Heigth, Screen_BPP: integer;
    screen: PSDL_Surface;
    Quit: boolean;
  public
    constructor Create;
    destructor Destroy; override;
    procedure Run;
    procedure Dot;
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
  dotWidth := 20;

  // Initialisiere  SDL Subsystem
  if SDL_Init(SDL_INIT_VIDEO) < 0 then begin
    Writeln('SDL could not initialize! SDL_Error: ', SDL_GetError);
  end;

  // Erzeuge Fenster
  //   screen := SDL_SetVideoMode(Screen_Width, Screen_Heigth, 32, SDL_SWSURFACE or SDL_FULLSCREEN);
  screen := SDL_SetVideoMode(Screen_Width, Screen_Heigth, 32, SDL_SWSURFACE);
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
  step = 1;
var
  Event: TSDL_Event;
  rect: TSDL_Rect;
  peng: boolean = False;
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
              xvel := step;
            end;
            SDLK_LEFT: begin
              xvel := -step;
            end;
            SDLK_DOWN: begin
              yvel := step;
            end;
            SDLK_UP: begin
              yvel := -step;
            end;
            SDLK_SPACE: begin
              peng := True;
            end;
          end;
        end;
        SDL_KEYUP: begin
          case event.key.keysym.sym of
            SDLK_ESCAPE: begin
              quit := True;
            end;
            SDLK_RIGHT: begin
              xvel := 0;
            end;
            SDLK_LEFT: begin
              xvel := 0;
            end;
            SDLK_DOWN: begin
              yvel := 0;
            end;
            SDLK_UP: begin
              yvel := 0;
            end;
            SDLK_SPACE: begin
              peng := False;
            end;
          end;
        end;
        SDL_QUITEV: begin
          quit := True;
        end;
      end;
    end;
    Inc(posx, xvel);
    Inc(posy, yvel);

    SDL_FillRect(screen, nil, $000000);

    if peng then begin
      WriteLn('peng');
      rect.x := 0;
      rect.y := Screen_Heigth - 20;
      rect.h := 20;
      rect.w := Screen_Width;

      SDL_FillRect(screen, @rect, $FF0000);
    end;

    dot;

    SDL_Flip(screen);
  until quit;
end;

procedure TRunGames.Dot;
var
  rect: TSDL_Rect;
begin
  if posx < 0 then begin
    posx := 0;
  end;
  if posy < 0 then begin
    posy := 0;
  end;
  if posx > Screen_Width - dotWidth then begin
    posx := Screen_Width - dotWidth;
  end;
  if posy > Screen_Heigth - dotWidth - 20 then begin
    posy := Screen_Heigth - dotWidth - 20;
  end;
  rect.x := posx;
  rect.y := posy;
  rect.h := dotWidth;
  rect.w := dotWidth;
  SDL_FillRect(screen, @rect, $FF8888);
end;

end.
