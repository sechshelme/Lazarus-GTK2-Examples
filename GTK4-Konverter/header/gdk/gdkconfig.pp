
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


{$ifndef __GDKCONFIG_H__}
{$define __GDKCONFIG_H__}  
{$if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gdk/gdk.h> can be included directly."}
{$endif}
{$include <glib.h>}
  { Zeile entfernt  }
{$define GDK_WINDOWING_X11}  
{$define GDK_WINDOWING_BROADWAY}  
{$undef GDK_WINDOWING_MACOS}
{$define GDK_WINDOWING_WAYLAND}  
{$undef GDK_WINDOWING_WIN32}
{$undef GDK_RENDERING_VULKAN}
  { Zeile entfernt  }
{$endif}
  { __GDKCONFIG_H__  }

