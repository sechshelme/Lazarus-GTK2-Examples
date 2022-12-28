unit SDLButton;

interface

uses
  sdl,
  sdl_ttf,
  sdl_image;

type

  { TSDLButton }

  TSDLButton = class(TObject)
  private
    box: TSDL_Rect;
    clip: PSDL_Rect;
  public
    constructor Create(x, y, w, h: integer);
    procedure HandleEvent(event: TSDL_Event);
    procedure Show;
  end;

const
  clips: array[0..3] of SDL_Rect = (
    (x: 0; y: 0; w: 320; h: 240),
    (x: 320; y: 0; w: 320; h: 240),
    (x: 0; y: 240; w: 320; h: 240),
    (x: 320; y: 240; w: 320; h: 240));

implementation

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
        clip := @clips[2];
      end;
      end;
    end;
  end;
end;

procedure TSDLButton.Show;
begin

end;

end.
