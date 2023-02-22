
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  {
   * Copyright © 2022 Benjamin Otte
   *
   * This library is free software; you can redistribute it and/or
   * modify it under the terms of the GNU Lesser General Public
   * License as published by the Free Software Foundation; either
   * version 2.1 of the License, or (at your option) any later version.
   *
   * This library is distributed in the hope that it will be useful,
   * but WITHOUT ANY WARRANTY; without even the implied warranty of
   * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   * Lesser General Public License for more details.
   *
   * You should have received a copy of the GNU Lesser General Public
   * License along with this library. If not, see <http://www.gnu.org/licenses/>.
   *
   * Authors: Benjamin Otte <otte@gnome.org>
    }
{$ifndef __GTK_INSCRIPTION_H__}
{$define __GTK_INSCRIPTION_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwidget.h>}

  { was #define dname def_expr }
  function GTK_TYPE_INSCRIPTION : longint; { return type might be wrong }

  {*
   * GtkInscriptionOverflow:
   * @GTK_INSCRIPTION_OVERFLOW_CLIP: Clip the remaining text
   * @GTK_INSCRIPTION_OVERFLOW_ELLIPSIZE_START: Omit characters at the start of the text
   * @GTK_INSCRIPTION_OVERFLOW_ELLIPSIZE_MIDDLE: Omit characters at the middle of the text
   * @GTK_INSCRIPTION_OVERFLOW_ELLIPSIZE_END: Omit characters at the end of the text
   *
   * The different methods to handle text in #GtkInscription when it doesn't
   * fit the available space.
   *
   * Since: 4.8
    }

  type
    GtkInscriptionOverflow = (GTK_INSCRIPTION_OVERFLOW_CLIP,GTK_INSCRIPTION_OVERFLOW_ELLIPSIZE_START,
      GTK_INSCRIPTION_OVERFLOW_ELLIPSIZE_MIDDLE,
      GTK_INSCRIPTION_OVERFLOW_ELLIPSIZE_END
      );
(* error 
GDK_AVAILABLE_IN_4_8
 in declarator_list *)

    var
 : GDK_AVAILABLE_IN_4_8;
(* error 
const char *            gtk_inscription_get_text                (GtkInscription         *self);
 in declarator_list *)
(* error 
void                    gtk_inscription_set_text                (GtkInscription         *self,
in declaration at line 62 *)
(* error 
PangoAttrList *         gtk_inscription_get_attributes          (GtkInscription         *self);
 in declarator_list *)
(* error 
void                    gtk_inscription_set_attributes          (GtkInscription         *self,
in declaration at line 67 *)
(* error 
void                    gtk_inscription_set_markup              (GtkInscription         *self,
in declaration at line 70 *)
(* error 
GtkInscriptionOverflow  gtk_inscription_get_text_overflow       (GtkInscription         *self);
 in declarator_list *)
(* error 
void                    gtk_inscription_set_text_overflow       (GtkInscription         *self,
in declaration at line 75 *)
(* error 
PangoWrapMode           gtk_inscription_get_wrap_mode           (GtkInscription         *self);
 in declarator_list *)
(* error 
void                    gtk_inscription_set_wrap_mode           (GtkInscription         *self,
in declaration at line 80 *)
(* error 
guint                   gtk_inscription_get_min_chars           (GtkInscription         *self);
 in declarator_list *)
(* error 
void                    gtk_inscription_set_min_chars           (GtkInscription         *self,
in declaration at line 86 *)
(* error 
guint                   gtk_inscription_get_nat_chars           (GtkInscription         *self);
 in declarator_list *)
(* error 
void                    gtk_inscription_set_nat_chars           (GtkInscription         *self,
in declaration at line 91 *)
(* error 
guint                   gtk_inscription_get_min_lines           (GtkInscription         *self);
 in declarator_list *)
(* error 
void                    gtk_inscription_set_min_lines           (GtkInscription         *self,
in declaration at line 96 *)
(* error 
guint                   gtk_inscription_get_nat_lines           (GtkInscription         *self);
 in declarator_list *)
(* error 
void                    gtk_inscription_set_nat_lines           (GtkInscription         *self,
in declaration at line 101 *)
(* error 
float                   gtk_inscription_get_xalign              (GtkInscription         *self);
in declaration at line 104 *)
(* error 
void                    gtk_inscription_set_xalign              (GtkInscription         *self,
in declaration at line 107 *)
(* error 
float                   gtk_inscription_get_yalign              (GtkInscription         *self);
in declaration at line 109 *)
(* error 
void                    gtk_inscription_set_yalign              (GtkInscription         *self,
in declaration at line 112 *)
{$endif}
    { __GTK_INSCRIPTION_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_INSCRIPTION : longint; { return type might be wrong }
    begin
      GTK_TYPE_INSCRIPTION:=gtk_inscription_get_type;
    end;


