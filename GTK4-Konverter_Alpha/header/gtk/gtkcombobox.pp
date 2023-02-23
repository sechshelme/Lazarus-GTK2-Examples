
unit gtkcombobox;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkcombobox.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkcombobox.h
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
PGdkDevice  = ^GdkDevice;
PGtkComboBox  = ^GtkComboBox;
PGtkComboBoxClass  = ^GtkComboBoxClass;
PGtkTreeIter  = ^GtkTreeIter;
PGtkTreeModel  = ^GtkTreeModel;
PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_COMBO_BOX_H__}
{$define __GTK_COMBO_BOX_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwidget.h>}
{$include <gtk/gtktreemodel.h>}
{$include <gtk/gtktreeview.h>}


function GTK_TYPE_COMBO_BOX : longint; { return type might be wrong }

function GTK_COMBO_BOX(obj : longint) : longint;

function GTK_COMBO_BOX_CLASS(vtable : longint) : longint;

function GTK_IS_COMBO_BOX(obj : longint) : longint;

function GTK_IS_COMBO_BOX_CLASS(vtable : longint) : longint;

function GTK_COMBO_BOX_GET_CLASS(inst : longint) : longint;

type
  PGtkComboBox = ^TGtkComboBox;
  TGtkComboBox = record
      parent_instance : TGtkWidget;
    end;





  PGtkComboBoxClass = ^TGtkComboBoxClass;
  TGtkComboBoxClass = record
      parent_class : TGtkWidgetClass;
      changed : procedure (combo_box:PGtkComboBox);cdecl;
      format_entry_text : function (combo_box:PGtkComboBox; path:Pchar):Pchar;cdecl;
      activate : procedure (combo_box:PGtkComboBox);cdecl;
      padding : array[0..6] of Tgpointer;
    end;




function gtk_combo_box_get_type:TGType;cdecl;external;

function gtk_combo_box_new:PGtkWidget;cdecl;external;

function gtk_combo_box_new_with_entry:PGtkWidget;cdecl;external;

function gtk_combo_box_new_with_model(model:PGtkTreeModel):PGtkWidget;cdecl;external;

function gtk_combo_box_new_with_model_and_entry(model:PGtkTreeModel):PGtkWidget;cdecl;external;


function gtk_combo_box_get_active(combo_box:PGtkComboBox):longint;cdecl;external;

procedure gtk_combo_box_set_active(combo_box:PGtkComboBox; index_:longint);cdecl;external;

function gtk_combo_box_get_active_iter(combo_box:PGtkComboBox; iter:PGtkTreeIter):Tgboolean;cdecl;external;

procedure gtk_combo_box_set_active_iter(combo_box:PGtkComboBox; iter:PGtkTreeIter);cdecl;external;


procedure gtk_combo_box_set_model(combo_box:PGtkComboBox; model:PGtkTreeModel);cdecl;external;

function gtk_combo_box_get_model(combo_box:PGtkComboBox):PGtkTreeModel;cdecl;external;

function gtk_combo_box_get_row_separator_func(combo_box:PGtkComboBox):TGtkTreeViewRowSeparatorFunc;cdecl;external;

procedure gtk_combo_box_set_row_separator_func(combo_box:PGtkComboBox; func:TGtkTreeViewRowSeparatorFunc; data:Tgpointer; destroy:TGDestroyNotify);cdecl;external;

procedure gtk_combo_box_set_button_sensitivity(combo_box:PGtkComboBox; sensitivity:TGtkSensitivityType);cdecl;external;

function gtk_combo_box_get_button_sensitivity(combo_box:PGtkComboBox):TGtkSensitivityType;cdecl;external;

function gtk_combo_box_get_has_entry(combo_box:PGtkComboBox):Tgboolean;cdecl;external;

procedure gtk_combo_box_set_entry_text_column(combo_box:PGtkComboBox; text_column:longint);cdecl;external;

function gtk_combo_box_get_entry_text_column(combo_box:PGtkComboBox):longint;cdecl;external;

procedure gtk_combo_box_set_popup_fixed_width(combo_box:PGtkComboBox; fixed:Tgboolean);cdecl;external;

function gtk_combo_box_get_popup_fixed_width(combo_box:PGtkComboBox):Tgboolean;cdecl;external;


procedure gtk_combo_box_popup(combo_box:PGtkComboBox);cdecl;external;

procedure gtk_combo_box_popup_for_device(combo_box:PGtkComboBox; device:PGdkDevice);cdecl;external;

procedure gtk_combo_box_popdown(combo_box:PGtkComboBox);cdecl;external;

function gtk_combo_box_get_id_column(combo_box:PGtkComboBox):longint;cdecl;external;

procedure gtk_combo_box_set_id_column(combo_box:PGtkComboBox; id_column:longint);cdecl;external;

function gtk_combo_box_get_active_id(combo_box:PGtkComboBox):Pchar;cdecl;external;

function gtk_combo_box_set_active_id(combo_box:PGtkComboBox; active_id:Pchar):Tgboolean;cdecl;external;

procedure gtk_combo_box_set_child(combo_box:PGtkComboBox; child:PGtkWidget);cdecl;external;

function gtk_combo_box_get_child(combo_box:PGtkComboBox):PGtkWidget;cdecl;external;

{$endif}


implementation

function GTK_TYPE_COMBO_BOX : longint; { return type might be wrong }
  begin
    GTK_TYPE_COMBO_BOX:=gtk_combo_box_get_type;
  end;

function GTK_COMBO_BOX(obj : longint) : longint;
begin
  GTK_COMBO_BOX:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_COMBO_BOX,GtkComboBox);
end;

function GTK_COMBO_BOX_CLASS(vtable : longint) : longint;
begin
  GTK_COMBO_BOX_CLASS:=G_TYPE_CHECK_CLASS_CAST(vtable,GTK_TYPE_COMBO_BOX,GtkComboBoxClass);
end;

function GTK_IS_COMBO_BOX(obj : longint) : longint;
begin
  GTK_IS_COMBO_BOX:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_COMBO_BOX);
end;

function GTK_IS_COMBO_BOX_CLASS(vtable : longint) : longint;
begin
  GTK_IS_COMBO_BOX_CLASS:=G_TYPE_CHECK_CLASS_TYPE(vtable,GTK_TYPE_COMBO_BOX);
end;

function GTK_COMBO_BOX_GET_CLASS(inst : longint) : longint;
begin
  GTK_COMBO_BOX_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(inst,GTK_TYPE_COMBO_BOX,GtkComboBoxClass);
end;


end.
