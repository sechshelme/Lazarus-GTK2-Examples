
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

  { was #define dname def_expr }
  function GTK_TYPE_LAYOUT_CHILD : longint; { return type might be wrong }

(* error 
G_DECLARE_DERIVABLE_TYPE (GtkLayoutChild, gtk_layout_child, GTK, LAYOUT_CHILD, GObject)
 in declarator_list *)
(* error 
G_DECLARE_DERIVABLE_TYPE (GtkLayoutChild, gtk_layout_child, GTK, LAYOUT_CHILD, GObject)
 in declarator_list *)
  {< private > }
(* error 
  GObjectClass parent_class;
 in declarator_list *)
(* error 
};
in declaration at line 20 *)
    function gtk_layout_child_get_layout_manager(layout_child:PGtkLayoutChild):^GtkLayoutManager;

    function gtk_layout_child_get_child_widget(layout_child:PGtkLayoutChild):^GtkWidget;

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

