
unit gtkinscription;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkinscription.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkinscription.h
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
    PGtkInscriptionOverflow  = ^GtkInscriptionOverflow;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_INSCRIPTION_H__}
{$define __GTK_INSCRIPTION_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwidget.h>}


function GTK_TYPE_INSCRIPTION : longint; { return type might be wrong }


type
  PGtkInscriptionOverflow = ^TGtkInscriptionOverflow;
  TGtkInscriptionOverflow = (GTK_INSCRIPTION_OVERFLOW_CLIP,GTK_INSCRIPTION_OVERFLOW_ELLIPSIZE_START,
    GTK_INSCRIPTION_OVERFLOW_ELLIPSIZE_MIDDLE,
    GTK_INSCRIPTION_OVERFLOW_ELLIPSIZE_END
    );

(* error 
GtkWidget *             gtk_inscription_new                     (const char             *text);
 in declarator_list *)
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


implementation

function GTK_TYPE_INSCRIPTION : longint; { return type might be wrong }
  begin
    GTK_TYPE_INSCRIPTION:=gtk_inscription_get_type;
  end;


end.
