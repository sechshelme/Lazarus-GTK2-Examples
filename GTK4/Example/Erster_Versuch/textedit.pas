unit TextEdit;


interface

uses
  glib2, common_GTK, gtkwidget, gtktypes, gtktextview, gtktextiter, gtktextbuffer;

function Create_TextView: PGtkWidget;

implementation

procedure backspace(self: PGtkTextView; user_data: gpointer);
var
  buf: PGtkTextBuffer;
  pc: PChar;
  start, ende: TGtkTextIter;
begin
  g_print('backspace'#10);
  buf := gtk_text_view_get_buffer(GTK_TEXT_VIEW(self));
  gtk_text_buffer_get_bounds(buf, @start, @ende);

  pc := gtk_text_buffer_get_text(buf, @start, @ende, True);
  WriteLn(pc);
  g_free(pc);
end;

procedure move_cursor(self: PGtkTextView; user_data: gpointer);
begin
  g_print('move'#10);
end;



function Create_TextView: PGtkWidget;
var
  buf: PGtkTextBuffer;
begin
  Result := gtk_text_view_new;
  buf := gtk_text_view_get_buffer(GTK_TEXT_VIEW(Result));
  gtk_text_buffer_set_text(buf, 'Hello World !'#10'Hallo Welt !', -1);
  g_signal_connect(Result, 'backspace', G_CALLBACK(@backspace), nil);
  g_signal_connect(Result, 'move-cursor', G_CALLBACK(@move_cursor), nil);

end;

end.
