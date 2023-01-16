program Project1;

uses
  sdl;

const
  Screen_Width: integer = 1280;
  Screen_Heigth: integer = 960;
  Screen_BPP: integer = 32;

  ThreadCount: integer = 0;

  o: single = 1.2;
  u: single = -1.2;
  l: single = -2.2;
  r: single = 1.2;

type
  PThread = ^TThread;

  TThread = record
    r: TSDL_Rect;
    Nr: integer;
    thread: PSDL_Thread;
  end;

var
  screen: PSDL_Surface;
  quit: boolean = False;
  Counter: integer = -1;

  thread: array of TThread;

  procedure put_pixel32(surface: PSDL_Surface; x, y: integer; pixel: uint32);
  var
    pixels: PUInt32;
  begin
    pixels := surface^.pixels;
    pixels[y * surface^.w + x] := pixel;
  end;

  function my_thread(Data: Pointer): integer; cdecl;
  const
    interation = 10000;
  var
    Para: TThread;
    Farbe, x, y: word;
    SqrX, SqrY, XPos, YPos, XStep, YStep, creal, cimag, links, rechts, oben, unten: single;
  begin
    Inc(counter);
    Para := PThread(Data)^;
    links := l;
    rechts := r;
    oben := o;
    unten := u;
    XStep := (rechts - links) / (Screen_Width);
    YStep := (oben - unten) / Screen_Heigth;
    creal := links;
    for x := 0 to Screen_Width - 1 do begin
      if x mod ThreadCount = Para.Nr then begin
        cimag := unten;
        for y := 0 to Screen_Heigth - 1 do begin
          farbe := 0;
          XPos := 0;
          YPos := 0;
          repeat
            SqrX := Sqr(XPos);
            SqrY := Sqr(YPos);
            YPos := 2 * XPos * YPos + cimag;
            XPos := SqrX - SqrY + creal;
            Inc(farbe);
          until (SqrX + SqrY > 8) or (farbe > interation);
          if Farbe > interation then begin
            farbe := 0;
          end;
          if quit then begin
            Exit;
          end;

          put_pixel32(screen, x, y, Farbe * 100);
          cimag := cimag + YStep;
        end;
      end;
      creal := creal + XStep;
    end;
    Dec(counter);
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

    Result := True;

  end;

  // Mit der original Funktion geht es nicht.
  // function SDL_CreateThread(fn: PInt; Data: Pointer): PSDL_Thread; cdecl; external SDLLibName;

// function SDL_CreateThread(fn: Pointer; Data: Pointer): PSDL_Thread; cdecl; external SDLLibName;
function SDL_CreateThread(fn: Pointer; Data: Pointer): PSDL_Thread; cdecl; external 'SDL';

  function Run: boolean;
  var
    event: TSDL_Event;
    i, i2: integer;
    calc: uint32;
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
            end;
            if Counter = -1 then  begin
              for i := 0 to ThreadCount - 1 do begin
                SDL_KillThread(thread[i].thread);
              end;
              rect.x := 0;
              rect.y := 0;
              rect.w := Screen_Width;
              rect.h := Screen_Heigth;
              SDL_FillRect(screen, @rect, 0);
              SDL_Flip(screen);
              case event.key.keysym.sym of
                SDLK_1: begin
                  ThreadCount := 1;
                end;
                SDLK_2: begin
                  ThreadCount := 2;
                end;
                SDLK_3: begin
                  ThreadCount := 4;
                end;
                SDLK_4: begin
                  ThreadCount := 8;
                end;
                SDLK_5: begin
                  ThreadCount := 16;
                end;
                SDLK_6: begin
                  ThreadCount := 32;
                end;
                SDLK_7: begin
                  ThreadCount := 64;
                end;
                SDLK_8: begin
                  ThreadCount := 128;
                end;
                SDLK_9: begin
                  ThreadCount := 256;
                end;
                SDLK_0: begin
                  ThreadCount := 512;
                end;
              end;
              WriteLn('Thread Count: ', ThreadCount);
              SetLength(thread, ThreadCount);
              counter := 0;
              calc := SDL_GetTicks;
              for i := 0 to ThreadCount - 1 do begin
                thread[i].r.x := i * 110 + 10;
                thread[i].r.y := 10;
                thread[i].r.w := 100;
                thread[i].r.h := 100;
                thread[i].Nr := i;
                thread[i].thread := SDL_CreateThread(@my_thread, @thread[i]);
              end;
            end;
          end;
          SDL_QUITEV: begin
            quit := True;
          end;
        end;
      end;
      SDL_Delay(100);

      if SDL_Flip(screen) = -1 then begin
        WriteLn('Flip Error !');
        Result := False;
        Exit;
      end;

      if counter = 0 then begin
        counter := -1;
        WriteLn('Calc Time: ', (SDL_GetTicks - calc) / 1000: 10: 3);
      end;
    until quit;

    for i := 0 to ThreadCount - 1 do begin
//      SDL_WaitThread(thread[i].thread, i2);
    end;


//    SDL_Delay(100);
    Result := True;
  end;

  procedure Destroy;
  var
    i: integer;
  begin
    for i := 0 to ThreadCount - 1 do begin
      SDL_KillThread(thread[i].thread);
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
