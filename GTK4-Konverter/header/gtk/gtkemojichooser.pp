
  Type
  PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { gtkemojichooser.h: An Emoji chooser widget
   * Copyright 2017, Red Hat, Inc.
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
(** unsupported pragma#pragma once*)
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwidget.h>}
  { Zeile entfernt  }

  { was #define dname def_expr }
  function GTK_TYPE_EMOJI_CHOOSER : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_EMOJI_CHOOSER(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_EMOJI_CHOOSER_CLASS(klass : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_EMOJI_CHOOSER(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_EMOJI_CHOOSER_CLASS(klass : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_EMOJI_CHOOSER_GET_CLASS(obj : longint) : longint;  


  type
    _GtkEmojiChooser = GtkEmojiChooser;
    _GtkEmojiChooserClass = GtkEmojiChooserClass;
  { Zeile entfernt  }

  function gtk_emoji_chooser_get_type:GType;

  { Zeile entfernt  }
  function gtk_emoji_chooser_new:^GtkWidget;

  { Zeile entfernt  }
  { was #define dname def_expr }
  function GTK_TYPE_EMOJI_CHOOSER : longint; { return type might be wrong }
    begin
      GTK_TYPE_EMOJI_CHOOSER:=gtk_emoji_chooser_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_EMOJI_CHOOSER(obj : longint) : longint;
  begin
    GTK_EMOJI_CHOOSER:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_EMOJI_CHOOSER,GtkEmojiChooser);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_EMOJI_CHOOSER_CLASS(klass : longint) : longint;
  begin
    GTK_EMOJI_CHOOSER_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_EMOJI_CHOOSER,GtkEmojiChooserClass);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_EMOJI_CHOOSER(obj : longint) : longint;
  begin
    GTK_IS_EMOJI_CHOOSER:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_EMOJI_CHOOSER);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_EMOJI_CHOOSER_CLASS(klass : longint) : longint;
  begin
    GTK_IS_EMOJI_CHOOSER_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_EMOJI_CHOOSER);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_EMOJI_CHOOSER_GET_CLASS(obj : longint) : longint;
  begin
    GTK_EMOJI_CHOOSER_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_EMOJI_CHOOSER,GtkEmojiChooserClass);
  end;

  function gtk_emoji_chooser_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gtk_emoji_chooser_new:PGtkWidget;
  begin
    { You must implement this function }
  end;

