program Project1;

uses
  sdl,
  sdl_image;

const
  Screen_Width = 640;
  Screen_Height = 480;
  Screen_BPP = 32;

  frames_per_Second: integer = 60;

  Dot_Width = 20;
  Dot_Height = 20;

  Level_Width = 1280;
  Level_Height = 960;

  //Tile constants
  TILE_WIDTH = 80;
  TILE_HEIGHT = 80;
  TOTAL_TILES = 192;
  TILE_SPRITES = 12;

  //The different tile sprites
  TILE_RED = 0;
  TILE_GREEN = 1;
  TILE_BLUE = 2;
  TILE_CENTER = 3;
  TILE_TOP = 4;
  TILE_TOPRIGHT = 5;
  TILE_RIGHT = 6;
  TILE_BOTTOMRIGHT = 7;
  TILE_BOTTOM = 8;
  TILE_BOTTOMLEFT = 9;
  TILE_LEFT = 10;
  TILE_TOPLEFT = 11;

  camera: SDL_Rect = (x: 0; y: 0; w: Screen_Width; h: Screen_Height);

var
  dot, tileSheet, screen: PSDL_Surface;
  clips: array[0..TILE_SPRITES - 1] of TSDL_Rect;

type

  { TTile }

  TTile = class(TObject)
  private
    box: TSDL_Rect;
    type_: integer;
  public
    constructor Create(x, y, tileType: integer);
    procedure Show;
    function get_type: integer;
    function get_box: TSDL_Rect;
  end;
  TTiles = array [0..TOTAL_TILES] of TTile;

  { TDot }

  TDot = class(TObject)
  private
    box: TSDL_Rect;
    xVel, yVel: integer;
  public
    constructor Create;
    procedure handle_input(event: TSDL_Event);
    procedure move(tiles: TTiles);
    procedure Show;
    procedure set_camera;
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

