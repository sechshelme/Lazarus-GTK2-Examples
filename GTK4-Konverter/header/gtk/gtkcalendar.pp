
  Type
  PGDateTime  = ^GDateTime;
  PGtkCalendar  = ^GtkCalendar;
  PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { GTK - The GIMP Toolkit
   * Copyright (C) 1995-1997 Peter Mattis, Spencer Kimball and Josh MacDonald
   *
   * GTK Calendar Widget
   * Copyright (C) 1998 Cesar Miquel and Shawn T. Amundson
   *
   * This library is free software; you can redistribute it and/or
   * modify it under the terms of the GNU Lesser General Public
   * License as published by the Free Software Foundation; either
   * version 2 of the License, or (at your option) any later version.
   *
   * This library is distributed in the hope that it will be useful,
   * but WITHOUT ANY WARRANTY; without even the implied warranty of
   * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	 See the GNU
   * Lesser General Public License for more details.
   *
   * You should have received a copy of the GNU Lesser General Public
   * License along with this library. If not, see <http://www.gnu.org/licenses/>.
    }
  {
   * Modified by the GTK+ Team and others 1997-2000.  See the AUTHORS
   * file for a list of people on the GTK+ Team.  See the ChangeLog
   * files for a list of changes.  These files are distributed with
   * GTK+ at ftp://ftp.gtk.org/pub/gtk/.
    }
{$ifndef __GTK_CALENDAR_H__}
{$define __GTK_CALENDAR_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwidget.h>}
  { Zeile entfernt  }

  { was #define dname def_expr }
  function GTK_TYPE_CALENDAR : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_CALENDAR(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_CALENDAR(obj : longint) : longint;  


  type
    _GtkCalendar = GtkCalendar;
  { Zeile entfernt  }

  function gtk_calendar_get_type:GType;

  { Zeile entfernt  }
  function gtk_calendar_new:^GtkWidget;

  { Zeile entfernt  }
  procedure gtk_calendar_select_day(self:PGtkCalendar; date:PGDateTime);

  { Zeile entfernt  }
  procedure gtk_calendar_mark_day(calendar:PGtkCalendar; day:guint);

  { Zeile entfernt  }
  procedure gtk_calendar_unmark_day(calendar:PGtkCalendar; day:guint);

  { Zeile entfernt  }
  procedure gtk_calendar_clear_marks(calendar:PGtkCalendar);

  { Zeile entfernt  }
  procedure gtk_calendar_set_show_week_numbers(self:PGtkCalendar; value:gboolean);

  { Zeile entfernt  }
  function gtk_calendar_get_show_week_numbers(self:PGtkCalendar):gboolean;

  { Zeile entfernt  }
  procedure gtk_calendar_set_show_heading(self:PGtkCalendar; value:gboolean);

  { Zeile entfernt  }
  function gtk_calendar_get_show_heading(self:PGtkCalendar):gboolean;

  { Zeile entfernt  }
  procedure gtk_calendar_set_show_day_names(self:PGtkCalendar; value:gboolean);

  { Zeile entfernt  }
  function gtk_calendar_get_show_day_names(self:PGtkCalendar):gboolean;

  { Zeile entfernt  }
  function gtk_calendar_get_date(self:PGtkCalendar):^GDateTime;

  { Zeile entfernt  }
  function gtk_calendar_get_day_is_marked(calendar:PGtkCalendar; day:guint):gboolean;

  { Zeile entfernt  }
{$endif}
  { __GTK_CALENDAR_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_CALENDAR : longint; { return type might be wrong }
    begin
      GTK_TYPE_CALENDAR:=gtk_calendar_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_CALENDAR(obj : longint) : longint;
  begin
    GTK_CALENDAR:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_CALENDAR,GtkCalendar);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_CALENDAR(obj : longint) : longint;
  begin
    GTK_IS_CALENDAR:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_CALENDAR);
  end;

  function gtk_calendar_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gtk_calendar_new:PGtkWidget;
  begin
    { You must implement this function }
  end;
  procedure gtk_calendar_select_day(self:PGtkCalendar; date:PGDateTime);
  begin
    { You must implement this function }
  end;
  procedure gtk_calendar_mark_day(calendar:PGtkCalendar; day:guint);
  begin
    { You must implement this function }
  end;
  procedure gtk_calendar_unmark_day(calendar:PGtkCalendar; day:guint);
  begin
    { You must implement this function }
  end;
  procedure gtk_calendar_clear_marks(calendar:PGtkCalendar);
  begin
    { You must implement this function }
  end;
  procedure gtk_calendar_set_show_week_numbers(self:PGtkCalendar; value:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_calendar_get_show_week_numbers(self:PGtkCalendar):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_calendar_set_show_heading(self:PGtkCalendar; value:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_calendar_get_show_heading(self:PGtkCalendar):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_calendar_set_show_day_names(self:PGtkCalendar; value:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_calendar_get_show_day_names(self:PGtkCalendar):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_calendar_get_date(self:PGtkCalendar):PGDateTime;
  begin
    { You must implement this function }
  end;
  function gtk_calendar_get_day_is_marked(calendar:PGtkCalendar; day:guint):gboolean;
  begin
    { You must implement this function }
  end;

