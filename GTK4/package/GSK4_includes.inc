  //{%MainUnit sdl3.pas}
      {$include common_gtk.inc}

{$include GSK/gsktypes.inc }                   // io.
{$include GSK/gskenums.inc }                   // io.
{$include GSK/gskenumtypes.inc }               // io.
{$include GSK/gsktransform.inc }               // io.
{$include GSK/gskroundedrect.inc }             // Macro nicht aufgelöst
{$include GSK/gskstroke.inc }                  // io.
{$include GSK/gskpathpoint.inc }               // io.
{$include GSK/gskpath.inc }                    // io. -> gskpathpoint, gskstroke
{$include GSK/gskpathbuilder.inc }             // io. -> gskpathpoint, gskroundedrect
{$include GSK/gskpathmeasure.inc }             // io. -> gskpathpoint
{$include GSK/gskglshader.inc }                // io.
{$include GSK/gskrendernode.inc }              // io. -> gsktransform, gskroundedrect, gskpath, gskstroke, gskglshader
{$include GSK/gskrenderer.inc }                // io. -> gskrendernode
{$include GSK/gskcairorenderer.inc }           // io.


