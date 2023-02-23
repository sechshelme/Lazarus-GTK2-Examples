
unit gtktestatcontext;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtktestatcontext.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtktestatcontext.h
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
    Pchar  = ^char;
    PGtkAccessible  = ^GtkAccessible;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkatcontext.h>}


(* error 
 { \
in declaration at line 41 *)
(* error 
  GtkAccessible *__a =  (accessible); \
(* error 
  GtkAccessibleRole __r1 = (role); \
in declaration at line 42 *)
(* error 
  GtkAccessibleRole __r1 = (role); \
(* error 
  GtkAccessibleRole __r2 = gtk_accessible_get_accessible_role (__a); \
in declaration at line 43 *)
(* error 
  GtkAccessibleRole __r2 = gtk_accessible_get_accessible_role (__a); \
(* error 
  if (__r1 == __r2) ; else { \
in declaration at line 44 *)
(* error 
  if (__r1 == __r2) ; else { \
in declaration at line 47 *)
(* error 
                                                __a, __r1, __r2); \
(* error 
  } \

in declaration at line 63 *)
(* error 
  GtkAccessible *__a =  (accessible); \
(* error 
  GtkAccessibleProperty __p = (property); \
in declaration at line 64 *)
(* error 
  GtkAccessibleProperty __p = (property); \
(* error 
  char *value__ = gtk_test_accessible_check_property (__a, __p, __VA_ARGS__); \
in declaration at line 65 *)
(* error 
  char *value__ = gtk_test_accessible_check_property (__a, __p, __VA_ARGS__); \
(* error 
  if (value__ == NULL) ; else { \
in declaration at line 66 *)
(* error 
  if (value__ == NULL) ; else { \
in declaration at line 67 *)
(* error 
    char *msg__ = g_strdup_printf ("assertion failed: (" #accessible ".accessible-property(" #property ") == " # __VA_ARGS__ "): value = '%s'", value__); \
(* error 
    g_assertion_message (G_LOG_DOMAIN, __FILE__, __LINE__, G_STRFUNC, msg__); \
in declaration at line 68 *)
(* error 
    g_assertion_message (G_LOG_DOMAIN, __FILE__, __LINE__, G_STRFUNC, msg__); \
(* error 
    g_free (msg__); \
in declaration at line 69 *)
(* error 
    g_free (msg__); \
(* error 
  } \

in declaration at line 85 *)
(* error 
  GtkAccessible *__a =  (accessible); \
(* error 
  GtkAccessibleRelation __r = (relation); \
in declaration at line 86 *)
(* error 
  GtkAccessibleRelation __r = (relation); \
(* error 
  char *value__ = gtk_test_accessible_check_relation (__a, __r, __VA_ARGS__); \
in declaration at line 87 *)
(* error 
  char *value__ = gtk_test_accessible_check_relation (__a, __r, __VA_ARGS__); \
(* error 
  if (value__ == NULL); else { \
in declaration at line 88 *)
(* error 
  if (value__ == NULL); else { \
in declaration at line 89 *)
(* error 
    char *msg__ = g_strdup_printf ("assertion failed: (" #accessible ".accessible-relation(" #relation ") == " # __VA_ARGS__ "): value = '%s'", value__); \
(* error 
    g_assertion_message (G_LOG_DOMAIN, __FILE__, __LINE__, G_STRFUNC, msg__); \
in declaration at line 90 *)
(* error 
    g_assertion_message (G_LOG_DOMAIN, __FILE__, __LINE__, G_STRFUNC, msg__); \
(* error 
    g_free (msg__); \
in declaration at line 91 *)
(* error 
    g_free (msg__); \
(* error 
  } \

in declaration at line 107 *)
(* error 
  GtkAccessible *__a =  (accessible); \
(* error 
  GtkAccessibleState __s = (state); \
in declaration at line 108 *)
(* error 
  GtkAccessibleState __s = (state); \
(* error 
  char *value__ = gtk_test_accessible_check_state (__a, __s, __VA_ARGS__); \
in declaration at line 109 *)
(* error 
  char *value__ = gtk_test_accessible_check_state (__a, __s, __VA_ARGS__); \
(* error 
  if (value__ == NULL); else { \
in declaration at line 110 *)
(* error 
  if (value__ == NULL); else { \
in declaration at line 111 *)
(* error 
    char *msg__ = g_strdup_printf ("assertion failed: (" #accessible ".accessible-state(" #state ") == " # __VA_ARGS__ "): value = '%s'", value__); \
(* error 
    g_assertion_message (G_LOG_DOMAIN, __FILE__, __LINE__, G_STRFUNC, msg__); \
in declaration at line 112 *)
(* error 
    g_assertion_message (G_LOG_DOMAIN, __FILE__, __LINE__, G_STRFUNC, msg__); \
(* error 
    g_free (msg__); \
in declaration at line 113 *)
(* error 
    g_free (msg__); \
(* error 
  } \

in declaration at line 119 *)


function gtk_test_accessible_has_property(accessible:PGtkAccessible; _property:TGtkAccessibleProperty):Tgboolean;cdecl;external;

function gtk_test_accessible_has_relation(accessible:PGtkAccessible; relation:TGtkAccessibleRelation):Tgboolean;cdecl;external;

function gtk_test_accessible_has_state(accessible:PGtkAccessible; state:TGtkAccessibleState):Tgboolean;cdecl;external;

function gtk_test_accessible_check_property(accessible:PGtkAccessible; _property:TGtkAccessibleProperty; args:array of const):Pchar;cdecl;external;
function gtk_test_accessible_check_property(accessible:PGtkAccessible; _property:TGtkAccessibleProperty):Pchar;cdecl;external;

function gtk_test_accessible_check_relation(accessible:PGtkAccessible; relation:TGtkAccessibleRelation; args:array of const):Pchar;cdecl;external;
function gtk_test_accessible_check_relation(accessible:PGtkAccessible; relation:TGtkAccessibleRelation):Pchar;cdecl;external;

function gtk_test_accessible_check_state(accessible:PGtkAccessible; state:TGtkAccessibleState; args:array of const):Pchar;cdecl;external;
function gtk_test_accessible_check_state(accessible:PGtkAccessible; state:TGtkAccessibleState):Pchar;cdecl;external;

procedure gtk_test_accessible_assertion_message_role(domain:Pchar; file:Pchar; line:longint; func:Pchar; expr:Pchar; 
                accessible:PGtkAccessible; expected_role:TGtkAccessibleRole; actual_role:TGtkAccessibleRole);cdecl;external;


implementation


end.
