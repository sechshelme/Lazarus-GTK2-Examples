
unit gtkstack;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkstack.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkstack.h
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
PGtkSelectionModel  = ^GtkSelectionModel;
PGtkStack  = ^GtkStack;
PGtkStackPage  = ^GtkStackPage;
PGtkStackTransitionType  = ^GtkStackTransitionType;
PGtkWidget  = ^GtkWidget;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_STACK_H__}
{$define __GTK_STACK_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkwidget.h>}
{$include <gtk/gtkselectionmodel.h>}


function GTK_TYPE_STACK : longint; { return type might be wrong }

function GTK_STACK(obj : longint) : longint;

function GTK_IS_STACK(obj : longint) : longint;

type

function GTK_TYPE_STACK_PAGE : longint; { return type might be wrong }

function GTK_STACK_PAGE(obj : longint) : longint;

function GTK_IS_STACK_PAGE(obj : longint) : longint;

type

  PGtkStackTransitionType = ^TGtkStackTransitionType;
  TGtkStackTransitionType = (GTK_STACK_TRANSITION_TYPE_NONE,GTK_STACK_TRANSITION_TYPE_CROSSFADE,
    GTK_STACK_TRANSITION_TYPE_SLIDE_RIGHT,
    GTK_STACK_TRANSITION_TYPE_SLIDE_LEFT,GTK_STACK_TRANSITION_TYPE_SLIDE_UP,
    GTK_STACK_TRANSITION_TYPE_SLIDE_DOWN,GTK_STACK_TRANSITION_TYPE_SLIDE_LEFT_RIGHT,
    GTK_STACK_TRANSITION_TYPE_SLIDE_UP_DOWN,
    GTK_STACK_TRANSITION_TYPE_OVER_UP,GTK_STACK_TRANSITION_TYPE_OVER_DOWN,
    GTK_STACK_TRANSITION_TYPE_OVER_LEFT,GTK_STACK_TRANSITION_TYPE_OVER_RIGHT,
    GTK_STACK_TRANSITION_TYPE_UNDER_UP,GTK_STACK_TRANSITION_TYPE_UNDER_DOWN,
    GTK_STACK_TRANSITION_TYPE_UNDER_LEFT,GTK_STACK_TRANSITION_TYPE_UNDER_RIGHT,
    GTK_STACK_TRANSITION_TYPE_OVER_UP_DOWN,
    GTK_STACK_TRANSITION_TYPE_OVER_DOWN_UP,
    GTK_STACK_TRANSITION_TYPE_OVER_LEFT_RIGHT,
    GTK_STACK_TRANSITION_TYPE_OVER_RIGHT_LEFT,
    GTK_STACK_TRANSITION_TYPE_ROTATE_LEFT,
    GTK_STACK_TRANSITION_TYPE_ROTATE_RIGHT,
    GTK_STACK_TRANSITION_TYPE_ROTATE_LEFT_RIGHT
    );


function gtk_stack_page_get_type:TGType;cdecl;external;

function gtk_stack_page_get_child(self:PGtkStackPage):PGtkWidget;cdecl;external;

function gtk_stack_page_get_visible(self:PGtkStackPage):Tgboolean;cdecl;external;

procedure gtk_stack_page_set_visible(self:PGtkStackPage; visible:Tgboolean);cdecl;external;

function gtk_stack_page_get_needs_attention(self:PGtkStackPage):Tgboolean;cdecl;external;

procedure gtk_stack_page_set_needs_attention(self:PGtkStackPage; setting:Tgboolean);cdecl;external;

function gtk_stack_page_get_use_underline(self:PGtkStackPage):Tgboolean;cdecl;external;

procedure gtk_stack_page_set_use_underline(self:PGtkStackPage; setting:Tgboolean);cdecl;external;

function gtk_stack_page_get_name(self:PGtkStackPage):Pchar;cdecl;external;

procedure gtk_stack_page_set_name(self:PGtkStackPage; setting:Pchar);cdecl;external;

function gtk_stack_page_get_title(self:PGtkStackPage):Pchar;cdecl;external;

