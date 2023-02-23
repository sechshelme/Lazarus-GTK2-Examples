
unit gtkfilechooser;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkfilechooser.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkfilechooser.h
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
PGError  = ^GError;
PGFile  = ^GFile;
PGListModel  = ^GListModel;
PGtkFileChooser  = ^GtkFileChooser;
PGtkFileChooserAction  = ^GtkFileChooserAction;
PGtkFileChooserError  = ^GtkFileChooserError;
PGtkFileFilter  = ^GtkFileFilter;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_FILE_CHOOSER_H__}
{$define __GTK_FILE_CHOOSER_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkfilefilter.h>}
{$include <gtk/gtkwidget.h>}


function GTK_TYPE_FILE_CHOOSER : longint; { return type might be wrong }

function GTK_FILE_CHOOSER(obj : longint) : longint;

function GTK_IS_FILE_CHOOSER(obj : longint) : longint;

type


  PGtkFileChooserAction = ^TGtkFileChooserAction;
  TGtkFileChooserAction = (GTK_FILE_CHOOSER_ACTION_OPEN,GTK_FILE_CHOOSER_ACTION_SAVE,
    GTK_FILE_CHOOSER_ACTION_SELECT_FOLDER
    );


function gtk_file_chooser_get_type:TGType;cdecl;external;


function GTK_FILE_CHOOSER_ERROR : longint; { return type might be wrong }


type
  PGtkFileChooserError = ^TGtkFileChooserError;
  TGtkFileChooserError = (GTK_FILE_CHOOSER_ERROR_NONEXISTENT,GTK_FILE_CHOOSER_ERROR_BAD_FILENAME,
    GTK_FILE_CHOOSER_ERROR_ALREADY_EXISTS,
    GTK_FILE_CHOOSER_ERROR_INCOMPLETE_HOSTNAME
    );


function gtk_file_chooser_error_quark:TGQuark;cdecl;external;


procedure gtk_file_chooser_set_action(chooser:PGtkFileChooser; action:TGtkFileChooserAction);cdecl;external;

function gtk_file_chooser_get_action(chooser:PGtkFileChooser):TGtkFileChooserAction;cdecl;external;

procedure gtk_file_chooser_set_select_multiple(chooser:PGtkFileChooser; select_multiple:Tgboolean);cdecl;external;

function gtk_file_chooser_get_select_multiple(chooser:PGtkFileChooser):Tgboolean;cdecl;external;

procedure gtk_file_chooser_set_create_folders(chooser:PGtkFileChooser; create_folders:Tgboolean);cdecl;external;

function gtk_file_chooser_get_create_folders(chooser:PGtkFileChooser):Tgboolean;cdecl;external;


procedure gtk_file_chooser_set_current_name(chooser:PGtkFileChooser; name:Pchar);cdecl;external;

function gtk_file_chooser_get_current_name(chooser:PGtkFileChooser):Pchar;cdecl;external;


function gtk_file_chooser_get_file(chooser:PGtkFileChooser):PGFile;cdecl;external;

function gtk_file_chooser_set_file(chooser:PGtkFileChooser; file:PGFile; error:PPGError):Tgboolean;cdecl;external;

function gtk_file_chooser_get_files(chooser:PGtkFileChooser):PGListModel;cdecl;external;

function gtk_file_chooser_set_current_folder(chooser:PGtkFileChooser; file:PGFile; error:PPGError):Tgboolean;cdecl;external;

function gtk_file_chooser_get_current_folder(chooser:PGtkFileChooser):PGFile;cdecl;external;


procedure gtk_file_chooser_add_filter(chooser:PGtkFileChooser; filter:PGtkFileFilter);cdecl;external;

procedure gtk_file_chooser_remove_filter(chooser:PGtkFileChooser; filter:PGtkFileFilter);cdecl;external;

function gtk_file_chooser_get_filters(chooser:PGtkFileChooser):PGListModel;cdecl;external;


procedure gtk_file_chooser_set_filter(chooser:PGtkFileChooser; filter:PGtkFileFilter);cdecl;external;

function gtk_file_chooser_get_filter(chooser:PGtkFileChooser):PGtkFileFilter;cdecl;external;


function gtk_file_chooser_add_shortcut_folder(chooser:PGtkFileChooser; folder:PGFile; error:PPGError):Tgboolean;cdecl;external;

function gtk_file_chooser_remove_shortcut_folder(chooser:PGtkFileChooser; folder:PGFile; error:PPGError):Tgboolean;cdecl;external;

function gtk_file_chooser_get_shortcut_folders(chooser:PGtkFileChooser):PGListModel;cdecl;external;


procedure gtk_file_chooser_add_choice(chooser:PGtkFileChooser; id:Pchar; _label:Pchar; options:PPchar; option_labels:PPchar);cdecl;external;

procedure gtk_file_chooser_remove_choice(chooser:PGtkFileChooser; id:Pchar);cdecl;external;

procedure gtk_file_chooser_set_choice(chooser:PGtkFileChooser; id:Pchar; option:Pchar);cdecl;external;

function gtk_file_chooser_get_choice(chooser:PGtkFileChooser; id:Pchar):Pchar;cdecl;external;

{$endif}


implementation

function GTK_TYPE_FILE_CHOOSER : longint; { return type might be wrong }
  begin
    GTK_TYPE_FILE_CHOOSER:=gtk_file_chooser_get_type;
  end;

function GTK_FILE_CHOOSER(obj : longint) : longint;
begin
  GTK_FILE_CHOOSER:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_FILE_CHOOSER,GtkFileChooser);
end;

function GTK_IS_FILE_CHOOSER(obj : longint) : longint;
begin
  GTK_IS_FILE_CHOOSER:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_FILE_CHOOSER);
end;

function GTK_FILE_CHOOSER_ERROR : longint; { return type might be wrong }
  begin
    GTK_FILE_CHOOSER_ERROR:=gtk_file_chooser_error_quark;
  end;


end.
