
unit gtkentry;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkentry.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkentry.h
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
PGdkContentProvider  = ^GdkContentProvider;
PGdkPaintable  = ^GdkPaintable;
PGdkRectangle  = ^GdkRectangle;
PGIcon  = ^GIcon;
PGMenuModel  = ^GMenuModel;
PGtkEntry  = ^GtkEntry;
PGtkEntryBuffer  = ^GtkEntryBuffer;
PGtkEntryClass  = ^GtkEntryClass;
PGtkEntryCompletion  = ^GtkEntryCompletion;
PGtkEntryIconPosition  = ^GtkEntryIconPosition;
PGtkWidget  = ^GtkWidget;
PPangoAttrList  = ^PangoAttrList;
PPangoTabArray  = ^PangoTabArray;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef __GTK_ENTRY_H__}
{$define __GTK_ENTRY_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkeditable.h>}
{$include <gtk/gtkimcontext.h>}
{$include <gtk/gtkentrybuffer.h>}
{$include <gtk/gtkentrycompletion.h>}
{$include <gtk/gtkimage.h>}


function GTK_TYPE_ENTRY : longint; { return type might be wrong }

function GTK_ENTRY(obj : longint) : longint;

function GTK_ENTRY_CLASS(klass : longint) : longint;

function GTK_IS_ENTRY(obj : longint) : longint;

function GTK_IS_ENTRY_CLASS(klass : longint) : longint;

function GTK_ENTRY_GET_CLASS(obj : longint) : longint;


type
  PGtkEntryIconPosition = ^TGtkEntryIconPosition;
  TGtkEntryIconPosition = (GTK_ENTRY_ICON_PRIMARY,GTK_ENTRY_ICON_SECONDARY
    );

  PGtkEntry = ^TGtkEntry;
  TGtkEntry = record
      parent_instance : TGtkWidget;
    end;




  PGtkEntryClass = ^TGtkEntryClass;
  TGtkEntryClass = record
      parent_class : TGtkWidgetClass;
      activate : procedure (entry:PGtkEntry);cdecl;
      padding : array[0..7] of Tgpointer;
    end;



function gtk_entry_get_type:TGType;cdecl;external;

function gtk_entry_new:PGtkWidget;cdecl;external;

function gtk_entry_new_with_buffer(buffer:PGtkEntryBuffer):PGtkWidget;cdecl;external;

function gtk_entry_get_buffer(entry:PGtkEntry):PGtkEntryBuffer;cdecl;external;

procedure gtk_entry_set_buffer(entry:PGtkEntry; buffer:PGtkEntryBuffer);cdecl;external;

procedure gtk_entry_set_visibility(entry:PGtkEntry; visible:Tgboolean);cdecl;external;

function gtk_entry_get_visibility(entry:PGtkEntry):Tgboolean;cdecl;external;

procedure gtk_entry_set_invisible_char(entry:PGtkEntry; ch:Tgunichar);cdecl;external;

function gtk_entry_get_invisible_char(entry:PGtkEntry):Tgunichar;cdecl;external;

procedure gtk_entry_unset_invisible_char(entry:PGtkEntry);cdecl;external;

procedure gtk_entry_set_has_frame(entry:PGtkEntry; setting:Tgboolean);cdecl;external;

function gtk_entry_get_has_frame(entry:PGtkEntry):Tgboolean;cdecl;external;

procedure gtk_entry_set_overwrite_mode(entry:PGtkEntry; overwrite:Tgboolean);cdecl;external;

function gtk_entry_get_overwrite_mode(entry:PGtkEntry):Tgboolean;cdecl;external;


procedure gtk_entry_set_max_length(entry:PGtkEntry; max:longint);cdecl;external;

function gtk_entry_get_max_length(entry:PGtkEntry):longint;cdecl;external;

function gtk_entry_get_text_length(entry:PGtkEntry):Tguint16;cdecl;external;

procedure gtk_entry_set_activates_default(entry:PGtkEntry; setting:Tgboolean);cdecl;external;

function gtk_entry_get_activates_default(entry:PGtkEntry):Tgboolean;cdecl;external;

procedure gtk_entry_set_alignment(entry:PGtkEntry; xalign:single);cdecl;external;

function gtk_entry_get_alignment(entry:PGtkEntry):single;cdecl;external;

procedure gtk_entry_set_completion(entry:PGtkEntry; completion:PGtkEntryCompletion);cdecl;external;

function gtk_entry_get_completion(entry:PGtkEntry):PGtkEntryCompletion;cdecl;external;


procedure gtk_entry_set_progress_fraction(entry:PGtkEntry; fraction:Tdouble);cdecl;external;

function gtk_entry_get_progress_fraction(entry:PGtkEntry):Tdouble;cdecl;external;

procedure gtk_entry_set_progress_pulse_step(entry:PGtkEntry; fraction:Tdouble);cdecl;external;

function gtk_entry_get_progress_pulse_step(entry:PGtkEntry):Tdouble;cdecl;external;

procedure gtk_entry_progress_pulse(entry:PGtkEntry);cdecl;external;

function gtk_entry_get_placeholder_text(entry:PGtkEntry):Pchar;cdecl;external;

procedure gtk_entry_set_placeholder_text(entry:PGtkEntry; text:Pchar);cdecl;external;


