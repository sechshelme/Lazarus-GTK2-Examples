unit DrawArena;

{$mode ObjFPC}{$H+}

interface

uses
  glib2, common_GTK, Classes, Cairo, SysUtils,gtktypes, gtkwidget, gtkdrawingarea;

function Create_DrawArena: PGtkWidget;

implementation

procedure draw_func(drawing_area: PGtkDrawingArea; cr: Pcairo_t; Width: longint; Height: longint; user_data: Tgpointer); cdecl;
var
  y, x: integer;
  pattern: Pcairo_pattern_t;
begin
  for x := 0 to 10 - 1 do begin
    for y := 0 to 10 - 1 do begin
      cairo_rectangle(cr, x * 10.0, y * 10.0, 5, 5);

      pattern := cairo_pattern_create_radial(50, 50, 5, 50, 50, 50);
      cairo_pattern_add_color_stop_rgb(pattern, 0, 0.75, 0.15, 0.99);
      cairo_pattern_add_color_stop_rgb(pattern, 0.9, 1, 1, 1);

      cairo_set_source(cr, pattern);
      cairo_fill(cr);

      cairo_set_font_size(cr, 15);
      cairo_select_font_face(cr, 'Georgia',
        CAIRO_FONT_SLANT_NORMAL, CAIRO_FONT_WEIGHT_BOLD);
      cairo_set_source_rgb(cr, 0, 0, 0);

      cairo_move_to(cr, 10, 25);
      cairo_show_text(cr, 'Hallo');

      cairo_move_to(cr, 10, 75);
      cairo_show_text(cr, 'Wikipedia!');
    end;
  end;
end;

function Create_DrawArena: PGtkWidget;
begin
  Result := gtk_drawing_area_new;
  gtk_drawing_area_set_draw_func(GTK_DRAWING_AREA(Result), @draw_func, nil, nil);
end;


end.
