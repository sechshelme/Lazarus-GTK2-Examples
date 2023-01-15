program Project1;

uses
  sdl,
  sdl_image;

const
  Screen_Width: integer = 640;
  Screen_Heigth: integer = 480;
  Screen_BPP: integer = 32;

var
  buffer, screen: PSDL_Surface;
  images: array[0..4] of PSDL_Surface;
  quit: boolean = False;

  producerThread, consumerThread: PSDL_Thread;
  bufferlock: PSDL_Mutex;
  canProduce, canConsume: PSDL_Cond;

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

  procedure produce(x, y: integer);
  begin
    SDL_mutexP(bufferlock);
    if buffer <> nil then begin
      SDL_CondWait(canProduce, bufferlock);
    end;
    buffer := images[Random(5)];
    Apply_Surface(x, y, buffer, screen);
    SDL_Flip(screen);
    SDL_mutexV(bufferlock);
    SDL_CondSignal(canConsume);
  end;

  procedure consume(x, y: integer);
  begin
    SDL_mutexP(bufferlock);
    if buffer = nil then begin
      SDL_CondWait(canConsume, bufferlock);
    end;
    Apply_Surface(x, y, buffer, screen);
    buffer := nil;
    SDL_Flip(screen);
    SDL_mutexV(bufferlock);
    SDL_CondSignal(canProduce);
  end;

  function producer(Data: Pointer): integer;
  var
    y: integer = 10;
    i: integer;
  begin
    Randomize;
    for i := 0 to 4 do begin
      SDL_Delay(Random(1000));
      produce(10, y);
      Inc(y, 90);
    end;
    Result := 0;
  end;

  function consumer(Data: Pointer): integer;
  var
    y: integer = 10;
    i: integer;
  begin
    for i := 0 to 4 do begin
      SDL_Delay(Random(1000));
      consume(330, y);
      Inc(y, 90);
    end;
    Result := 0;
  end;

  function Load_Files: boolean;
  begin
    Result := True;
    images[0] := Load_Image('1.png');
    images[1] := Load_Image('2.png');
    images[2] := Load_Image('3.png');
    images[3] := Load_Image('4.png');
    images[4] := Load_Image('5.png');
    if (images[0] = nil) or (images[1] = nil) or (images[2] = nil) or (images[3] = nil) or (images[4] = nil) then begin
      Result := False;
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

    bufferlock := SDL_CreateMutex;

    canProduce := SDL_CreateCond;
    canConsume := SDL_CreateCond;

    // Fenster Titel
    SDL_WM_SetCaption('Producer / Consumer Test', nil);

    if not Load_Files then begin
      WriteLn('Fehler beim Dateien laden !');
      Result := False;
      Exit;
    end;

    Result := True;
  end;

  // Mit der original Funktion geht es nicht.
  // function SDL_CreateThread(fn: PInt; Data: Pointer): PSDL_Thread; cdecl; external SDLLibName;

  function SDL_CreateThread(fn: Pointer; Data: Pointer): PSDL_Thread; cdecl; external SDLLibName;

  function Run: boolean;
  var
    event: TSDL_Event;
    i: integer = 0;
  begin
    SDL_FillRect(screen, @screen^.clip_rect, SDL_MapRGB(@screen^.format, $80, $80, $80));
    SDL_Flip(screen);

    producerThread := SDL_CreateThread(@producer, nil);
    consumerThread := SDL_CreateThread(@consumer, nil);

    SDL_WaitThread(producerThread, i);
    SDL_WaitThread(consumerThread, i);

    repeat
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
    until quit;
    Result := True;
  end;

  procedure Destroy;
  var
    i: integer;
  begin
    SDL_DestroyMutex(bufferlock);

    SDL_DestroyCond(canProduce);
    SDL_DestroyCond(canConsume);

    for i := 0 to Length(images) - 1 do begin
      SDL_FreeSurface(images[i]);
    end;

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