var
  tiles: TTiles;

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

  procedure clip_tiles;
  begin
    //Clip the sprite sheet
    clips[TILE_RED].x := 0;
    clips[TILE_RED].y := 0;
    clips[TILE_RED].w := TILE_WIDTH;
    clips[TILE_RED].h := TILE_HEIGHT;

    clips[TILE_GREEN].x := 0;
    clips[TILE_GREEN].y := 80;
    clips[TILE_GREEN].w := TILE_WIDTH;
    clips[TILE_GREEN].h := TILE_HEIGHT;

    clips[TILE_BLUE].x := 0;
    clips[TILE_BLUE].y := 160;
    clips[TILE_BLUE].w := TILE_WIDTH;
    clips[TILE_BLUE].h := TILE_HEIGHT;

    clips[TILE_TOPLEFT].x := 80;
    clips[TILE_TOPLEFT].y := 0;
    clips[TILE_TOPLEFT].w := TILE_WIDTH;
    clips[TILE_TOPLEFT].h := TILE_HEIGHT;

    clips[TILE_LEFT].x := 80;
    clips[TILE_LEFT].y := 80;
    clips[TILE_LEFT].w := TILE_WIDTH;
    clips[TILE_LEFT].h := TILE_HEIGHT;

    clips[TILE_BOTTOMLEFT].x := 80;
    clips[TILE_BOTTOMLEFT].y := 160;
    clips[TILE_BOTTOMLEFT].w := TILE_WIDTH;
    clips[TILE_BOTTOMLEFT].h := TILE_HEIGHT;

    clips[TILE_TOP].x := 160;
    clips[TILE_TOP].y := 0;
    clips[TILE_TOP].w := TILE_WIDTH;
    clips[TILE_TOP].h := TILE_HEIGHT;

    clips[TILE_CENTER].x := 160;
    clips[TILE_CENTER].y := 80;
    clips[TILE_CENTER].w := TILE_WIDTH;
    clips[TILE_CENTER].h := TILE_HEIGHT;

    clips[TILE_BOTTOM].x := 160;
    clips[TILE_BOTTOM].y := 160;
    clips[TILE_BOTTOM].w := TILE_WIDTH;
    clips[TILE_BOTTOM].h := TILE_HEIGHT;

    clips[TILE_TOPRIGHT].x := 240;
    clips[TILE_TOPRIGHT].y := 0;
    clips[TILE_TOPRIGHT].w := TILE_WIDTH;
    clips[TILE_TOPRIGHT].h := TILE_HEIGHT;

    clips[TILE_RIGHT].x := 240;
    clips[TILE_RIGHT].y := 80;
    clips[TILE_RIGHT].w := TILE_WIDTH;
    clips[TILE_RIGHT].h := TILE_HEIGHT;

    clips[TILE_BOTTOMRIGHT].x := 240;
    clips[TILE_BOTTOMRIGHT].y := 160;
    clips[TILE_BOTTOMRIGHT].w := TILE_WIDTH;
    clips[TILE_BOTTOMRIGHT].h := TILE_HEIGHT;
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
      Exit;
    end;
    if topA >= bottomB then begin
      Result := False;
      Exit;
    end;
    if rightA <= leftB then begin
      Result := False;
      Exit;
    end;
    if leftA >= rightB then begin
      Result := False;
      Exit;
    end;
  end;

  function set_tiles(var tiles: TTiles): boolean;
  var
    x: integer = 0;
    y: integer = 0;
    i, tileType: integer;
    f: Text;
  begin
    Result := True;
    AssignFile(f, 'lazy.map');
    Reset(f);

    for i := 0 to Length(tiles)- 1 do begin
      tileType := -1;
      Read(f, tileType);
      if IOResult <> 0 then begin
        Result := False;
        Exit;
      end;

      if (tileType >= 0) and (tileType < TILE_SPRITES) then begin
        tiles[i] := TTile.Create(x, y, tileType);
      end else begin
        CloseFile(f);
        Result := False;
        Exit;
      end;

      Inc(x, TILE_WIDTH);
      if x >= Level_Width then begin
        x := 0;
        Inc(y, TILE_HEIGHT);
      end;
    end;

    CloseFile(f);
  end;

  function touches_wall(box: TSDL_Rect; var tiles: TTiles): boolean;
  var
    i: integer;
  begin
    Result := False;
    for i := 0 to Length(tiles) - 1 do begin
      if (tiles[i].get_type >= TILE_CENTER) and (tiles[i].get_type <= TILE_TOPLEFT) then begin
        if check_collision(box, tiles[i].get_box) then begin
          Result := True;
          Exit;
        end;
      end;
    end;
  end;

  { TTile }

  constructor TTile.Create(x, y, tileType: integer);
  begin
    box.x := x;
    box.y := y;
    box.w := TILE_WIDTH;
    box.h := TILE_HEIGHT;
    type_ := tileType;
  end;

  procedure TTile.Show;
  begin
    if check_collision(camera, box) then begin
      Apply_Surface(box.x - camera.x, box.y - camera.y, tileSheet, screen, @clips[type_]);
    end;
  end;

  function TTile.get_type: integer;
  begin
    Result := type_;
  end;

  function TTile.get_box: TSDL_Rect;
  begin
    Result := box;
  end;

  { TDot }

  constructor TDot.Create;
  begin
    box.w:=Dot_Width;
    box.h:=Dot_Height;
  end;

  procedure TDot.handle_input(event: TSDL_Event);
  begin
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
  end;

  procedure TDot.move(tiles: TTiles);
  begin
    box.x += xVel;
    if (box.x < 0) or (box.x + Dot_Width > Level_Width) or touches_wall(box, tiles) then begin
      box.x -= xVel;
    end;
    box.y += yVel;
    if (box.y < 0) or (box.y + Dot_Height > Level_Height) or touches_wall(box, tiles) then begin
      box.y -= yVel;
    end;
  end;

  procedure TDot.Show;
  begin
    Apply_Surface(box.x - camera.x, box.y - camera.y, dot, screen);
  end;

  procedure TDot.set_camera;
  begin
    camera.x := (box.x + Dot_Width div 2) - Screen_Width div 2;
    camera.y := (box.y + Dot_Height div 2) - Screen_Height div 2;
    if camera.x < 0 then begin
      camera.x := 0;
    end;
    if camera.y < 0 then begin
      camera.y := 0;
    end;
    if camera.x > Level_Width - camera.w then begin
      camera.x := Level_Width - camera.w;
    end;
    if camera.y > Level_Height - camera.h then begin
      camera.y := Level_Height - camera.h;
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
  myDot: TDot;

  function Load_Files: boolean;
  begin
    Result := True;

    // Load Images
    dot := Load_Image('dot.png');
    if dot = nil then begin
      Result := False;
      Exit;
    end;

    tileSheet := Load_Image('tiles.png');
    if tileSheet = nil then begin
      Result := False;
      Exit;
    end;

    if set_tiles(tiles) = False then begin
      WriteLn('Konnte Tiles nicht laden !');
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
    screen := SDL_SetVideoMode(Screen_Width, Screen_Height, Screen_BPP, SDL_SWSURFACE);
    if screen = nil then begin
      Writeln('Kann kein Fenster öffnen: ', SDL_GetError);
      Exit;
    end;

    // Fenster Titel
    SDL_WM_SetCaption('Move the Dot', nil);

    if not Load_Files then begin
      WriteLn('Fehler beim Dateien laden !');
      Result := False;
      Exit;
    end;

    clip_tiles;

    Result := True;

    myDot:=TDot.Create;
    fps := TTimer.Create;
  end;

  function Run: boolean;
  var
    quit: boolean = False;
    event: TSDL_Event;
    i: integer;
  begin
    repeat
      fps.start;
      while SDL_PollEvent(@event) <> 0 do begin
        myDot.handle_input(event);
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

      myDot.move(tiles);
      myDot.set_camera;
      for i := 0 to Length(tiles) - 1 do begin
        tiles[i].Show;
      end;
      myDot.Show;

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
  var
    i: integer;
  begin
    fps.Free;
    myDot.Free;

    // Images freigeben
    SDL_FreeSurface(dot);
    SDL_FreeSurface(tileSheet);

    for i := 0 to Length(tiles) - 1 do begin
      tiles[i].Free;
    end;

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
