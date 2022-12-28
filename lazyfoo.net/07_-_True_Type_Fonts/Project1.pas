program Project1;

uses
  sdl,
  sdl_ttf,
  sdl_image;

const
  clip: array[0..3] of SDL_Rect = (
    (x: 0; y: 0; w: 100; h: 100),
    (x: 100; y: 0; w: 100; h: 100),
    (x: 0; y: 100; w: 100; h: 100),
    (x: 100; y: 100; w: 100; h: 100));

  textColor: TSDL_Color = (r: $FF; g: $FF; b: $FF);

type
  TSDL_Win = class(TObject)
  private
    message, background, screen: PSDL_Surface;
    Screen_Width, Screen_Heigth, Screen_BPP: integer;
    font: PTTF_Font;
    procedure apply_surface(x, y: integer; Source, destination: PSDL_Surface; clip: PSDL_Rect = nil);
    function load_image(const filename: string): PSDL_Surface;
  public
    constructor Create;
    procedure Run;
    destructor Destroy; override;
  end;

  procedure TSDL_Win.apply_surface(x, y: integer; Source, destination: PSDL_Surface; clip: PSDL_Rect = nil);
  var
    offset: SDL_Rect;
  begin
    offset.x := x;
    offset.y := y;
    SDL_BlitSurface(Source, clip, destination, @offset);
  end;

  function TSDL_Win.load_image(const filename: string): PSDL_Surface;
  var
    loadedImage, optimizedImage: PSDL_Surface;
    colorkey: uint32;
  begin
    Result := nil;
    loadedImage := IMG_Load(PChar(filename));
    if loadedImage <> nil then begin
      optimizedImage := SDL_DisplayFormat(loadedImage);
      SDL_FreeSurface(loadedImage);
    end else begin
      WriteLn('Kann Datei ' + filename + ' nicht laden');
    end;
    if optimizedImage <> nil then begin
      colorkey := SDL_MapRGB(optimizedImage^.format, $0, $FF, $FF);
      SDL_SetColorKey(optimizedImage, SDL_SRCCOLORKEY, colorkey);
    end;
    Result := optimizedImage;
  end;

  constructor TSDL_Win.Create;
  begin
    inherited Create;
    Screen_Width := 320;
    Screen_Heigth := 240;
    Screen_BPP := 32;

    // Start SDL
    if SDL_Init(SDL_INIT_EVERYTHING) < 0 then begin
      Writeln('Kann SDL nicht öffnen: ', SDL_GetError);
      Halt(1);
    end;

    // Screen Setup
    screen := SDL_SetVideoMode(Screen_Width, Screen_Heigth, Screen_BPP, SDL_SWSURFACE);
    if screen = nil then begin
      Writeln('Kann kein Fenster öffnen: ', SDL_GetError);
      Halt(1);
    end;

    // TTF Font inizialisieren
    if TTF_Init = -1 then begin
      WriteLn('Kann Font nicht inizialisieren');
      Halt(1);
    end;

    // Fenster Titel
    SDL_WM_SetCaption('TTF Test', nil);

    background := load_image('background.png');

    font := TTF_OpenFont('lazy.ttf', 28);
    if font = nil then begin
      WriteLn('Kann Font nicht laden');
      Halt(1);
    end;

  end;

  procedure TSDL_Win.Run;
  var
    quit: boolean = False;
    event: TSDL_Event;
  begin
    message := TTF_RenderText_Solid(font, 'Hello World !', textColor);

    // Copy Image auf Screen
    apply_surface(0, 0, background, screen);
    apply_surface(0, 150, message, screen);

    SDL_Flip(screen);

    repeat
      SDL_WaitEvent(@Event);
      case event.type_ of
        SDL_QUITEV: begin
          quit := True;
        end;
      end;
    until quit;
  end;

  destructor TSDL_Win.Destroy;
  begin
    // Images freigeben
    SDL_FreeSurface(background);
    SDL_FreeSurface(message);

    // SDL beenden
    TTF_CloseFont(font);

    SDL_Quit;

    inherited Destroy;
  end;

var
  MySDL: TSDL_Win;

begin
  MySDL := TSDL_Win.Create;
  MySDL.Run;
  MySDL.Free;
end.
