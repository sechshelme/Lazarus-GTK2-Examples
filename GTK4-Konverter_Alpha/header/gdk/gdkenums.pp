
unit gdkenums;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/gdkenums.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/gdkenums.h
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
PGdkAxisFlags  = ^GdkAxisFlags;
PGdkAxisUse  = ^GdkAxisUse;
PGdkDragAction  = ^GdkDragAction;
PGdkGLError  = ^GdkGLError;
PGdkGravity  = ^GdkGravity;
PGdkMemoryFormat  = ^GdkMemoryFormat;
PGdkModifierType  = ^GdkModifierType;
PGdkVulkanError  = ^GdkVulkanError;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef __GDK_ENUMS_H__}
{$define __GDK_ENUMS_H__}
{$if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gdk/gdk.h> can be included directly."}
{$endif}
{$include <glib.h>}



type
  PGdkGravity = ^TGdkGravity;
  TGdkGravity = (GDK_GRAVITY_NORTH_WEST := 1,GDK_GRAVITY_NORTH,
    GDK_GRAVITY_NORTH_EAST,GDK_GRAVITY_WEST,
    GDK_GRAVITY_CENTER,GDK_GRAVITY_EAST,GDK_GRAVITY_SOUTH_WEST,
    GDK_GRAVITY_SOUTH,GDK_GRAVITY_SOUTH_EAST,
    GDK_GRAVITY_STATIC);



  PGdkModifierType = ^TGdkModifierType;
  TGdkModifierType = (GDK_SHIFT_MASK := 1 shl 0,GDK_LOCK_MASK := 1 shl 1,
    GDK_CONTROL_MASK := 1 shl 2,GDK_ALT_MASK := 1 shl 3,
    GDK_BUTTON1_MASK := 1 shl 8,GDK_BUTTON2_MASK := 1 shl 9,
    GDK_BUTTON3_MASK := 1 shl 10,GDK_BUTTON4_MASK := 1 shl 11,
    GDK_BUTTON5_MASK := 1 shl 12,GDK_SUPER_MASK := 1 shl 26,
    GDK_HYPER_MASK := 1 shl 27,GDK_META_MASK := 1 shl 28
    );


const
  GDK_MODIFIER_MASK = ((((((((((GDK_SHIFT_MASK or GDK_LOCK_MASK) or GDK_CONTROL_MASK) or GDK_ALT_MASK) or GDK_SUPER_MASK) or GDK_HYPER_MASK) or GDK_META_MASK) or GDK_BUTTON1_MASK) or GDK_BUTTON2_MASK) or GDK_BUTTON3_MASK) or GDK_BUTTON4_MASK) or GDK_BUTTON5_MASK;  

type
  PGdkGLError = ^TGdkGLError;
  TGdkGLError = (GDK_GL_ERROR_NOT_AVAILABLE,GDK_GL_ERROR_UNSUPPORTED_FORMAT,
    GDK_GL_ERROR_UNSUPPORTED_PROFILE,GDK_GL_ERROR_COMPILATION_FAILED,
    GDK_GL_ERROR_LINK_FAILED);


  PGdkVulkanError = ^TGdkVulkanError;
  TGdkVulkanError = (GDK_VULKAN_ERROR_UNSUPPORTED,GDK_VULKAN_ERROR_NOT_AVAILABLE
    );


  PGdkAxisUse = ^TGdkAxisUse;
  TGdkAxisUse = (GDK_AXIS_IGNORE,GDK_AXIS_X,GDK_AXIS_Y,GDK_AXIS_DELTA_X,
    GDK_AXIS_DELTA_Y,GDK_AXIS_PRESSURE,GDK_AXIS_XTILT,
    GDK_AXIS_YTILT,GDK_AXIS_WHEEL,GDK_AXIS_DISTANCE,
    GDK_AXIS_ROTATION,GDK_AXIS_SLIDER,GDK_AXIS_LAST
    );


  PGdkAxisFlags = ^TGdkAxisFlags;
  TGdkAxisFlags = (GDK_AXIS_FLAG_X := 1 shl GDK_AXIS_X,GDK_AXIS_FLAG_Y := 1 shl GDK_AXIS_Y,
    GDK_AXIS_FLAG_DELTA_X := 1 shl GDK_AXIS_DELTA_X,GDK_AXIS_FLAG_DELTA_Y := 1 shl GDK_AXIS_DELTA_Y,
    GDK_AXIS_FLAG_PRESSURE := 1 shl GDK_AXIS_PRESSURE,GDK_AXIS_FLAG_XTILT := 1 shl GDK_AXIS_XTILT,
    GDK_AXIS_FLAG_YTILT := 1 shl GDK_AXIS_YTILT,GDK_AXIS_FLAG_WHEEL := 1 shl GDK_AXIS_WHEEL,
    GDK_AXIS_FLAG_DISTANCE := 1 shl GDK_AXIS_DISTANCE,GDK_AXIS_FLAG_ROTATION := 1 shl GDK_AXIS_ROTATION,
    GDK_AXIS_FLAG_SLIDER := 1 shl GDK_AXIS_SLIDER);


  PGdkDragAction = ^TGdkDragAction;
  TGdkDragAction = (GDK_ACTION_COPY := 1 shl 0,GDK_ACTION_MOVE := 1 shl 1,
    GDK_ACTION_LINK := 1 shl 2,GDK_ACTION_ASK := 1 shl 3
    );


const
  GDK_ACTION_ALL = (GDK_ACTION_COPY or GDK_ACTION_MOVE) or GDK_ACTION_LINK;  

type
  PGdkMemoryFormat = ^TGdkMemoryFormat;
  TGdkMemoryFormat = (GDK_MEMORY_B8G8R8A8_PREMULTIPLIED,GDK_MEMORY_A8R8G8B8_PREMULTIPLIED,
    GDK_MEMORY_R8G8B8A8_PREMULTIPLIED,GDK_MEMORY_B8G8R8A8,
    GDK_MEMORY_A8R8G8B8,GDK_MEMORY_R8G8B8A8,
    GDK_MEMORY_A8B8G8R8,GDK_MEMORY_R8G8B8,GDK_MEMORY_B8G8R8,
    GDK_MEMORY_R16G16B16,GDK_MEMORY_R16G16B16A16_PREMULTIPLIED,
    GDK_MEMORY_R16G16B16A16,GDK_MEMORY_R16G16B16_FLOAT,
    GDK_MEMORY_R16G16B16A16_FLOAT_PREMULTIPLIED,
    GDK_MEMORY_R16G16B16A16_FLOAT,GDK_MEMORY_R32G32B32_FLOAT,
    GDK_MEMORY_R32G32B32A32_FLOAT_PREMULTIPLIED,
    GDK_MEMORY_R32G32B32A32_FLOAT,GDK_MEMORY_N_FORMATS
    );

{$endif}


implementation


end.
