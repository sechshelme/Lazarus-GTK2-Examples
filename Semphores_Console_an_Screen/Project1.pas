program Project1;

uses
  sdl;
// Mit der original Funktion geht es nicht.
// function SDL_CreateThread(fn: PInt; Data: Pointer): PSDL_Thread; cdecl; external SDLLibName;

  function SDL_CreateThread(fn: Pointer; Data: Pointer): PSDL_Thread; cdecl; external SDLLibName;
var
  videoLock, writeLock: PSDL_Sem;
  inPaint:Boolean;

  function WriteThread1(p: Pointer): integer;
  begin
    while True do begin
      SDL_SemWait(writeLock);
      WriteLn('0');
      SDL_SemPost(writeLock);
    end;
    Result := 0;
  end;

  function WriteThread2(p: Pointer): integer;
  begin
    while True do begin
      SDL_SemWait(writeLock);
      if inPaint then WriteLn('Write und Paint gehlt gleichzeitig');
      WriteLn('1');
      SDL_SemPost(writeLock);
    end;
    Result := 0;
  end;

  function thread1(p: Pointer): integer;
  var
    rect: TSDL_Rect;
    s: PSDL_Surface;
  begin
    rect.x := 100;
    rect.y := 100;
    rect.w := 10;
    rect.h := 10;
    while True do begin
      s := PSDL_Surface(p);
      rect.x := 1 + Random(630);
      rect.y := 1 + Random(470);
      SDL_FillRect(s, @rect, SDL_MapRGB(s^.format, $FF, $00, $00));
      SDL_SemWait(videoLock);
      inPaint:=True;
      SDL_UpdateRect(s, rect.x, rect.y, rect.w, rect.h);
      inPaint:=False;
      SDL_SemPost(videoLock);
      //      SDL_Delay(1);
    end;
    Result := 0;
  end;

  function thread2(p: Pointer): integer;
  var
    rect: TSDL_Rect;
    s: PSDL_Surface;
  begin
    rect.x := 100;
    rect.y := 100;
    rect.w := 10;
    rect.h := 10;
    while True do begin
      s := PSDL_Surface(p);
      rect.x := 1 + Random(630);
      rect.y := 1 + Random(470);
      SDL_FillRect(s, @rect, SDL_MapRGB(s^.format, $00, $FF, $00));

      SDL_SemWait(videoLock);
      if inPaint then WriteLn('Die darf nie kommen !');
      SDL_UpdateRect(s, rect.x, rect.y, rect.w, rect.h);
      SDL_SemPost(videoLock);
      //    SDL_Delay(1);
    end;
    Result := 0;
  end;

var
  screen: PSDL_Surface;
  t1, t2, w1, w2: PSDL_Thread;
  e: TSDL_Event;
  quit: boolean = False;
begin
  if SDL_Init(SDL_INIT_VIDEO) = -1 then begin
    WriteLn('Kann SDL nicht inizialisieren:', SDL_GetError);
    Halt(1);
  end;
  screen := SDL_SetVideoMode(640, 480, 16, SDL_SWSURFACE);
  if screen = nil then begin
    WriteLn('Video Modus kann nicht eingerichtet werden: ', SDL_GetError);
    Halt(1);
  end;
  videoLock := SDL_CreateSemaphore(1);
  writeLock := SDL_CreateSemaphore(1);
  t1 := SDL_CreateThread(@thread1, screen);
  t2 := SDL_CreateThread(@thread2, screen);
  w1 := SDL_CreateThread(@WriteThread1, screen);
  w2 := SDL_CreateThread(@WriteThread2, screen);
  while (SDL_WaitEvent(@e) <> 0) and (not quit) do begin
    case e.type_ of
      SDL_KEYDOWN: begin
        case e.key.keysym.sym of
          SDLK_ESCAPE: begin
            //SDL_KillThread(t1);
            //SDL_KillThread(t2);
            //SDL_KillThread(w1);
            //SDL_KillThread(w2);
            quit := True;
          end;
        end;
      end;
    end;
  end;
  halt;
  SDL_DestroySemaphore(videoLock);
  SDL_DestroySemaphore(writeLock);
  SDL_Quit;
end.
