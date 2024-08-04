unit gtkstack;

interface

uses
  glib2, common_GTK, gtktypes, gtkwidget, gtkselectionmodel;

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}

type
  TGtkStack=record // _GtkStack
  end;
  PGtkStack=^TGtkStack;

  TGtkStackPage=record // _GtkStackPage
  end;
  PGtkStackPage=^TGtkStackPage;

  PGtkStackTransitionType = ^TGtkStackTransitionType;
  TGtkStackTransitionType =  Longint;
  Const
    GTK_STACK_TRANSITION_TYPE_NONE = 0;
    GTK_STACK_TRANSITION_TYPE_CROSSFADE = 1;
    GTK_STACK_TRANSITION_TYPE_SLIDE_RIGHT = 2;
    GTK_STACK_TRANSITION_TYPE_SLIDE_LEFT = 3;
    GTK_STACK_TRANSITION_TYPE_SLIDE_UP = 4;
    GTK_STACK_TRANSITION_TYPE_SLIDE_DOWN = 5;
    GTK_STACK_TRANSITION_TYPE_SLIDE_LEFT_RIGHT = 6;
    GTK_STACK_TRANSITION_TYPE_SLIDE_UP_DOWN = 7;
    GTK_STACK_TRANSITION_TYPE_OVER_UP = 8;
    GTK_STACK_TRANSITION_TYPE_OVER_DOWN = 9;
    GTK_STACK_TRANSITION_TYPE_OVER_LEFT = 10;
    GTK_STACK_TRANSITION_TYPE_OVER_RIGHT = 11;
    GTK_STACK_TRANSITION_TYPE_UNDER_UP = 12;
    GTK_STACK_TRANSITION_TYPE_UNDER_DOWN = 13;
    GTK_STACK_TRANSITION_TYPE_UNDER_LEFT = 14;
    GTK_STACK_TRANSITION_TYPE_UNDER_RIGHT = 15;
    GTK_STACK_TRANSITION_TYPE_OVER_UP_DOWN = 16;
    GTK_STACK_TRANSITION_TYPE_OVER_DOWN_UP = 17;
    GTK_STACK_TRANSITION_TYPE_OVER_LEFT_RIGHT = 18;
    GTK_STACK_TRANSITION_TYPE_OVER_RIGHT_LEFT = 19;
    GTK_STACK_TRANSITION_TYPE_ROTATE_LEFT = 20;
    GTK_STACK_TRANSITION_TYPE_ROTATE_RIGHT = 21;
    GTK_STACK_TRANSITION_TYPE_ROTATE_LEFT_RIGHT = 22;


