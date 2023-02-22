
  Type
  PGtkLayoutChild  = ^GtkLayoutChild;
  PGtkLayoutManager  = ^GtkLayoutManager;
  PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


(** unsupported pragma#pragma once*)
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtktypes.h>}
  { Zeile entfernt  }

  { was #define dname def_expr }
  function GTK_TYPE_LAYOUT_CHILD : longint; { return type might be wrong }

  { Zeile entfernt  }
  { Zeile entfernt  }
  {< private > }

  type
    _GtkLayoutChildClass = record
        parent_class : GObjectClass;
      end;

  { Zeile entfernt  }

  function gtk_layout_child_get_layout_manager(layout_child:PGtkLayoutChild):^GtkLayoutManager;

  { Zeile entfernt  }
  function gtk_layout_child_get_child_widget(layout_child:PGtkLayoutChild):^GtkWidget;

  { Zeile entfernt  }
  { was #define dname def_expr }
  function GTK_TYPE_LAYOUT_CHILD : longint; { return type might be wrong }
    begin
      GTK_TYPE_LAYOUT_CHILD:=gtk_layout_child_get_type;
    end;

  function gtk_layout_child_get_layout_manager(layout_child:PGtkLayoutChild):PGtkLayoutManager;
  begin
    { You must implement this function }
  end;
  function gtk_layout_child_get_child_widget(layout_child:PGtkLayoutChild):PGtkWidget;
  begin
    { You must implement this function }
  end;

