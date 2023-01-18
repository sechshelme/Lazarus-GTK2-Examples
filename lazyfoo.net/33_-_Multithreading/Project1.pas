program Project1;

uses
  ctypes,
  sdl,
  sdl_image;

const
  Screen_Width: integer = 640;
  Screen_Heigth: integer = 480;
  Screen_BPP: integer = 32;

var
  image, screen: PSDL_Surface;
  thread: PSDL_Thread;
  quit: boolean = False;

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

  procedure Apply_Surface(x, y: integer; Source, destination: PSDL_Surface);
  var
    offset: SDL_Rect;
  begin
    offset.x := x;
    offset.y := y;
    SDL_BlitSurface(Source, nil, destination, @offset);
  end;

  function Load_Files: boolean;
  begin
    Result := True;

    // Load Images
    image := Load_Image('image.png');
    if image = nil then begin
      Result := False;
      Exit;
    end;
  end;

  function my_thread(Data: Pointer): integer; cdecl;
  begin
    Result := 1234;
    while not quit do begin
      SDL_WM_SetCaption('Thread is running', nil);
      if quit then begin
        exit;
      end;
      SDL_Delay(250);
      SDL_WM_SetCaption('Thread is running.', nil);
      if quit then begin
        exit;
      end;
      SDL_Delay(250);
      SDL_WM_SetCaption('Thread is running..', nil);
      if quit then begin
        exit;
      end;
      SDL_Delay(250);
      SDL_WM_SetCaption('Thread is running...', nil);
      if quit then begin
        exit;
      end;
      SDL_Delay(250);
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
    SDL_WM_SetCaption('Thread test', nil);

    if not Load_Files then begin
      WriteLn('Fehler beim Dateien laden !');
      Result := False;
      Exit;
    end;

    Result := True;
  end;

  // Mit der original Funktion geht es nicht.
  // function SDL_CreateThread(fn: PInt; Data: Pointer): PSDL_Thread; cdecl; external SDLLibName;


  function SDL_CreateThread(fn: Pointer; Data: Pointer): PSDL_Thread; cdecl; external SDLLibName      ;


  function Run: boolean;
  var
    event: TSDL_Event;
    r: TSDL_Rect;
    res: cint;
  begin
    thread := SDL_CreateThread(@my_thread, nil);
    repeat

      Apply_Surface(0, 0, image, screen);
      SDL_Flip(screen);

      while SDL_PollEvent(@event) <> 0 do begin
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

      r.x := 10;
      r.y := 10;
      r.w := 100;
      r.h := 100;
      SDL_FillRect(screen, @r, Random($FFFFFF));

      //      WriteLn('flip');
      if SDL_Flip(screen) = -1 then begin
        WriteLn('Flip Error !');
        Result := False;
        Exit;
      end;
    until quit;
    SDL_WaitThread(thread, res);
    WriteLn(res);
    halt;
    SDL_Delay(300);
    Result := True;
  end;

  procedure Destroy;
  begin
    SDL_KillThread(thread);

    // Images freigeben
    SDL_FreeSurface(image);

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
