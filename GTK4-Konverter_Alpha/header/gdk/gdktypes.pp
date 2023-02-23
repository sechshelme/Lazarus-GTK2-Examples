
unit gdktypes;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/gdktypes.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/gdktypes.h
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
    PGdkKeymapKey  = ^GdkKeymapKey;
    PGdkRectangle  = ^GdkRectangle;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef __GDK_TYPES_H__}
{$define __GDK_TYPES_H__}
{$if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gdk/gdk.h> can be included directly."}
{$endif}

{$include <glib.h>}
{$include <glib-object.h>}
{$include <gio/gio.h>}
{$include <cairo.h>}
{$include <pango/pango.h>}

{$include <gdk/gdkconfig.h>}



const
  GDK_CURRENT_TIME = 0;  
{$ifdef __GI_SCANNER__}

type
  PGdkRectangle = ^TGdkRectangle;
  TGdkRectangle = record
      x : longint;
      y : longint;
      width : longint;
      height : longint;
    end;

{$else}
type
  PGdkRectangle = ^TGdkRectangle;
  TGdkRectangle = Tcairo_rectangle_int_t;
{$endif}

type

(* error 
 * @ModuleObjName: The name of the new type, in camel case (like GtkWidget)

in declaration at line 113 *)
(* error 
 * structures; external users will not be able to subclass this type.

 in declarator_list *)
(* error 
  GType module_obj_name##_get_type (void);                                                               \
(* error 
  G_GNUC_BEGIN_IGNORE_DEPRECATIONS                                                                       \
in declaration at line 118 *)
(* error 
  typedef struct _##ModuleObjName ModuleObjName;                                                         \
(* error 
  typedef struct _##ModuleObjName##Class ModuleObjName##Class;                                           \
in declaration at line 119 *)
(* error 
  typedef struct _##ModuleObjName##Class ModuleObjName##Class;                                           \
(* error 
                                                                                                         \
in declaration at line 125 *)
(* error 
    return G_TYPE_CHECK_INSTANCE_CAST (ptr, module_obj_name##_get_type (), ModuleObjName); }             \
in declaration at line 127 *)
(* error 
    return G_TYPE_CHECK_CLASS_CAST (ptr, module_obj_name##_get_type (), ModuleObjName##Class); }         \
in declaration at line 129 *)
(* error 
    return G_TYPE_CHECK_INSTANCE_TYPE (ptr, module_obj_name##_get_type ()); }                            \
in declaration at line 131 *)
(* error 
    return G_TYPE_CHECK_CLASS_TYPE (ptr, module_obj_name##_get_type ()); }                               \
in declaration at line 133 *)
(* error 
    return G_TYPE_INSTANCE_GET_CLASS (ptr, module_obj_name##_get_type (), ModuleObjName##Class); }       \
in declaration at line 136 *)

      PGdkKeymapKey = ^TGdkKeymapKey;
      TGdkKeymapKey = record
          keycode : Tguint;
          group : longint;
          level : longint;
        end;


{$endif}


implementation


end.
