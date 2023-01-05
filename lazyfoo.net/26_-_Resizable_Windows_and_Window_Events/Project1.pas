program Project1;

uses
  sdl,
  sdl_image;

const
  Screen_Width: integer = 640;
  Screen_Heigth: integer = 480;
  Screen_BPP: integer = 32;

var
  testing, screen: PSDL_Surface;

type

  { TWindow }

  TWindow = class(TObject)
  private
    windowed, windowOk: boolean;
  public
    constructor Create;
    procedure handle_events(event: TSDL_Event);
    procedure toggle_fullscreen;
    function error: boolean;
  end;

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

    // Load Images
    testing := Load_Image('window.png');
    if testing = nil then begin
      Result := False;
      Exit;
    end;
  end;

  { TWindow }

  constructor TWindow.Create;
  begin
    // Screen Setup
    screen := SDL_SetVideoMode(Screen_Width, Screen_Heigth, Screen_BPP, SDL_SWSURFACE or SDL_RESIZABLE);
    if screen = nil then begin
      Writeln('Kann kein Fenster öffnen: ', SDL_GetError);
      windowOk := False;
      Exit;
    end else begin
      windowOk := True;
    end;

    // Fenster Titel
    SDL_WM_SetCaption('Tasten-Test', nil);

    windowed := True;
  end;

  procedure TWindow.handle_events(event: TSDL_Event);
  begin
    if not windowOk then begin
      Exit;
    end;
    case event.type_ of
      SDL_VIDEORESIZE: begin
        screen := SDL_SetVideoMode(event.resize.w, event.resize.h, Screen_BPP, SDL_SWSURFACE or SDL_RESIZABLE);
        if screen = nil then begin
          windowOk := False;
          Exit;
        end;
      end;
      SDL_KEYDOWN: begin
        case event.key.keysym.sym of
          SDLK_RETURN: begin
            toggle_fullscreen;
          end;
        end;
      end;
      SDL_ACTIVEEVENT: begin
        case event.active.state of
          SDL_APPACTIVE: begin
            if event.active.gain = 0 then begin
              SDL_WM_SetCaption('Window Event Test: Iconified', nil);
            end else begin
              SDL_WM_SetCaption('Window Event Test', nil);
            end;
          end;
          SDL_APPMOUSEFOCUS: begin
            if event.active.gain = 0 then begin
              SDL_WM_SetCaption('Window Event Test: Mouse Focus Lost', nil);
            end else begin
              SDL_WM_SetCaption('Window Event Test', nil);
            end;
          end;
        end;
      end;
      SDL_VIDEOEXPOSE: begin
        SDL_Flip(screen);
      end;
    end;
  end;

  procedure TWindow.toggle_fullscreen;
  begin
    if windowed then  begin
      screen := SDL_SetVideoMode(Screen_Width, Screen_Heigth, Screen_BPP, SDL_SWSURFACE or SDL_RESIZABLE or SDL_FULLSCREEN);
      if screen = nil then begin
        Writeln('Kann kein Fenster öffnen: ', SDL_GetError);
        windowOk := False;
        Exit;
      end;
      windowed := False;
    end else begin
      screen := SDL_SetVideoMode(Screen_Width, Screen_Heigth, Screen_BPP, SDL_SWSURFACE or SDL_RESIZABLE);
      if screen = nil then begin
        Writeln('Kann kein Fenster öffnen: ', SDL_GetError);
        windowOk := False;
        Exit;
      end;
      windowed := True;
    end;
  end;

  function TWindow.error: boolean;
  begin
    Result := not windowOk;
  end;

var
  myWindow: TWindow;

  function Create: boolean;
  begin
    Result := True;

    // Start SDL
    if SDL_Init(SDL_INIT_EVERYTHING) < 0 then begin
      Writeln('Kann SDL nicht öffnen: ', SDL_GetError);
      Result := False;
      Exit;
    end;

    myWindow := TWindow.Create;
    if myWindow.error then begin
      WriteLn('Fehler beim Window erzeugen !');
      Result := False;
      Exit;
    end;

    if not Load_Files then begin
      Result := False;
      Exit;
    end;
  end;

  function Run: boolean;
  var
    quit: boolean = False;
    event: TSDL_Event;
  begin
    Result := True;

    repeat
      while SDL_PollEvent(@event) <> 0 do begin
        myWindow.handle_events(event);
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
      if myWindow.error then begin
        WriteLn('Fehler beim Window erzeugen !');
        Result := False;
        Exit;
      end;

      SDL_FillRect(screen, @screen^.clip_rect, SDL_MapRGB(screen^.format, $FF, $FF, $FF));
      Apply_Surface((screen^.w - testing^.w) div 2, (screen^.h - testing^.h) div 2, testing, screen);
      SDL_Flip(screen);
    until quit;
    Result := True;
  end;

  procedure Destroy;
  begin
    // Images freigeben
    myWindow.Free;

    SDL_FreeSurface(testing);

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
