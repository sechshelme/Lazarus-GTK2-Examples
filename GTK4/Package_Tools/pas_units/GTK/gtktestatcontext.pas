unit gtktestatcontext;

interface

uses
  common_GTK, gtkenums, gtktypes;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}

{
#define gtk_test_accessible_assert_role(accessible,role) \
G_STMT_START  \
  GtkAccessible *__a = GTK_ACCESSIBLE (accessible); \
  GtkAccessibleRole __r1 = (role); \
  GtkAccessibleRole __r2 = gtk_accessible_get_accessible_role (__a); \
  if (__r1 == __r2) ; else  \
    gtk_test_accessible_assertion_message_role (G_LOG_DOMAIN, __FILE__, __LINE__, G_STRFUNC, \
                                                #accessible ".accessible-role == " #role, \
                                                __a, __r1, __r2); \
   \
 G_STMT_END
 }

  {
#define gtk_test_accessible_assert_property(accessible,property,...) \
G_STMT_START  \
  GtkAccessible *__a = GTK_ACCESSIBLE (accessible); \
  GtkAccessibleProperty __p = (property); \
  char *value__ = gtk_test_accessible_check_property (__a, __p, __VA_ARGS__); \
  if (value__ == NULL) ; else  \
    char *msg__ = g_strdup_printf ("assertion failed: (" #accessible ".accessible-property(" #property ") == " # __VA_ARGS__ "): value = '%s'", value__); \
    g_assertion_message (G_LOG_DOMAIN, __FILE__, __LINE__, G_STRFUNC, msg__); \
    g_free (msg__); \
   \
 G_STMT_END
 }

  {
#define gtk_test_accessible_assert_relation(accessible,relation,...) \
G_STMT_START  \
  GtkAccessible *__a = GTK_ACCESSIBLE (accessible); \
  GtkAccessibleRelation __r = (relation); \
  char *value__ = gtk_test_accessible_check_relation (__a, __r, __VA_ARGS__); \
  if (value__ == NULL); else  \
    char *msg__ = g_strdup_printf ("assertion failed: (" #accessible ".accessible-relation(" #relation ") == " # __VA_ARGS__ "): value = '%s'", value__); \
    g_assertion_message (G_LOG_DOMAIN, __FILE__, __LINE__, G_STRFUNC, msg__); \
    g_free (msg__); \
   \
 G_STMT_END
 }

  {
#define gtk_test_accessible_assert_state(accessible,state,...) \
G_STMT_START  \
  GtkAccessible *__a = GTK_ACCESSIBLE (accessible); \
  GtkAccessibleState __s = (state); \
  char *value__ = gtk_test_accessible_check_state (__a, __s, __VA_ARGS__); \
  if (value__ == NULL); else  \
    char *msg__ = g_strdup_printf ("assertion failed: (" #accessible ".accessible-state(" #state ") == " # __VA_ARGS__ "): value = '%s'", value__); \
    g_assertion_message (G_LOG_DOMAIN, __FILE__, __LINE__, G_STRFUNC, msg__); \
    g_free (msg__); \
   \
 G_STMT_END
 }

function gtk_test_accessible_has_role(accessible: PGtkAccessible; role: TGtkAccessibleRole): Tgboolean; cdecl; external gtklib;
function gtk_test_accessible_has_property(accessible: PGtkAccessible; _property: TGtkAccessibleProperty): Tgboolean; cdecl; external gtklib;
function gtk_test_accessible_has_relation(accessible: PGtkAccessible; relation: TGtkAccessibleRelation): Tgboolean; cdecl; external gtklib;
function gtk_test_accessible_has_state(accessible: PGtkAccessible; state: TGtkAccessibleState): Tgboolean; cdecl; external gtklib;
function gtk_test_accessible_check_property(accessible: PGtkAccessible; _property: TGtkAccessibleProperty; args: array of const): PChar; cdecl; external gtklib;
function gtk_test_accessible_check_property(accessible: PGtkAccessible; _property: TGtkAccessibleProperty): PChar; cdecl; external gtklib;
function gtk_test_accessible_check_relation(accessible: PGtkAccessible; relation: TGtkAccessibleRelation; args: array of const): PChar; cdecl; external gtklib;
function gtk_test_accessible_check_relation(accessible: PGtkAccessible; relation: TGtkAccessibleRelation): PChar; cdecl; external gtklib;
function gtk_test_accessible_check_state(accessible: PGtkAccessible; state: TGtkAccessibleState; args: array of const): PChar; cdecl; external gtklib;
function gtk_test_accessible_check_state(accessible: PGtkAccessible; state: TGtkAccessibleState): PChar; cdecl; external gtklib;
procedure gtk_test_accessible_assertion_message_role(domain: PChar; _file: PChar; line: longint; func: PChar; expr: PChar;
  accessible: PGtkAccessible; expected_role: TGtkAccessibleRole; actual_role: TGtkAccessibleRole); cdecl; external gtklib;

implementation


end.
