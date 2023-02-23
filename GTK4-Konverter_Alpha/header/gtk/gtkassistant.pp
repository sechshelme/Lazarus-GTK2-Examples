
unit gtkassistant;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkassistant.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkassistant.h
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
PGListModel  = ^GListModel;
PGtkAssistant  = ^GtkAssistant;
PGtkAssistantPage  = ^GtkAssistantPage;
PGtkAssistantPageType  = ^GtkAssistantPageType;
PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_ASSISTANT_H__}
{$define __GTK_ASSISTANT_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwindow.h>}


function GTK_TYPE_ASSISTANT : longint; { return type might be wrong }

function GTK_ASSISTANT(o : longint) : longint;

function GTK_IS_ASSISTANT(o : longint) : longint;


type
  PGtkAssistantPageType = ^TGtkAssistantPageType;
  TGtkAssistantPageType = (GTK_ASSISTANT_PAGE_CONTENT,GTK_ASSISTANT_PAGE_INTRO,
    GTK_ASSISTANT_PAGE_CONFIRM,GTK_ASSISTANT_PAGE_SUMMARY,
    GTK_ASSISTANT_PAGE_PROGRESS,GTK_ASSISTANT_PAGE_CUSTOM
    );

function GTK_TYPE_ASSISTANT_PAGE : longint; { return type might be wrong }

function GTK_ASSISTANT_PAGE(obj : longint) : longint;

function GTK_IS_ASSISTANT_PAGE(obj : longint) : longint;

type


  TGtkAssistantPageFunc = function (current_page:longint; data:Tgpointer):longint;cdecl;


function gtk_assistant_page_get_type:TGType;cdecl;external;

function gtk_assistant_get_type:TGType;cdecl;external;

function gtk_assistant_new:PGtkWidget;cdecl;external;

procedure gtk_assistant_next_page(assistant:PGtkAssistant);cdecl;external;

procedure gtk_assistant_previous_page(assistant:PGtkAssistant);cdecl;external;

function gtk_assistant_get_current_page(assistant:PGtkAssistant):longint;cdecl;external;

procedure gtk_assistant_set_current_page(assistant:PGtkAssistant; page_num:longint);cdecl;external;

function gtk_assistant_get_n_pages(assistant:PGtkAssistant):longint;cdecl;external;

function gtk_assistant_get_nth_page(assistant:PGtkAssistant; page_num:longint):PGtkWidget;cdecl;external;

function gtk_assistant_prepend_page(assistant:PGtkAssistant; page:PGtkWidget):longint;cdecl;external;

function gtk_assistant_append_page(assistant:PGtkAssistant; page:PGtkWidget):longint;cdecl;external;

function gtk_assistant_insert_page(assistant:PGtkAssistant; page:PGtkWidget; position:longint):longint;cdecl;external;

procedure gtk_assistant_remove_page(assistant:PGtkAssistant; page_num:longint);cdecl;external;

procedure gtk_assistant_set_forward_page_func(assistant:PGtkAssistant; page_func:TGtkAssistantPageFunc; data:Tgpointer; destroy:TGDestroyNotify);cdecl;external;

procedure gtk_assistant_set_page_type(assistant:PGtkAssistant; page:PGtkWidget; _type:TGtkAssistantPageType);cdecl;external;

function gtk_assistant_get_page_type(assistant:PGtkAssistant; page:PGtkWidget):TGtkAssistantPageType;cdecl;external;

procedure gtk_assistant_set_page_title(assistant:PGtkAssistant; page:PGtkWidget; title:Pchar);cdecl;external;

function gtk_assistant_get_page_title(assistant:PGtkAssistant; page:PGtkWidget):Pchar;cdecl;external;

procedure gtk_assistant_set_page_complete(assistant:PGtkAssistant; page:PGtkWidget; complete:Tgboolean);cdecl;external;

function gtk_assistant_get_page_complete(assistant:PGtkAssistant; page:PGtkWidget):Tgboolean;cdecl;external;

procedure gtk_assistant_add_action_widget(assistant:PGtkAssistant; child:PGtkWidget);cdecl;external;

procedure gtk_assistant_remove_action_widget(assistant:PGtkAssistant; child:PGtkWidget);cdecl;external;

procedure gtk_assistant_update_buttons_state(assistant:PGtkAssistant);cdecl;external;

procedure gtk_assistant_commit(assistant:PGtkAssistant);cdecl;external;

function gtk_assistant_get_page(assistant:PGtkAssistant; child:PGtkWidget):PGtkAssistantPage;cdecl;external;

function gtk_assistant_page_get_child(page:PGtkAssistantPage):PGtkWidget;cdecl;external;

function gtk_assistant_get_pages(assistant:PGtkAssistant):PGListModel;cdecl;external;

{$endif}


implementation

function GTK_TYPE_ASSISTANT : longint; { return type might be wrong }
  begin
    GTK_TYPE_ASSISTANT:=gtk_assistant_get_type;
  end;

function GTK_ASSISTANT(o : longint) : longint;
begin
  GTK_ASSISTANT:=G_TYPE_CHECK_INSTANCE_CAST(o,GTK_TYPE_ASSISTANT,GtkAssistant);
end;

function GTK_IS_ASSISTANT(o : longint) : longint;
begin
  GTK_IS_ASSISTANT:=G_TYPE_CHECK_INSTANCE_TYPE(o,GTK_TYPE_ASSISTANT);
end;

function GTK_TYPE_ASSISTANT_PAGE : longint; { return type might be wrong }
  begin
    GTK_TYPE_ASSISTANT_PAGE:=gtk_assistant_page_get_type;
  end;

function GTK_ASSISTANT_PAGE(obj : longint) : longint;
begin
  GTK_ASSISTANT_PAGE:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_ASSISTANT_PAGE,GtkAssistantPage);
end;

function GTK_IS_ASSISTANT_PAGE(obj : longint) : longint;
begin
  GTK_IS_ASSISTANT_PAGE:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_ASSISTANT_PAGE);
end;


end.
