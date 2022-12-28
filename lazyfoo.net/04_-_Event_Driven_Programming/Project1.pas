program Project1;

uses
  sdl,
  sdl_image;

type

  { TSDL_Win }

  TSDL_Win = class(TObject)
  private
    image, screen: PSDL_Surface;
    Screen_Width, Screen_Heigth, Screen_BPP: integer;
    procedure apply_surface(x, y: integer; Source, destination: PSDL_Surface);
    function load_image(const filename: string): PSDL_Surface;
    function load_files: boolean;
  public
    constructor Create;
    procedure Run;
    destructor Destroy; override;
  end;

  procedure TSDL_Win.apply_surface(x, y: integer; Source, destination: PSDL_Surface);
  var
    offset: SDL_Rect;
  begin
    offset.x := x;
    offset.y := y;
    SDL_BlitSurface(Source, nil, destination, @offset);
  end;

  function TSDL_Win.load_image(const filename: string): PSDL_Surface;
  var
    loadedImage: PSDL_Surface;
  begin
    Result := nil;
    loadedImage := IMG_Load(PChar(filename));
    if loadedImage <> nil then begin
      Result := SDL_DisplayFormat(loadedImage);
      SDL_FreeSurface(loadedImage);
    end else begin
      WriteLn('Kann Datei ' + filename + ' nicht laden');
    end;
  end;

  function TSDL_Win.load_files: boolean;
  begin
    // Load Images
    image := load_image('logo.png');
    if image = nil then begin
      Result := False;
      Exit;
    end;
    Result := True;
  end;

  constructor TSDL_Win.Create;
  begin
    inherited Create;
    Screen_Width := 640;
    Screen_Heigth := 480;
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

    // Fenster Titel
    SDL_WM_SetCaption('Event Test', nil);

    if not load_files then begin
      WriteLn('Fehler beim Dateien laden !');
      Halt(1);
    end;
  end;

  procedure TSDL_Win.Run;
  var
    quit: boolean = False;
    event: TSDL_Event;
  begin
    // Copy Image auf Screen
    apply_surface(0, 0, image, screen);

    // Update Screen
    if SDL_Flip(screen) = -1 then begin
      WriteLn('Fehler beim Flip !');
      Halt(1);
    end;

    repeat
      while SDL_PollEvent(@event) = 0 do begin
        case event.type_ of
          SDL_QUITEV: begin
            quit := True;
          end;
        end;
      end;
    until quit;
  end;

  destructor TSDL_Win.Destroy;
  begin
    // Images freigeben
    SDL_FreeSurface(image);

    // SDL beenden
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