function gtk_stack_page_get_type:TGType;cdecl;external gtklib;
function gtk_stack_page_get_child(self:PGtkStackPage):PGtkWidget;cdecl;external gtklib;
function gtk_stack_page_get_visible(self:PGtkStackPage):Tgboolean;cdecl;external gtklib;
procedure gtk_stack_page_set_visible(self:PGtkStackPage; visible:Tgboolean);cdecl;external gtklib;
function gtk_stack_page_get_needs_attention(self:PGtkStackPage):Tgboolean;cdecl;external gtklib;
procedure gtk_stack_page_set_needs_attention(self:PGtkStackPage; setting:Tgboolean);cdecl;external gtklib;
function gtk_stack_page_get_use_underline(self:PGtkStackPage):Tgboolean;cdecl;external gtklib;
procedure gtk_stack_page_set_use_underline(self:PGtkStackPage; setting:Tgboolean);cdecl;external gtklib;
function gtk_stack_page_get_name(self:PGtkStackPage):Pchar;cdecl;external gtklib;
procedure gtk_stack_page_set_name(self:PGtkStackPage; setting:Pchar);cdecl;external gtklib;
function gtk_stack_page_get_title(self:PGtkStackPage):Pchar;cdecl;external gtklib;
procedure gtk_stack_page_set_title(self:PGtkStackPage; setting:Pchar);cdecl;external gtklib;
function gtk_stack_page_get_icon_name(self:PGtkStackPage):Pchar;cdecl;external gtklib;
procedure gtk_stack_page_set_icon_name(self:PGtkStackPage; setting:Pchar);cdecl;external gtklib;
function gtk_stack_get_type:TGType;cdecl;external gtklib;
function gtk_stack_new:PGtkWidget;cdecl;external gtklib;
function gtk_stack_add_child(stack:PGtkStack; child:PGtkWidget):PGtkStackPage;cdecl;external gtklib;
function gtk_stack_add_named(stack:PGtkStack; child:PGtkWidget; name:Pchar):PGtkStackPage;cdecl;external gtklib;
function gtk_stack_add_titled(stack:PGtkStack; child:PGtkWidget; name:Pchar; title:Pchar):PGtkStackPage;cdecl;external gtklib;
procedure gtk_stack_remove(stack:PGtkStack; child:PGtkWidget);cdecl;external gtklib;
function gtk_stack_get_page(stack:PGtkStack; child:PGtkWidget):PGtkStackPage;cdecl;external gtklib;
function gtk_stack_get_child_by_name(stack:PGtkStack; name:Pchar):PGtkWidget;cdecl;external gtklib;
procedure gtk_stack_set_visible_child(stack:PGtkStack; child:PGtkWidget);cdecl;external gtklib;
function gtk_stack_get_visible_child(stack:PGtkStack):PGtkWidget;cdecl;external gtklib;
procedure gtk_stack_set_visible_child_name(stack:PGtkStack; name:Pchar);cdecl;external gtklib;
function gtk_stack_get_visible_child_name(stack:PGtkStack):Pchar;cdecl;external gtklib;
procedure gtk_stack_set_visible_child_full(stack:PGtkStack; name:Pchar; transition:TGtkStackTransitionType);cdecl;external gtklib;
procedure gtk_stack_set_hhomogeneous(stack:PGtkStack; hhomogeneous:Tgboolean);cdecl;external gtklib;
function gtk_stack_get_hhomogeneous(stack:PGtkStack):Tgboolean;cdecl;external gtklib;
procedure gtk_stack_set_vhomogeneous(stack:PGtkStack; vhomogeneous:Tgboolean);cdecl;external gtklib;
function gtk_stack_get_vhomogeneous(stack:PGtkStack):Tgboolean;cdecl;external gtklib;
procedure gtk_stack_set_transition_duration(stack:PGtkStack; duration:Tguint);cdecl;external gtklib;
function gtk_stack_get_transition_duration(stack:PGtkStack):Tguint;cdecl;external gtklib;
procedure gtk_stack_set_transition_type(stack:PGtkStack; transition:TGtkStackTransitionType);cdecl;external gtklib;
function gtk_stack_get_transition_type(stack:PGtkStack):TGtkStackTransitionType;cdecl;external gtklib;
function gtk_stack_get_transition_running(stack:PGtkStack):Tgboolean;cdecl;external gtklib;
procedure gtk_stack_set_interpolate_size(stack:PGtkStack; interpolate_size:Tgboolean);cdecl;external gtklib;
function gtk_stack_get_interpolate_size(stack:PGtkStack):Tgboolean;cdecl;external gtklib;
function gtk_stack_get_pages(stack:PGtkStack):PGtkSelectionModel;cdecl;external gtklib;

// === Konventiert am: 22-7-24 19:44:08 ===

function GTK_TYPE_STACK : TGType;
function GTK_STACK(obj : Pointer) : PGtkStack;
function GTK_IS_STACK(obj : Pointer) : Tgboolean;

function GTK_TYPE_STACK_PAGE : TGType;
function GTK_STACK_PAGE(obj : Pointer) : PGtkStackPage;
function GTK_IS_STACK_PAGE(obj : Pointer) : Tgboolean;

implementation

function GTK_TYPE_STACK : TGType;
  begin
    GTK_TYPE_STACK:=gtk_stack_get_type;
  end;

function GTK_STACK(obj : Pointer) : PGtkStack;
begin
  Result := PGtkStack(g_type_check_instance_cast(obj, GTK_TYPE_STACK));
end;

function GTK_IS_STACK(obj : Pointer) : Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj,  GTK_TYPE_STACK);
end;

// ====

function GTK_TYPE_STACK_PAGE : TGType;
  begin
    GTK_TYPE_STACK_PAGE:=gtk_stack_page_get_type;
  end;

function GTK_STACK_PAGE(obj : Pointer) : PGtkStackPage;
begin
  Result := PGtkStackPage(g_type_check_instance_cast(obj, GTK_TYPE_STACK_PAGE));
end;

function GTK_IS_STACK_PAGE(obj : Pointer) : Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj,  GTK_TYPE_STACK_PAGE);
end;




end.
