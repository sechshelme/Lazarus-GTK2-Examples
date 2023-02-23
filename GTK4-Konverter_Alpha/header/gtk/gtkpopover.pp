
unit gtkpopover;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkpopover.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkpopover.h
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
PGdkRectangle  = ^GdkRectangle;
PGtkPopover  = ^GtkPopover;
PGtkPopoverClass  = ^GtkPopoverClass;
PGtkWidget  = ^GtkWidget;
Plongint  = ^longint;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_POPOVER_H__}
{$define __GTK_POPOVER_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwidget.h>}


function GTK_TYPE_POPOVER : longint; { return type might be wrong }

function GTK_POPOVER(obj : longint) : longint;

function GTK_POPOVER_CLASS(klass : longint) : longint;

function GTK_IS_POPOVER(obj : longint) : longint;

function GTK_IS_POPOVER_CLASS(klass : longint) : longint;

function GTK_POPOVER_GET_CLASS(obj : longint) : longint;

type
  PGtkPopover = ^TGtkPopover;
  TGtkPopover = record
      parent : TGtkWidget;
    end;


  PGtkPopoverClass = ^TGtkPopoverClass;
  TGtkPopoverClass = record
      parent_class : TGtkWidgetClass;
      closed : procedure (popover:PGtkPopover);cdecl;
      activate_default : procedure (popover:PGtkPopover);cdecl;
      reserved : array[0..7] of Tgpointer;
    end;



function gtk_popover_get_type:TGType;cdecl;external;

function gtk_popover_new:PGtkWidget;cdecl;external;

procedure gtk_popover_set_child(popover:PGtkPopover; child:PGtkWidget);cdecl;external;

function gtk_popover_get_child(popover:PGtkPopover):PGtkWidget;cdecl;external;

procedure gtk_popover_set_pointing_to(popover:PGtkPopover; rect:PGdkRectangle);cdecl;external;

function gtk_popover_get_pointing_to(popover:PGtkPopover; rect:PGdkRectangle):Tgboolean;cdecl;external;

procedure gtk_popover_set_position(popover:PGtkPopover; position:TGtkPositionType);cdecl;external;

function gtk_popover_get_position(popover:PGtkPopover):TGtkPositionType;cdecl;external;

procedure gtk_popover_set_autohide(popover:PGtkPopover; autohide:Tgboolean);cdecl;external;

function gtk_popover_get_autohide(popover:PGtkPopover):Tgboolean;cdecl;external;

procedure gtk_popover_set_has_arrow(popover:PGtkPopover; has_arrow:Tgboolean);cdecl;external;

function gtk_popover_get_has_arrow(popover:PGtkPopover):Tgboolean;cdecl;external;

procedure gtk_popover_set_mnemonics_visible(popover:PGtkPopover; mnemonics_visible:Tgboolean);cdecl;external;

function gtk_popover_get_mnemonics_visible(popover:PGtkPopover):Tgboolean;cdecl;external;

procedure gtk_popover_popup(popover:PGtkPopover);cdecl;external;

procedure gtk_popover_popdown(popover:PGtkPopover);cdecl;external;

procedure gtk_popover_set_offset(popover:PGtkPopover; x_offset:longint; y_offset:longint);cdecl;external;

procedure gtk_popover_get_offset(popover:PGtkPopover; x_offset:Plongint; y_offset:Plongint);cdecl;external;

procedure gtk_popover_set_cascade_popdown(popover:PGtkPopover; cascade_popdown:Tgboolean);cdecl;external;

function gtk_popover_get_cascade_popdown(popover:PGtkPopover):Tgboolean;cdecl;external;

procedure gtk_popover_set_default_widget(popover:PGtkPopover; widget:PGtkWidget);cdecl;external;

procedure gtk_popover_present(popover:PGtkPopover);cdecl;external;

{$endif}


implementation

function GTK_TYPE_POPOVER : longint; { return type might be wrong }
  begin
    GTK_TYPE_POPOVER:=gtk_popover_get_type;
  end;

function GTK_POPOVER(obj : longint) : longint;
begin
  GTK_POPOVER:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_POPOVER,GtkPopover);
end;

function GTK_POPOVER_CLASS(klass : longint) : longint;
begin
  GTK_POPOVER_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_POPOVER,GtkPopoverClass);
end;

function GTK_IS_POPOVER(obj : longint) : longint;
begin
  GTK_IS_POPOVER:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_POPOVER);
end;

function GTK_IS_POPOVER_CLASS(klass : longint) : longint;
begin
  GTK_IS_POPOVER_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_POPOVER);
end;

function GTK_POPOVER_GET_CLASS(obj : longint) : longint;
begin
  GTK_POPOVER_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_POPOVER,GtkPopoverClass);
end;


end.