procedure gtk_stack_page_set_title(self:PGtkStackPage; setting:Pchar);cdecl;external;

function gtk_stack_page_get_icon_name(self:PGtkStackPage):Pchar;cdecl;external;

procedure gtk_stack_page_set_icon_name(self:PGtkStackPage; setting:Pchar);cdecl;external;

function gtk_stack_get_type:TGType;cdecl;external;

function gtk_stack_new:PGtkWidget;cdecl;external;

function gtk_stack_add_child(stack:PGtkStack; child:PGtkWidget):PGtkStackPage;cdecl;external;

function gtk_stack_add_named(stack:PGtkStack; child:PGtkWidget; name:Pchar):PGtkStackPage;cdecl;external;

function gtk_stack_add_titled(stack:PGtkStack; child:PGtkWidget; name:Pchar; title:Pchar):PGtkStackPage;cdecl;external;

procedure gtk_stack_remove(stack:PGtkStack; child:PGtkWidget);cdecl;external;

function gtk_stack_get_page(stack:PGtkStack; child:PGtkWidget):PGtkStackPage;cdecl;external;

function gtk_stack_get_child_by_name(stack:PGtkStack; name:Pchar):PGtkWidget;cdecl;external;

procedure gtk_stack_set_visible_child(stack:PGtkStack; child:PGtkWidget);cdecl;external;

function gtk_stack_get_visible_child(stack:PGtkStack):PGtkWidget;cdecl;external;

procedure gtk_stack_set_visible_child_name(stack:PGtkStack; name:Pchar);cdecl;external;

function gtk_stack_get_visible_child_name(stack:PGtkStack):Pchar;cdecl;external;

procedure gtk_stack_set_visible_child_full(stack:PGtkStack; name:Pchar; transition:TGtkStackTransitionType);cdecl;external;

procedure gtk_stack_set_hhomogeneous(stack:PGtkStack; hhomogeneous:Tgboolean);cdecl;external;

function gtk_stack_get_hhomogeneous(stack:PGtkStack):Tgboolean;cdecl;external;

procedure gtk_stack_set_vhomogeneous(stack:PGtkStack; vhomogeneous:Tgboolean);cdecl;external;

function gtk_stack_get_vhomogeneous(stack:PGtkStack):Tgboolean;cdecl;external;

procedure gtk_stack_set_transition_duration(stack:PGtkStack; duration:Tguint);cdecl;external;

function gtk_stack_get_transition_duration(stack:PGtkStack):Tguint;cdecl;external;

procedure gtk_stack_set_transition_type(stack:PGtkStack; transition:TGtkStackTransitionType);cdecl;external;

function gtk_stack_get_transition_type(stack:PGtkStack):TGtkStackTransitionType;cdecl;external;

function gtk_stack_get_transition_running(stack:PGtkStack):Tgboolean;cdecl;external;

procedure gtk_stack_set_interpolate_size(stack:PGtkStack; interpolate_size:Tgboolean);cdecl;external;

function gtk_stack_get_interpolate_size(stack:PGtkStack):Tgboolean;cdecl;external;

function gtk_stack_get_pages(stack:PGtkStack):PGtkSelectionModel;cdecl;external;

{$endif}

implementation

function GTK_TYPE_STACK : longint; { return type might be wrong }
  begin
    GTK_TYPE_STACK:=gtk_stack_get_type;
  end;

function GTK_STACK(obj : longint) : longint;
begin
  GTK_STACK:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_STACK,GtkStack);
end;

function GTK_IS_STACK(obj : longint) : longint;
begin
  GTK_IS_STACK:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_STACK);
end;

function GTK_TYPE_STACK_PAGE : longint; { return type might be wrong }
  begin
    GTK_TYPE_STACK_PAGE:=gtk_stack_page_get_type;
  end;

function GTK_STACK_PAGE(obj : longint) : longint;
begin
  GTK_STACK_PAGE:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_STACK_PAGE,GtkStackPage);
end;

function GTK_IS_STACK_PAGE(obj : longint) : longint;
begin
  GTK_IS_STACK_PAGE:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_STACK_PAGE);
end;


end.
