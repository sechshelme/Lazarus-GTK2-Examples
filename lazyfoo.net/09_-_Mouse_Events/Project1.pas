program Project1;

uses
  sdl,
  sdl_image,
  SDLButton;

const
  Screen_Width: integer = 640;
  Screen_Heigth: integer = 480;
  Screen_BPP: integer = 32;

  clips: array[0..3] of SDL_Rect = (
    (x: 0; y: 0; w: 320; h: 240),
    (x: 320; y: 0; w: 320; h: 240),
    (x: 0; y: 240; w: 320; h: 240),
    (x: 320; y: 240; w: 320; h: 240));

type
  TSDLButton = class(TObject)
  private
    box: TSDL_Rect;
    clip: PSDL_Rect;
  public
    constructor Create(x, y, w, h: integer);
    procedure HandleEvent(event: TSDL_Event);
    procedure Show;
  end;

var
  buttonSheet, screen: PSDL_Surface;
  Button: TSDLButton;

  procedure Apply_Surface(x, y: integer; Source, destination: PSDL_Surface; clip: PSDL_Rect = nil);
  var
    offset: SDL_Rect;
  begin
    offset.x := x;
    offset.y := y;
    SDL_BlitSurface(Source, clip, destination, @offset);
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

  function Load_Files: boolean;
  begin
    Result := True;
  end;

  function Create: boolean;
  begin
    Result := True;

    // Start SDL
    if SDL_Init(SDL_INIT_EVERYTHING) < 0 then begin
      Writeln('Kann SDL nicht öffnen: ', SDL_GetError);
      Result := False;
      Exit;
    end;

    // Screen Setup
    screen := SDL_SetVideoMode(Screen_Width, Screen_Heigth, Screen_BPP, SDL_SWSURFACE);
    if screen = nil then begin
      Writeln('Kann kein Fenster öffnen: ', SDL_GetError);
      Result := False;
      Exit;
    end;

    buttonSheet := Load_Image('button.png');

    // Fenster Titel
    SDL_WM_SetCaption('Tasten-Test', nil);

    if not Load_Files then begin
      Result := False;
      Exit;
    end;

    Button := TSDLButton.Create(170, 120, 320, 240);
  end;

  function Run: boolean;
  var
    quit: boolean = False;
    event: TSDL_Event;
  begin
    Result := False;

    // Copy Image auf Screen

    repeat
      if SDL_PollEvent(@event) <> 0 then begin
        Button.HandleEvent(event);
        case event.type_ of
          SDL_QUITEV: begin
            quit := True;
          end;
        end;
      end;
      SDL_FillRect(screen, @screen^.clip_rect, $FF);
      Button.Show;
      SDL_Flip(screen);
    until quit;
    Result := True;
  end;

  procedure Destroy;
  begin
    Button.Free;

    SDL_FreeSurface(screen);
    SDL_FreeSurface(buttonSheet);

    SDL_Quit;
  end;


  { TSDLButton }

  constructor TSDLButton.Create(x, y, w, h: integer);
  begin
    box.x := x;
    box.y := y;
    box.w := w;
    box.h := h;
    clip := @clips[1];
  end;

  procedure TSDLButton.HandleEvent(event: TSDL_Event);
  var
    x, y: uint16;
  begin
    case event.type_ of
      SDL_MOUSEMOTION: begin
        x := event.motion.x;
        y := event.motion.y;
        if (x > box.x) and (x < box.x + box.w) and (y > box.y) and (y < box.y + box.h) then begin
          clip := @clips[0];
        end else begin
          clip := @clips[1];
        end;
      end;
      SDL_MOUSEBUTTONDOWN: begin
        if event.button.button = SDL_BUTTON_LEFT then begin
          x := event.button.x;
          y := event.button.y;
          if (x > box.x) and (x < box.x + box.w) and (y > box.y) and (y < box.y + box.h) then begin
            clip := @clips[2];
          end;
        end;
      end;
      SDL_MOUSEBUTTONUP: begin
        if event.button.button = SDL_BUTTON_LEFT then begin
          x := event.button.x;
          y := event.button.y;
          if (x > box.x) and (x < box.x + box.w) and (y > box.y) and (y < box.y + box.h) then begin
            clip := @clips[3];
          end;
        end;
      end;
    end;
  end;

  procedure TSDLButton.Show;
  begin
    Apply_Surface(box.x, box.y, buttonSheet, screen, clip);
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
