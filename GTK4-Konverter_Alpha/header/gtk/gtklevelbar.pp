
unit gtklevelbar;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtklevelbar.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtklevelbar.h
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
Pdouble  = ^double;
PGtkLevelBar  = ^GtkLevelBar;
PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_LEVEL_BAR_H__}
{$define __GTK_LEVEL_BAR_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwidget.h>}


function GTK_TYPE_LEVEL_BAR : longint; { return type might be wrong }

function GTK_LEVEL_BAR(obj : longint) : longint;

function GTK_IS_LEVEL_BAR(obj : longint) : longint;


const
  GTK_LEVEL_BAR_OFFSET_LOW = 'low';  

  GTK_LEVEL_BAR_OFFSET_HIGH = 'high';  

  GTK_LEVEL_BAR_OFFSET_FULL = 'full';  
type


function gtk_level_bar_get_type:TGType;cdecl;external;

function gtk_level_bar_new:PGtkWidget;cdecl;external;

function gtk_level_bar_new_for_interval(min_value:Tdouble; max_value:Tdouble):PGtkWidget;cdecl;external;

procedure gtk_level_bar_set_mode(self:PGtkLevelBar; mode:TGtkLevelBarMode);cdecl;external;

function gtk_level_bar_get_mode(self:PGtkLevelBar):TGtkLevelBarMode;cdecl;external;

procedure gtk_level_bar_set_value(self:PGtkLevelBar; value:Tdouble);cdecl;external;

function gtk_level_bar_get_value(self:PGtkLevelBar):Tdouble;cdecl;external;

procedure gtk_level_bar_set_min_value(self:PGtkLevelBar; value:Tdouble);cdecl;external;

function gtk_level_bar_get_min_value(self:PGtkLevelBar):Tdouble;cdecl;external;

procedure gtk_level_bar_set_max_value(self:PGtkLevelBar; value:Tdouble);cdecl;external;

function gtk_level_bar_get_max_value(self:PGtkLevelBar):Tdouble;cdecl;external;

procedure gtk_level_bar_set_inverted(self:PGtkLevelBar; inverted:Tgboolean);cdecl;external;

function gtk_level_bar_get_inverted(self:PGtkLevelBar):Tgboolean;cdecl;external;

procedure gtk_level_bar_add_offset_value(self:PGtkLevelBar; name:Pchar; value:Tdouble);cdecl;external;

procedure gtk_level_bar_remove_offset_value(self:PGtkLevelBar; name:Pchar);cdecl;external;

function gtk_level_bar_get_offset_value(self:PGtkLevelBar; name:Pchar; value:Pdouble):Tgboolean;cdecl;external;

{$endif}


implementation

function GTK_TYPE_LEVEL_BAR : longint; { return type might be wrong }
  begin
    GTK_TYPE_LEVEL_BAR:=gtk_level_bar_get_type;
  end;

function GTK_LEVEL_BAR(obj : longint) : longint;
begin
  GTK_LEVEL_BAR:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_LEVEL_BAR,GtkLevelBar);
end;

function GTK_IS_LEVEL_BAR(obj : longint) : longint;
begin
  GTK_IS_LEVEL_BAR:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_LEVEL_BAR);
end;


end.
