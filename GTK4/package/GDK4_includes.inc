  //{%MainUnit sdl3.pas}

    {$include common_gtk.inc}


{$include GDK/gdkenums.inc}                   // io.
{$include GDK/gdkenumtypes.inc}               // io.
{$include GDK/gdktypes.inc}
{$include GDK/gdkrectangle.inc}               // io.
{$include GDK/gdkrgba.inc}                    // io.
{$include GDK/gdkcairo.inc}                   // io. -> gdkrgba
{$include GDK/gdkkeysyms.inc}                 // Gross und Kleinschreibung !
{$include GDK/gdkdrawcontext.inc}             // io.
{$include GDK/gdkkeys.inc}                    // io.
{$include GDK/gdkpango.inc}                   // io.
{$include GDK/gdkvulkancontext.inc}           // io.
{$include GDK/gdkmonitor.inc}                 // io.
{$include GDK/gdktoplevellayout.inc}          // io.
{$include GDK/gdktoplevelsize.inc}            // io.
{$include GDK/gdkpopuplayout.inc}             // io.
{$include GDK/gdkpopup.inc}                   // io. -> gdkpopuplayout
{$include GDK/gdkglcontext.inc}               // io.
{$include GDK/gdkdisplaymanager.inc}          // io.
{$include GDK/gdkdmabufformats.inc}           // io.
{$include GDK/gdkdmabuftexture.inc}           // io.
{$include GDK/gdkdragsurface.inc}             // io.
{$include GDK/gdkdragsurfacesize.inc}         // io.
{$include GDK/gdkframetimings.inc}            // io.
{$include GDK/gdkapplaunchcontext.inc}        // io.
{$include GDK/gdkframeclock.inc}              // io. -> gdkframetimings
{$include GDK/gdkcairocontext.inc}            // unaufindbare external funktion
{$include GDK/gdktexture.inc}                 // io.
{$include GDK/gdkcursor.inc}                  // io. -> gdktexture
{$include GDK/deprecated/gdkpixbuf.inc}                  // io. -> gdktexture
{$include GDK/gdktexturedownloader.inc}       // io. -> gdktexture
{$include GDK/gdkmemorytexture.inc}           // io. -> gdktexture
{$include GDK/gdkdmabuftexturebuilder.inc}    // io. -> gdktexture
{$include GDK/gdkgltexturebuilder.inc}        // io. -> gdktexture gdkglcontext
{$include GDK/gdkgltexture.inc}               // io. -> gdktexture gdkglcontext
{$include GDK/gdksurface.inc}                 // io. -> gdkcursor gdkglcontext gdkframeclock gdkvulkancontext gdkcairocontext
{$include GDK/gdkcontentformats.inc}          // io.
{$include GDK/gdkcontentserializer.inc}       // io. -> gdkcontentformats
{$include GDK/gdkcontentdeserializer.inc}     // io. -> gdkcontentserializer
{$include GDK/gdkclipboard.inc}               // io. -> gdktexture gdkcontentformats
{$include GDK/gdkcontentprovider.inc}         // io. -> gdkclipboard gdkcontentformats
{$include GDK/gdkcontentproviderimpl.inc}     // io.
{$include GDK/gdkdrag.inc}                    // io. -> gdksurface gdkcontentformats
{$include GDK/gdkdrop.inc}                    // io. -> gdkdrag  gdkcontentformats
{$include GDK/gdkseat.inc}                    // io.
{$include GDK/gdkdevicetool.inc}
{$include GDK/gdkdevice.inc}                  // io. -> gdkseat gdkdevicetool
{$include GDK/gdkevents.inc}                  // io. -> gdkdevice gdkdrop gdkenums gdkseat gdkdevicetool
{$include GDK/gdkdisplay.inc}                 // io. -> gdkclipboard  gdkseat gdkglcontext gdkmonitor
{$include GDK/gdktoplevel.inc}                // io. -> gdkevents gdktoplevellayout
{$include GDK/gdksnapshot.inc}                // io.
{$include GDK/gdkpaintable.inc}               // io. -> gdksnapshot
{$include GDK/gdkdevicepad.inc}               // io.


// ==== GDK X11

{$IFDEF Linux}
{$include GDK/x11/gdkx11applaunchcontext.inc }     // io.
{$include GDK/x11/gdkx11device.inc }               // io.
{$include GDK/x11/gdkx11device_xi2.inc }           // io.
{$include GDK/x11/gdkx11devicemanager_xi2.inc }    // io.
{$include GDK/x11/gdkx11devicemanager.inc }        // io.
{$include GDK/x11/gdkx11screen.inc }               // io.
{$include GDK/x11/gdkx11display.inc }              // io. -> GdkX11Screen
{$include GDK/x11/gdkx11surface.inc }              // io. -> gdkx11display
{$include GDK/x11/gdkx11dnd.inc }                  // io.
{$include GDK/x11/gdkx11glcontext.inc }            // io.
{$include GDK/x11/gdkx11monitor.inc }              // io.
{$include GDK/x11/gdkx11selection.inc }            // io.
{$include GDK/x11/gdkx11utils.inc }                // io.
{$include GDK/x11/gdkx11property.inc }             // io.
{$ENDIF}

// ====  GDK Wayland

{$IFDEF Linux}
{$include GDK/wayland/gdkwaylanddevice.inc }           // io.
{$include GDK/wayland/gdkwaylanddisplay.inc }          // io.
{$include GDK/wayland/gdkwaylandglcontext.inc }        // io.
{$include GDK/wayland/gdkwaylandmonitor.inc }          // io.
{$include GDK/wayland/gdkwaylandpopup.inc }            // io.
{$include GDK/wayland/gdkwaylandseat.inc }             // io.
{$include GDK/wayland/gdkwaylandsurface.inc }          // io.
{$include GDK/wayland/gdkwaylandtoplevel.inc }         // io.
{$ENDIF}



