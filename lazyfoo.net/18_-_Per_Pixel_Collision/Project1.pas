program Project1;

uses
  sdl,
  sdl_image;

const
  Screen_Width: integer = 640;
  Screen_Heigth: integer = 480;
  Screen_BPP: integer = 32;

  frames_per_Second: integer = 20;

  Dot_Width = 20;
  Dot_Height = 20;

var
  square, screen: PSDL_Surface;

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

  TRects = array [0..10] of TSDL_Rect;

  { TDot }

  TDot = class(TObject)
  private
    box: TRects;
    x, y, xVel, yVel: integer;
    procedure shift_boxes;
  public
    constructor Create(AX, AY: integer);
    procedure handle_Input(event: TSDL_Event);
    procedure move(rects: TRects);
    procedure Show;
    function get_rects: TRects;
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
      SDL_SetColorKey(optimizedImage, SDL_SRCCOLORKEY, SDL_MapRGB(optimizedImage^.format, $FF, $FF, $FF));
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

  function check_collision(var A, B: TRects): boolean;
  var
    leftA, leftB, rightA, rightB, topA, topB, bottomA, bottomB, i, j: integer;
  begin
    i := 0;
//    WriteLn(A[i].x, ' - ', A[i].y, ' - ', A[i].w, ' - ', A[i].h, ' - ', B[i].x, ' - ', B[i].y, ' - ', B[i].w, ' - ', B[i].h);
    Result := False;
    for i := 0 to Length(A) - 1 do begin
      leftA := A[i].x;
      rightA := A[i].x + A[i].w;
      topA := A[i].y;
      bottomA := A[i].y + A[i].h;
      for j := 0 to Length(B) - 1 do begin
        leftB := B[j].x;
        rightB := B[j].x + B[j].w;
        topB := B[j].y;
        bottomB := B[j].y + B[j].h;

        if ((bottomA <= topB) or (topA >= bottomB) or (rightA <= leftB) or (leftA >= rightB)) = False then begin
          Result := True;

          //WriteLn(bottomA,' - ', topB,' - ',topA,' - ', bottomB,' - ',rightA,' - ',leftB,' - ',leftA,' - ', rightB);

          //   exit;
        end;
      end;
    end;
  end;

  { TSquare }

  procedure TDot.shift_boxes;
  var
    r: integer = 0;
    i: integer;
  begin
    for i := 0 to Length(box) - 1 do begin
      box[i].x := x + (Dot_Width - box[i].w) div 2;
      box[i].y := y + r;
      r += box[i].h;
    end;
  end;

  constructor TDot.Create(AX, AY: integer);
  const
    b: TRects = (
      (x: 0; y: 0; w: 6; h: 1),
      (x: 0; y: 0; w: 10; h: 1),
      (x: 0; y: 0; w: 14; h: 1),
      (x: 0; y: 0; w: 16; h: 2),
      (x: 0; y: 0; w: 18; h: 2),
      (x: 0; y: 0; w: 20; h: 6),
      (x: 0; y: 0; w: 18; h: 2),
      (x: 0; y: 0; w: 16; h: 2),
      (x: 0; y: 0; w: 14; h: 1),
      (x: 0; y: 0; w: 10; h: 1),
      (x: 0; y: 0; w: 6; h: 1));
  begin
    x := Ax;
    y := Ay;
    box := b;
    shift_boxes;
  end;

  procedure TDot.handle_Input(event: TSDL_Event);
  begin
    case event.type_ of
      SDL_KEYDOWN: begin
        case event.key.keysym.sym of
          SDLK_UP: begin
            yVel -= 1;
          end;
          SDLK_DOWN: begin
            yVel += 1;
          end;
          SDLK_LEFT: begin
            xVel -= 1;
          end;
          SDLK_RIGHT: begin
            xVel += 1;
          end;
        end;
      end;
      SDL_KEYUP: begin
        case event.key.keysym.sym of
          SDLK_UP: begin
            yVel += 1;
          end;
          SDLK_DOWN: begin
            yVel -= 1;
          end;
          SDLK_LEFT: begin
            xVel += 1;
          end;
          SDLK_RIGHT: begin
            xVel -= 1;
          end;
        end;
      end;
    end;
  end;

  procedure TDot.move(rects: TRects);
  begin
    x += xVel;
    shift_boxes;
    if (x < 0) or (x + Dot_Width > Screen_Width) or (check_collision(box, rects)) then begin
      x -= xVel;
      shift_boxes;
    end;
    y += yVel;
    if (y < 0) or (y + Dot_Height > Screen_Heigth) or (check_collision(box, rects)) then begin
      y -= yVel;
      shift_boxes;
    end;
  end;

  procedure TDot.Show;
  begin
    Apply_Surface(x, y, square, screen);

    WriteLn(xvel,'   ',yvel);
  end;

  function TDot.get_rects: TRects;
  var
    i: Integer;
  begin
//    SetLength(Result,Length(box) );
//    for i := 1 to Length(box) - 1 do begin
//      Result[i] := box[i];
  //  end;
    Result := box;
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
  mDot, otherDot: TDot;

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
    SDL_WM_SetCaption('Move the Dot', nil);

    if not Load_Files then begin
      WriteLn('Fehler beim Dateien laden !');
      Result := False;
      Exit;
    end;

    Result := True;

    mDot := TDot.Create(120, 120);
    otherDot := TDot.Create(220, 220);
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
        mDot.handle_Input(event);
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

      mDot.move(otherDot.get_rects);

      SDL_FillRect(screen, @screen^.clip_rect, SDL_MapRGB(screen^.format, $FF, $FF, $FF));
      otherDot.Show;
      mDot.Show;

      // Update screen
      if SDL_Flip(screen) = -1 then begin
        WriteLn('Fehler beim Flip !');
        Result := False;
        Exit;
      end;

      WriteLn(fps.getTicks);

      if fps.getTicks < 1000 div frames_per_Second then begin
        SDL_Delay((1000 div frames_per_Second) - fps.getTicks);
      end;
    until quit;
    Result := True;
  end;

  procedure Destroy;
  begin
    fps.Free;
    mDot.Free;
    otherDot.Free;

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
