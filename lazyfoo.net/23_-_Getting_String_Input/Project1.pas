program Project1;

uses
  sdl,
  sdl_ttf,
  sdl_image;

const
  Screen_Width: integer = 640;
  Screen_Heigth: integer = 480;
  Screen_BPP: integer = 32;

  textColor: TSDL_Color = (r: $00; g: $FF; b: $00; unused: $00);

type

  { StringInput }

  TStringInput = class(TObject)
  private
    str: string;
    Text: PSDL_Surface;
  public
    constructor Create;
    destructor Destroy; override;
    procedure handle_input(event: TSDL_Event);
    procedure show_centred;
  end;

var
  message, background, screen: PSDL_Surface;
  font: PTTF_Font;
  Name: TStringInput;

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
    background := Load_Image('background.png');
    if background = nil then begin
      Result := False;
      Exit;
    end;

    // Lade Schrift
    font := TTF_OpenFont('font.ttf', 28);
    if font = nil then begin
      WriteLn('Kann Schrift nicht laden');
      Result := False;
      Exit;
    end;

  end;

  { StringInput }

  constructor TStringInput.Create;
  begin
    inherited Create;
    SDL_EnableUNICODE(SDL_ENABLE);
  end;

  destructor TStringInput.Destroy;
  begin
    SDL_FreeSurface(Text);
    SDL_EnableUNICODE(SDL_DISABLE);
    inherited Destroy;
  end;

  procedure TStringInput.handle_input(event: TSDL_Event);
  var
    temp: string;
  begin
    case event.type_ of
      SDL_KEYDOWN: begin
        temp := str;
        case event.key.keysym.unicode of
          32..126: begin
            str += char(event.key.keysym.unicode);
          end;
          SDLK_BACKSPACE: begin
            Delete(str, Length(str), 1);
          end;
        end;
        WriteLn(str);
        if str <> temp then begin
          SDL_FreeSurface(Text);
          Text := TTF_RenderText_Solid(font, PChar(str), textColor);
        end;
      end;
    end;
  end;

  procedure TStringInput.show_centred;
  begin
    if Text <> nil then  begin
      Apply_Surface((Screen_Width - Text^.w) div 2, (Screen_Heigth - Text^.h) div 2, Text, screen);
    end;
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

    // TTF Font inizialisieren
    if TTF_Init = -1 then begin
      WriteLn('Kann Font nicht inizialisieren');
      Result := False;
      Exit;
    end;

    if not Load_Files then begin
      Result := False;
      Exit;
    end;

    // Fenster Titel
    SDL_WM_SetCaption('Tasten-Test', nil);

    Name := tstringinput.Create;
  end;

  function Run: boolean;
  var
    quit: boolean = False;
    event: TSDL_Event;
    nameEntred: boolean;
  begin
    Result := True;

    // Copy Image auf Screen
    Apply_Surface(0, 0, background, screen);
    SDL_Flip(screen);

    message := TTF_RenderText_Solid(font, 'New High Score! Enter Name: ', textColor);

    repeat
      while SDL_PollEvent(@Event) <> 0 do begin
        if nameEntred then begin
          Name.handle_input(event);
          case event.type_ of
            SDL_KEYDOWN: begin
              case event.key.keysym.sym of
                SDLK_ESCAPE: begin
                  quit := True;
                end;
                SDLK_RETURN: begin
                  nameEntred := True;
                  SDL_FreeSurface(message);
                  message := TTF_RenderText_Solid(font, 'Rank: 1st', textColor);
                end;
              end;
            end;
            SDL_QUITEV: begin
              quit := True;
            end;
          end;
        end;
      end;

      Apply_Surface(0, 0, background, screen);
      Apply_Surface((Screen_Width - message^.w) div 2, (Screen_Heigth div 2 - message^.h) div 2, message, screen);
      Name.show_centred;
      WriteLn('flip');
      SDL_Flip(screen);
    until quit;
    Result := True;
  end;

  procedure Destroy;
  begin
    // Images freigeben
    SDL_FreeSurface(background);
    SDL_FreeSurface(message);

    Name.Free;

    // SDL beenden
    TTF_CloseFont(font);
    TTF_Quit;

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
