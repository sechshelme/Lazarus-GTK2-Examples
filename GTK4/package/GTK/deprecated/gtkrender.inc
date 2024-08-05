/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}


procedure gtk_render_check(context: PGtkStyleContext; cr: Pcairo_t; x: Tdouble; y: Tdouble; Width: Tdouble;
  Height: Tdouble); cdecl; external gtklib;
procedure gtk_render_option(context: PGtkStyleContext; cr: Pcairo_t; x: Tdouble; y: Tdouble; Width: Tdouble;
  Height: Tdouble); cdecl; external gtklib;
procedure gtk_render_arrow(context: PGtkStyleContext; cr: Pcairo_t; angle: Tdouble; x: Tdouble; y: Tdouble;
  size: Tdouble); cdecl; external gtklib;
procedure gtk_render_background(context: PGtkStyleContext; cr: Pcairo_t; x: Tdouble; y: Tdouble; Width: Tdouble;
  Height: Tdouble); cdecl; external gtklib;
procedure gtk_render_frame(context: PGtkStyleContext; cr: Pcairo_t; x: Tdouble; y: Tdouble; Width: Tdouble;
  Height: Tdouble); cdecl; external gtklib;
procedure gtk_render_expander(context: PGtkStyleContext; cr: Pcairo_t; x: Tdouble; y: Tdouble; Width: Tdouble;
  Height: Tdouble); cdecl; external gtklib;
procedure gtk_render_focus(context: PGtkStyleContext; cr: Pcairo_t; x: Tdouble; y: Tdouble; Width: Tdouble;
  Height: Tdouble); cdecl; external gtklib;
procedure gtk_render_layout(context: PGtkStyleContext; cr: Pcairo_t; x: Tdouble; y: Tdouble; layout: PPangoLayout); cdecl; external gtklib;
procedure gtk_render_line(context: PGtkStyleContext; cr: Pcairo_t; x0: Tdouble; y0: Tdouble; x1: Tdouble;
  y1: Tdouble); cdecl; external gtklib;
procedure gtk_render_handle(context: PGtkStyleContext; cr: Pcairo_t; x: Tdouble; y: Tdouble; Width: Tdouble;
  Height: Tdouble); cdecl; external gtklib;
procedure gtk_render_activity(context: PGtkStyleContext; cr: Pcairo_t; x: Tdouble; y: Tdouble; Width: Tdouble;
  Height: Tdouble); cdecl; external gtklib;
procedure gtk_render_icon(context: PGtkStyleContext; cr: Pcairo_t; texture: PGdkTexture; x: Tdouble; y: Tdouble); cdecl; external gtklib;
procedure gtk_snapshot_render_background(snapshot: PGtkSnapshot; context: PGtkStyleContext; x: Tdouble; y: Tdouble; Width: Tdouble;
  Height: Tdouble); cdecl; external gtklib;
procedure gtk_snapshot_render_frame(snapshot: PGtkSnapshot; context: PGtkStyleContext; x: Tdouble; y: Tdouble; Width: Tdouble;
  Height: Tdouble); cdecl; external gtklib;
procedure gtk_snapshot_render_focus(snapshot: PGtkSnapshot; context: PGtkStyleContext; x: Tdouble; y: Tdouble; Width: Tdouble;
  Height: Tdouble); cdecl; external gtklib;
procedure gtk_snapshot_render_layout(snapshot: PGtkSnapshot; context: PGtkStyleContext; x: Tdouble; y: Tdouble; layout: PPangoLayout); cdecl; external gtklib;
procedure gtk_snapshot_render_insertion_cursor(snapshot: PGtkSnapshot; context: PGtkStyleContext; x: Tdouble; y: Tdouble; layout: PPangoLayout;
  index: longint; direction: TPangoDirection); cdecl; external gtklib;

{$ENDIF read_interface}


{$IFDEF read_implementation}


{$ENDIF read_implementation}
