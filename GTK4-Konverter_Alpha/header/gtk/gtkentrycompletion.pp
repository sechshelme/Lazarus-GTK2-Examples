
unit gtkentrycompletion;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkentrycompletion.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkentrycompletion.h
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
PGtkCellArea  = ^GtkCellArea;
PGtkEntryCompletion  = ^GtkEntryCompletion;
PGtkTreeIter  = ^GtkTreeIter;
PGtkTreeModel  = ^GtkTreeModel;
PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_ENTRY_COMPLETION_H__}
{$define __GTK_ENTRY_COMPLETION_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gdk/gdk.h>}
{$include <gtk/gtktreemodel.h>}
{$include <gtk/gtkliststore.h>}
{$include <gtk/gtkcellarea.h>}
{$include <gtk/gtktreeviewcolumn.h>}
{$include <gtk/gtktreemodelfilter.h>}


function GTK_TYPE_ENTRY_COMPLETION : longint; { return type might be wrong }

function GTK_ENTRY_COMPLETION(obj : longint) : longint;

function GTK_IS_ENTRY_COMPLETION(obj : longint) : longint;

type


  TGtkEntryCompletionMatchFunc = function (completion:PGtkEntryCompletion; key:Pchar; iter:PGtkTreeIter; user_data:Tgpointer):Tgboolean;cdecl;


function gtk_entry_completion_get_type:TGType;cdecl;external;

function gtk_entry_completion_new:PGtkEntryCompletion;cdecl;external;

function gtk_entry_completion_new_with_area(area:PGtkCellArea):PGtkEntryCompletion;cdecl;external;

function gtk_entry_completion_get_entry(completion:PGtkEntryCompletion):PGtkWidget;cdecl;external;

procedure gtk_entry_completion_set_model(completion:PGtkEntryCompletion; model:PGtkTreeModel);cdecl;external;

function gtk_entry_completion_get_model(completion:PGtkEntryCompletion):PGtkTreeModel;cdecl;external;

procedure gtk_entry_completion_set_match_func(completion:PGtkEntryCompletion; func:TGtkEntryCompletionMatchFunc; func_data:Tgpointer; func_notify:TGDestroyNotify);cdecl;external;

procedure gtk_entry_completion_set_minimum_key_length(completion:PGtkEntryCompletion; length:longint);cdecl;external;

function gtk_entry_completion_get_minimum_key_length(completion:PGtkEntryCompletion):longint;cdecl;external;

function gtk_entry_completion_compute_prefix(completion:PGtkEntryCompletion; key:Pchar):Pchar;cdecl;external;

procedure gtk_entry_completion_complete(completion:PGtkEntryCompletion);cdecl;external;

procedure gtk_entry_completion_insert_prefix(completion:PGtkEntryCompletion);cdecl;external;

procedure gtk_entry_completion_set_inline_completion(completion:PGtkEntryCompletion; inline_completion:Tgboolean);cdecl;external;

function gtk_entry_completion_get_inline_completion(completion:PGtkEntryCompletion):Tgboolean;cdecl;external;

procedure gtk_entry_completion_set_inline_selection(completion:PGtkEntryCompletion; inline_selection:Tgboolean);cdecl;external;

function gtk_entry_completion_get_inline_selection(completion:PGtkEntryCompletion):Tgboolean;cdecl;external;

procedure gtk_entry_completion_set_popup_completion(completion:PGtkEntryCompletion; popup_completion:Tgboolean);cdecl;external;

function gtk_entry_completion_get_popup_completion(completion:PGtkEntryCompletion):Tgboolean;cdecl;external;

procedure gtk_entry_completion_set_popup_set_width(completion:PGtkEntryCompletion; popup_set_width:Tgboolean);cdecl;external;

function gtk_entry_completion_get_popup_set_width(completion:PGtkEntryCompletion):Tgboolean;cdecl;external;

procedure gtk_entry_completion_set_popup_single_match(completion:PGtkEntryCompletion; popup_single_match:Tgboolean);cdecl;external;

function gtk_entry_completion_get_popup_single_match(completion:PGtkEntryCompletion):Tgboolean;cdecl;external;

function gtk_entry_completion_get_completion_prefix(completion:PGtkEntryCompletion):Pchar;cdecl;external;


procedure gtk_entry_completion_set_text_column(completion:PGtkEntryCompletion; column:longint);cdecl;external;

function gtk_entry_completion_get_text_column(completion:PGtkEntryCompletion):longint;cdecl;external;

{$endif}


implementation

function GTK_TYPE_ENTRY_COMPLETION : longint; { return type might be wrong }
  begin
    GTK_TYPE_ENTRY_COMPLETION:=gtk_entry_completion_get_type;
  end;

function GTK_ENTRY_COMPLETION(obj : longint) : longint;
begin
  GTK_ENTRY_COMPLETION:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_ENTRY_COMPLETION,GtkEntryCompletion);
end;

function GTK_IS_ENTRY_COMPLETION(obj : longint) : longint;
begin
  GTK_IS_ENTRY_COMPLETION:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_ENTRY_COMPLETION);
end;


end.