procedure gtk_entry_set_icon_from_paintable(entry:PGtkEntry; icon_pos:TGtkEntryIconPosition; paintable:PGdkPaintable);cdecl;external;

procedure gtk_entry_set_icon_from_icon_name(entry:PGtkEntry; icon_pos:TGtkEntryIconPosition; icon_name:Pchar);cdecl;external;

procedure gtk_entry_set_icon_from_gicon(entry:PGtkEntry; icon_pos:TGtkEntryIconPosition; icon:PGIcon);cdecl;external;

function gtk_entry_get_icon_storage_type(entry:PGtkEntry; icon_pos:TGtkEntryIconPosition):TGtkImageType;cdecl;external;

function gtk_entry_get_icon_paintable(entry:PGtkEntry; icon_pos:TGtkEntryIconPosition):PGdkPaintable;cdecl;external;

function gtk_entry_get_icon_name(entry:PGtkEntry; icon_pos:TGtkEntryIconPosition):Pchar;cdecl;external;

function gtk_entry_get_icon_gicon(entry:PGtkEntry; icon_pos:TGtkEntryIconPosition):PGIcon;cdecl;external;

procedure gtk_entry_set_icon_activatable(entry:PGtkEntry; icon_pos:TGtkEntryIconPosition; activatable:Tgboolean);cdecl;external;

function gtk_entry_get_icon_activatable(entry:PGtkEntry; icon_pos:TGtkEntryIconPosition):Tgboolean;cdecl;external;

procedure gtk_entry_set_icon_sensitive(entry:PGtkEntry; icon_pos:TGtkEntryIconPosition; sensitive:Tgboolean);cdecl;external;

function gtk_entry_get_icon_sensitive(entry:PGtkEntry; icon_pos:TGtkEntryIconPosition):Tgboolean;cdecl;external;

function gtk_entry_get_icon_at_pos(entry:PGtkEntry; x:longint; y:longint):longint;cdecl;external;

procedure gtk_entry_set_icon_tooltip_text(entry:PGtkEntry; icon_pos:TGtkEntryIconPosition; tooltip:Pchar);cdecl;external;

function gtk_entry_get_icon_tooltip_text(entry:PGtkEntry; icon_pos:TGtkEntryIconPosition):Pchar;cdecl;external;

procedure gtk_entry_set_icon_tooltip_markup(entry:PGtkEntry; icon_pos:TGtkEntryIconPosition; tooltip:Pchar);cdecl;external;

function gtk_entry_get_icon_tooltip_markup(entry:PGtkEntry; icon_pos:TGtkEntryIconPosition):Pchar;cdecl;external;

procedure gtk_entry_set_icon_drag_source(entry:PGtkEntry; icon_pos:TGtkEntryIconPosition; provider:PGdkContentProvider; actions:TGdkDragAction);cdecl;external;

function gtk_entry_get_current_icon_drag_source(entry:PGtkEntry):longint;cdecl;external;

procedure gtk_entry_get_icon_area(entry:PGtkEntry; icon_pos:TGtkEntryIconPosition; icon_area:PGdkRectangle);cdecl;external;

procedure gtk_entry_reset_im_context(entry:PGtkEntry);cdecl;external;

procedure gtk_entry_set_input_purpose(entry:PGtkEntry; purpose:TGtkInputPurpose);cdecl;external;

function gtk_entry_get_input_purpose(entry:PGtkEntry):TGtkInputPurpose;cdecl;external;

procedure gtk_entry_set_input_hints(entry:PGtkEntry; hints:TGtkInputHints);cdecl;external;

function gtk_entry_get_input_hints(entry:PGtkEntry):TGtkInputHints;cdecl;external;

procedure gtk_entry_set_attributes(entry:PGtkEntry; attrs:PPangoAttrList);cdecl;external;

function gtk_entry_get_attributes(entry:PGtkEntry):PPangoAttrList;cdecl;external;

procedure gtk_entry_set_tabs(entry:PGtkEntry; tabs:PPangoTabArray);cdecl;external;

function gtk_entry_get_tabs(entry:PGtkEntry):PPangoTabArray;cdecl;external;

function gtk_entry_grab_focus_without_selecting(entry:PGtkEntry):Tgboolean;cdecl;external;

procedure gtk_entry_set_extra_menu(entry:PGtkEntry; model:PGMenuModel);cdecl;external;

function gtk_entry_get_extra_menu(entry:PGtkEntry):PGMenuModel;cdecl;external;

{$endif}


implementation

function GTK_TYPE_ENTRY : longint; { return type might be wrong }
  begin
    GTK_TYPE_ENTRY:=gtk_entry_get_type;
  end;

function GTK_ENTRY(obj : longint) : longint;
begin
  GTK_ENTRY:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_ENTRY,GtkEntry);
end;

function GTK_ENTRY_CLASS(klass : longint) : longint;
begin
  GTK_ENTRY_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_ENTRY,GtkEntryClass);
end;

function GTK_IS_ENTRY(obj : longint) : longint;
begin
  GTK_IS_ENTRY:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_ENTRY);
end;

function GTK_IS_ENTRY_CLASS(klass : longint) : longint;
begin
  GTK_IS_ENTRY_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_ENTRY);
end;

function GTK_ENTRY_GET_CLASS(obj : longint) : longint;
begin
  GTK_ENTRY_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_ENTRY,GtkEntryClass);
end;


end.
