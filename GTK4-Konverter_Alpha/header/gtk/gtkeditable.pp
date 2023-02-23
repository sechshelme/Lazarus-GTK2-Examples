
unit gtkeditable;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkeditable.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkeditable.h
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
PGObject  = ^GObject;
PGObjectClass  = ^GObjectClass;
PGParamSpec  = ^GParamSpec;
PGtkEditable  = ^GtkEditable;
PGtkEditableInterface  = ^GtkEditableInterface;
PGtkEditableProperties  = ^GtkEditableProperties;
PGValue  = ^GValue;
Plongint  = ^longint;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef __GTK_EDITABLE_H__}
{$define __GTK_EDITABLE_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwidget.h>}


function GTK_TYPE_EDITABLE : longint; { return type might be wrong }

function GTK_EDITABLE(obj : longint) : longint;

function GTK_IS_EDITABLE(obj : longint) : longint;

function GTK_EDITABLE_GET_IFACE(inst : longint) : longint;

type



  PGtkEditableInterface = ^TGtkEditableInterface;
  TGtkEditableInterface = record
      base_iface : TGTypeInterface;
      insert_text : procedure (editable:PGtkEditable; text:Pchar; length:longint; position:Plongint);cdecl;
      delete_text : procedure (editable:PGtkEditable; start_pos:longint; end_pos:longint);cdecl;
      changed : procedure (editable:PGtkEditable);cdecl;
      get_text : function (editable:PGtkEditable):Pchar;cdecl;
      do_insert_text : procedure (editable:PGtkEditable; text:Pchar; length:longint; position:Plongint);cdecl;
      do_delete_text : procedure (editable:PGtkEditable; start_pos:longint; end_pos:longint);cdecl;
      get_selection_bounds : function (editable:PGtkEditable; start_pos:Plongint; end_pos:Plongint):Tgboolean;cdecl;
      set_selection_bounds : procedure (editable:PGtkEditable; start_pos:longint; end_pos:longint);cdecl;
      get_delegate : function (editable:PGtkEditable):PGtkEditable;cdecl;
    end;



function gtk_editable_get_type:TGType;cdecl;external;

function gtk_editable_get_text(editable:PGtkEditable):Pchar;cdecl;external;

procedure gtk_editable_set_text(editable:PGtkEditable; text:Pchar);cdecl;external;

(* error 
                                            int          end_pos) G_GNUC_MALLOC;
 in declarator_list *)
  var
 : char;


procedure gtk_editable_insert_text(editable:PGtkEditable; text:Pchar; length:longint; position:Plongint);cdecl;external;

procedure gtk_editable_delete_text(editable:PGtkEditable; start_pos:longint; end_pos:longint);cdecl;external;

function gtk_editable_get_selection_bounds(editable:PGtkEditable; start_pos:Plongint; end_pos:Plongint):Tgboolean;cdecl;external;

procedure gtk_editable_delete_selection(editable:PGtkEditable);cdecl;external;

procedure gtk_editable_select_region(editable:PGtkEditable; start_pos:longint; end_pos:longint);cdecl;external;

procedure gtk_editable_set_position(editable:PGtkEditable; position:longint);cdecl;external;

function gtk_editable_get_position(editable:PGtkEditable):longint;cdecl;external;

function gtk_editable_get_editable(editable:PGtkEditable):Tgboolean;cdecl;external;

procedure gtk_editable_set_editable(editable:PGtkEditable; is_editable:Tgboolean);cdecl;external;

function gtk_editable_get_alignment(editable:PGtkEditable):single;cdecl;external;

procedure gtk_editable_set_alignment(editable:PGtkEditable; xalign:single);cdecl;external;

function gtk_editable_get_width_chars(editable:PGtkEditable):longint;cdecl;external;

procedure gtk_editable_set_width_chars(editable:PGtkEditable; n_chars:longint);cdecl;external;

function gtk_editable_get_max_width_chars(editable:PGtkEditable):longint;cdecl;external;

procedure gtk_editable_set_max_width_chars(editable:PGtkEditable; n_chars:longint);cdecl;external;

function gtk_editable_get_enable_undo(editable:PGtkEditable):Tgboolean;cdecl;external;

procedure gtk_editable_set_enable_undo(editable:PGtkEditable; enable_undo:Tgboolean);cdecl;external;


type
  PGtkEditableProperties = ^TGtkEditableProperties;
  TGtkEditableProperties = (GTK_EDITABLE_PROP_TEXT,GTK_EDITABLE_PROP_CURSOR_POSITION,
    GTK_EDITABLE_PROP_SELECTION_BOUND,GTK_EDITABLE_PROP_EDITABLE,
    GTK_EDITABLE_PROP_WIDTH_CHARS,GTK_EDITABLE_PROP_MAX_WIDTH_CHARS,
    GTK_EDITABLE_PROP_XALIGN,GTK_EDITABLE_PROP_ENABLE_UNDO,
    GTK_EDITABLE_NUM_PROPERTIES);


function gtk_editable_install_properties(object_class:PGObjectClass; first_prop:Tguint):Tguint;cdecl;external;

function gtk_editable_get_delegate(editable:PGtkEditable):PGtkEditable;cdecl;external;

procedure gtk_editable_init_delegate(editable:PGtkEditable);cdecl;external;

procedure gtk_editable_finish_delegate(editable:PGtkEditable);cdecl;external;

function gtk_editable_delegate_set_property(object:PGObject; prop_id:Tguint; value:PGValue; pspec:PGParamSpec):Tgboolean;cdecl;external;

function gtk_editable_delegate_get_property(object:PGObject; prop_id:Tguint; value:PGValue; pspec:PGParamSpec):Tgboolean;cdecl;external;

{$endif}


implementation

function GTK_TYPE_EDITABLE : longint; { return type might be wrong }
  begin
    GTK_TYPE_EDITABLE:=gtk_editable_get_type;
  end;

function GTK_EDITABLE(obj : longint) : longint;
begin
  GTK_EDITABLE:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_EDITABLE,GtkEditable);
end;

function GTK_IS_EDITABLE(obj : longint) : longint;
begin
  GTK_IS_EDITABLE:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_EDITABLE);
end;

function GTK_EDITABLE_GET_IFACE(inst : longint) : longint;
begin
  GTK_EDITABLE_GET_IFACE:=G_TYPE_INSTANCE_GET_INTERFACE(inst,GTK_TYPE_EDITABLE,GtkEditableInterface);
end;


end.
