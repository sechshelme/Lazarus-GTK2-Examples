
    Type
    Pchar  = ^char;
    PGdkDevice  = ^GdkDevice;
    PGdkEvent  = ^GdkEvent;
    PGdkRectangle  = ^GdkRectangle;
    PGdkSurface  = ^GdkSurface;
    PGtkIMContext  = ^GtkIMContext;
    PGtkWidget  = ^GtkWidget;
    Plongint  = ^longint;
    PPangoAttrList  = ^PangoAttrList;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { GTK - The GIMP Toolkit
   * Copyright (C) 2000 Red Hat Software
   *
   * This library is free software; you can redistribute it and/or
   * modify it under the terms of the GNU Lesser General Public
   * License as published by the Free Software Foundation; either
   * version 2 of the License, or (at your option) any later version.
   *
   * This library is distributed in the hope that it will be useful,
   * but WITHOUT ANY WARRANTY; without even the implied warranty of
   * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   * Lesser General Public License for more details.
   *
   * You should have received a copy of the GNU Lesser General Public
   * License along with this library. If not, see <http://www.gnu.org/licenses/>.
    }
{$ifndef __GTK_IM_CONTEXT_H__}
{$define __GTK_IM_CONTEXT_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwidget.h>}

  { was #define dname def_expr }
  function GTK_TYPE_IM_CONTEXT : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IM_CONTEXT(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IM_CONTEXT_CLASS(klass : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_IM_CONTEXT(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_IM_CONTEXT_CLASS(klass : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IM_CONTEXT_GET_CLASS(obj : longint) : longint;  


  type
    _GtkIMContext = GtkIMContext;
    _GtkIMContextClass = GtkIMContextClass;
    _GtkIMContext = record
        parent_instance : GObject;
      end;

  {< private > }
  {< public > }
  { Signals  }
(* Const before type ignored *)
  { Virtual functions  }
(* Const before type ignored *)
(* Const before type ignored *)
  {< private > }
  { Padding for future expansion  }
    _GtkIMContextClass = record
        parent_class : GObjectClass;
        preedit_start : procedure (context:PGtkIMContext);cdecl;
        preedit_end : procedure (context:PGtkIMContext);cdecl;
        preedit_changed : procedure (context:PGtkIMContext);cdecl;
        commit : procedure (context:PGtkIMContext; str:Pchar);cdecl;
        retrieve_surrounding : function (context:PGtkIMContext):gboolean;cdecl;
        delete_surrounding : function (context:PGtkIMContext; offset:longint; n_chars:longint):gboolean;cdecl;
        set_client_widget : procedure (context:PGtkIMContext; widget:PGtkWidget);cdecl;
        get_preedit_string : procedure (context:PGtkIMContext; str:PPchar; attrs:PPPangoAttrList; cursor_pos:Plongint);cdecl;
        filter_keypress : function (context:PGtkIMContext; event:PGdkEvent):gboolean;cdecl;
        focus_in : procedure (context:PGtkIMContext);cdecl;
        focus_out : procedure (context:PGtkIMContext);cdecl;
        reset : procedure (context:PGtkIMContext);cdecl;
        set_cursor_location : procedure (context:PGtkIMContext; area:PGdkRectangle);cdecl;
        set_use_preedit : procedure (context:PGtkIMContext; use_preedit:gboolean);cdecl;
        set_surrounding : procedure (context:PGtkIMContext; text:Pchar; len:longint; cursor_index:longint);cdecl;
        get_surrounding : function (context:PGtkIMContext; text:PPchar; cursor_index:Plongint):gboolean;cdecl;
        set_surrounding_with_selection : procedure (context:PGtkIMContext; text:Pchar; len:longint; cursor_index:longint; anchor_index:longint);cdecl;
        get_surrounding_with_selection : function (context:PGtkIMContext; text:PPchar; cursor_index:Plongint; anchor_index:Plongint):gboolean;cdecl;
        _gtk_reserved1 : procedure ;cdecl;
        _gtk_reserved2 : procedure ;cdecl;
        _gtk_reserved3 : procedure ;cdecl;
        _gtk_reserved4 : procedure ;cdecl;
        _gtk_reserved5 : procedure ;cdecl;
      end;

(* error 
GType    gtk_im_context_get_type            (void) G_GNUC_CONST;
 in declarator_list *)

    var
 : GType;

  procedure gtk_im_context_set_client_widget(context:PGtkIMContext; widget:PGtkWidget);

  procedure gtk_im_context_get_preedit_string(context:PGtkIMContext; str:PPchar; attrs:PPPangoAttrList; cursor_pos:Plongint);

  function gtk_im_context_filter_keypress(context:PGtkIMContext; event:PGdkEvent):gboolean;

  function gtk_im_context_filter_key(context:PGtkIMContext; press:gboolean; surface:PGdkSurface; device:PGdkDevice; time:guint32; 
             keycode:guint; state:GdkModifierType; group:longint):gboolean;

  procedure gtk_im_context_focus_in(context:PGtkIMContext);

  procedure gtk_im_context_focus_out(context:PGtkIMContext);

  procedure gtk_im_context_reset(context:PGtkIMContext);

(* Const before type ignored *)
  procedure gtk_im_context_set_cursor_location(context:PGtkIMContext; area:PGdkRectangle);

  procedure gtk_im_context_set_use_preedit(context:PGtkIMContext; use_preedit:gboolean);

(* error 
void     gtk_im_context_set_surrounding     (GtkIMContext       *context,
(* error 
                                             const char         *text,
(* error 
                                             int                 len,
(* error 
                                             int                 cursor_index);
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
gboolean gtk_im_context_get_surrounding     (GtkIMContext       *context,
(* error 
                                             char              **text,
(* error 
                                             int                *cursor_index);
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
(* error 
void     gtk_im_context_set_surrounding_with_selection
in declaration at line 159 *)
(* error 
gboolean gtk_im_context_get_surrounding_with_selection
(* error 
                                             char              **text,
(* error 
                                             int                *cursor_index,
(* error 
                                             int                *anchor_index);
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
 in declarator_list *)
    function gtk_im_context_delete_surrounding(context:PGtkIMContext; offset:longint; n_chars:longint):gboolean;

{$endif}
    { __GTK_IM_CONTEXT_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_IM_CONTEXT : longint; { return type might be wrong }
    begin
      GTK_TYPE_IM_CONTEXT:=gtk_im_context_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IM_CONTEXT(obj : longint) : longint;
  begin
    GTK_IM_CONTEXT:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_IM_CONTEXT,GtkIMContext);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IM_CONTEXT_CLASS(klass : longint) : longint;
  begin
    GTK_IM_CONTEXT_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_IM_CONTEXT,GtkIMContextClass);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_IM_CONTEXT(obj : longint) : longint;
  begin
    GTK_IS_IM_CONTEXT:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_IM_CONTEXT);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_IM_CONTEXT_CLASS(klass : longint) : longint;
  begin
    GTK_IS_IM_CONTEXT_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_IM_CONTEXT);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IM_CONTEXT_GET_CLASS(obj : longint) : longint;
  begin
    GTK_IM_CONTEXT_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_IM_CONTEXT,GtkIMContextClass);
  end;

  procedure gtk_im_context_set_client_widget(context:PGtkIMContext; widget:PGtkWidget);
  begin
    { You must implement this function }
  end;
  procedure gtk_im_context_get_preedit_string(context:PGtkIMContext; str:PPchar; attrs:PPPangoAttrList; cursor_pos:Plongint);
  begin
    { You must implement this function }
  end;
  function gtk_im_context_filter_keypress(context:PGtkIMContext; event:PGdkEvent):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_im_context_filter_key(context:PGtkIMContext; press:gboolean; surface:PGdkSurface; device:PGdkDevice; time:guint32; 
             keycode:guint; state:GdkModifierType; group:longint):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_im_context_focus_in(context:PGtkIMContext);
  begin
    { You must implement this function }
  end;
  procedure gtk_im_context_focus_out(context:PGtkIMContext);
  begin
    { You must implement this function }
  end;
  procedure gtk_im_context_reset(context:PGtkIMContext);
  begin
    { You must implement this function }
  end;
  procedure gtk_im_context_set_cursor_location(context:PGtkIMContext; area:PGdkRectangle);
  begin
    { You must implement this function }
  end;
  procedure gtk_im_context_set_use_preedit(context:PGtkIMContext; use_preedit:gboolean);
  begin
    { You must implement this function }
  end;
    function gtk_im_context_delete_surrounding(context:PGtkIMContext; offset:longint; n_chars:longint):gboolean;
    begin
      { You must implement this function }
    end;

