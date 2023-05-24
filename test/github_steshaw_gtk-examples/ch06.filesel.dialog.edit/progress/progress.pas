unit Progress;

interface

uses
  ctypes,
  SysUtils,
  pango,
  GLib2,
  Gdk2,
  Gtk2;

procedure StartProgress;
procedure UpdateProgress(pos, len: clong);
procedure EndProgress;

implementation

type
  PProgressData = ^TProgressData;

  TProgressData = record
    progressbar, window: PGtkWidget;
    bProgressUP: cint;
    nLastPct: cint;
  end;

var
  pdata: PProgressData = nil;

function CanWindowClose(w: PGtkWidget; Data: pgpointer): gint; cdecl;
begin
  Result := pdata^.bProgressUP;
end;

procedure StartProgress;
var
  Window, table, label1: PGtkWidget;
  adj2: PGtkAdjustment;
  adj: PGtkObject;
begin
  pdata := g_malloc(SizeOf(TProgressData));
  pdata^.nLastPct := -1;
  pdata^.bProgressUP := 1;

  Window := gtk_window_new(GTK_WINDOW_TOPLEVEL);
  pdata^.window := Window;

  gtk_signal_connect(GTK_OBJECT(Window), 'delete_event', GTK_SIGNAL_FUNC(@CanWindowClose), nil);
  gtk_container_set_border_width(GTK_CONTAINER(Window), 10);

  table := gtk_table_new(3, 2, True);
  gtk_container_add(GTK_CONTAINER(Window), table);

  label1 := gtk_label_new('Loading...');
  gtk_table_attach_defaults(GTK_TABLE(table), label1, 0, 2, 0, 1);

//  adj := gtk_adjustment_new(0, 0, 400, 0, 0, 0);
//  pdata^.progressbar := gtk_progress_bar_new_with_adjustment(GTK_ADJUSTMENT(adj));

  adj2 := PGtkAdjustment(gtk_adjustment_new(0, 0, 400, 0, 0, 0));
  pdata^.progressbar := gtk_progress_bar_new_with_adjustment(adj2);
  gtk_table_attach_defaults(GTK_TABLE(table), pdata^.progressbar, 0, 2, 1, 2);

  gtk_widget_show_all(window);
end;


procedure UpdateProgress(pos, len: clong);
var
  pvalue: gfloat;
  pct: cint;
begin
  if len > 0 then begin
    pvalue := gfloat(pos) / gfloat(len);
    pct := Round(pvalue * 100);
    if pdata^.nLastPct <> pct then begin
      gtk_progress_set_percentage(GTK_PROGRESS(pdata^.progressbar), pvalue);
    end;
    while gtk_events_pending <> 0 do begin
      gtk_main_iteration;
    end;
    pdata^.nLastPct := pct;
  end;
end;

procedure EndProgress;
begin
  pdata^.bProgressUP := 0;
  gtk_widget_destroy(pdata^.window);
  g_free(pdata);
  pdata := nil;
end;

end.
