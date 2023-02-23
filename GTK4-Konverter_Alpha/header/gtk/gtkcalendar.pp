
unit gtkcalendar;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkcalendar.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkcalendar.h
    -p
    -T
    -S
    -d
    -c
}

{ Pointers to basic pascal types, inserted by h2pas conversion program.}
Type
  PLongint  = ^Longint;
  PSmallInt = ^SmallInt;
  PByte     = ^Byte;
  PWord     = ^Word;
  PDWord    = ^DWord;
  PDouble   = ^Double;

Type
PGDateTime  = ^GDateTime;
PGtkCalendar  = ^GtkCalendar;
PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef __GTK_CALENDAR_H__}
{$define __GTK_CALENDAR_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwidget.h>}


function GTK_TYPE_CALENDAR : longint; { return type might be wrong }

function GTK_CALENDAR(obj : longint) : longint;

function GTK_IS_CALENDAR(obj : longint) : longint;

type


function gtk_calendar_get_type:TGType;cdecl;external;

function gtk_calendar_new:PGtkWidget;cdecl;external;

procedure gtk_calendar_select_day(self:PGtkCalendar; date:PGDateTime);cdecl;external;

procedure gtk_calendar_mark_day(calendar:PGtkCalendar; day:Tguint);cdecl;external;

procedure gtk_calendar_unmark_day(calendar:PGtkCalendar; day:Tguint);cdecl;external;

procedure gtk_calendar_clear_marks(calendar:PGtkCalendar);cdecl;external;

procedure gtk_calendar_set_show_week_numbers(self:PGtkCalendar; value:Tgboolean);cdecl;external;

function gtk_calendar_get_show_week_numbers(self:PGtkCalendar):Tgboolean;cdecl;external;

procedure gtk_calendar_set_show_heading(self:PGtkCalendar; value:Tgboolean);cdecl;external;

function gtk_calendar_get_show_heading(self:PGtkCalendar):Tgboolean;cdecl;external;

procedure gtk_calendar_set_show_day_names(self:PGtkCalendar; value:Tgboolean);cdecl;external;

function gtk_calendar_get_show_day_names(self:PGtkCalendar):Tgboolean;cdecl;external;

function gtk_calendar_get_date(self:PGtkCalendar):PGDateTime;cdecl;external;

function gtk_calendar_get_day_is_marked(calendar:PGtkCalendar; day:Tguint):Tgboolean;cdecl;external;

{$endif}


implementation

function GTK_TYPE_CALENDAR : longint; { return type might be wrong }
  begin
    GTK_TYPE_CALENDAR:=gtk_calendar_get_type;
  end;

function GTK_CALENDAR(obj : longint) : longint;
begin
  GTK_CALENDAR:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_CALENDAR,GtkCalendar);
end;

function GTK_IS_CALENDAR(obj : longint) : longint;
begin
  GTK_IS_CALENDAR:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_CALENDAR);
end;


end.
