
unit gtktext;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtktext.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtktext.h
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
PGMenuModel  = ^GMenuModel;
Pgraphene_rect_t  = ^graphene_rect_t;
PGtkEntryBuffer  = ^GtkEntryBuffer;
PGtkText  = ^GtkText;
PGtkWidget  = ^GtkWidget;
PPangoAttrList  = ^PangoAttrList;
PPangoTabArray  = ^PangoTabArray;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef __GTK_TEXT_H__}
{$define __GTK_TEXT_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkeditable.h>}
{$include <gtk/gtkentrybuffer.h>}


function GTK_TYPE_TEXT : longint; { return type might be wrong }

function GTK_TEXT(obj : longint) : longint;

function GTK_IS_TEXT(obj : longint) : longint;

type

  PGtkText = ^TGtkText;
  TGtkText = record
      parent_instance : TGtkWidget;
    end;



function gtk_text_get_type:TGType;cdecl;external;

function gtk_text_new:PGtkWidget;cdecl;external;

function gtk_text_new_with_buffer(buffer:PGtkEntryBuffer):PGtkWidget;cdecl;external;

function gtk_text_get_buffer(self:PGtkText):PGtkEntryBuffer;cdecl;external;

procedure gtk_text_set_buffer(self:PGtkText; buffer:PGtkEntryBuffer);cdecl;external;

procedure gtk_text_set_visibility(self:PGtkText; visible:Tgboolean);cdecl;external;

function gtk_text_get_visibility(self:PGtkText):Tgboolean;cdecl;external;

procedure gtk_text_set_invisible_char(self:PGtkText; ch:Tgunichar);cdecl;external;

function gtk_text_get_invisible_char(self:PGtkText):Tgunichar;cdecl;external;

procedure gtk_text_unset_invisible_char(self:PGtkText);cdecl;external;

procedure gtk_text_set_overwrite_mode(self:PGtkText; overwrite:Tgboolean);cdecl;external;

function gtk_text_get_overwrite_mode(self:PGtkText):Tgboolean;cdecl;external;

procedure gtk_text_set_max_length(self:PGtkText; length:longint);cdecl;external;

function gtk_text_get_max_length(self:PGtkText):longint;cdecl;external;

function gtk_text_get_text_length(self:PGtkText):Tguint16;cdecl;external;

procedure gtk_text_set_activates_default(self:PGtkText; activates:Tgboolean);cdecl;external;

function gtk_text_get_activates_default(self:PGtkText):Tgboolean;cdecl;external;

function gtk_text_get_placeholder_text(self:PGtkText):Pchar;cdecl;external;

procedure gtk_text_set_placeholder_text(self:PGtkText; text:Pchar);cdecl;external;

procedure gtk_text_set_input_purpose(self:PGtkText; purpose:TGtkInputPurpose);cdecl;external;

function gtk_text_get_input_purpose(self:PGtkText):TGtkInputPurpose;cdecl;external;

procedure gtk_text_set_input_hints(self:PGtkText; hints:TGtkInputHints);cdecl;external;

function gtk_text_get_input_hints(self:PGtkText):TGtkInputHints;cdecl;external;

procedure gtk_text_set_attributes(self:PGtkText; attrs:PPangoAttrList);cdecl;external;

function gtk_text_get_attributes(self:PGtkText):PPangoAttrList;cdecl;external;

procedure gtk_text_set_tabs(self:PGtkText; tabs:PPangoTabArray);cdecl;external;

function gtk_text_get_tabs(self:PGtkText):PPangoTabArray;cdecl;external;

function gtk_text_grab_focus_without_selecting(self:PGtkText):Tgboolean;cdecl;external;

procedure gtk_text_set_extra_menu(self:PGtkText; model:PGMenuModel);cdecl;external;

function gtk_text_get_extra_menu(self:PGtkText):PGMenuModel;cdecl;external;

procedure gtk_text_set_enable_emoji_completion(self:PGtkText; enable_emoji_completion:Tgboolean);cdecl;external;

function gtk_text_get_enable_emoji_completion(self:PGtkText):Tgboolean;cdecl;external;

procedure gtk_text_set_propagate_text_width(self:PGtkText; propagate_text_width:Tgboolean);cdecl;external;

function gtk_text_get_propagate_text_width(self:PGtkText):Tgboolean;cdecl;external;

procedure gtk_text_set_truncate_multiline(self:PGtkText; truncate_multiline:Tgboolean);cdecl;external;

function gtk_text_get_truncate_multiline(self:PGtkText):Tgboolean;cdecl;external;

procedure gtk_text_compute_cursor_extents(self:PGtkText; position:Tgsize; strong:Pgraphene_rect_t; weak:Pgraphene_rect_t);cdecl;external;

{$endif}


implementation

function GTK_TYPE_TEXT : longint; { return type might be wrong }
  begin
    GTK_TYPE_TEXT:=gtk_text_get_type;
  end;

function GTK_TEXT(obj : longint) : longint;
begin
  GTK_TEXT:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_TEXT,GtkText);
end;

function GTK_IS_TEXT(obj : longint) : longint;
begin
  GTK_IS_TEXT:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_TEXT);
end;


end.
