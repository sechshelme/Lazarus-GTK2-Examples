
unit gtkexpression;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkexpression.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkexpression.h
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
PGClosure  = ^GClosure;
PGObject  = ^GObject;
PGParamSpec  = ^GParamSpec;
PGtkExpression  = ^GtkExpression;
PGtkExpressionWatch  = ^GtkExpressionWatch;
PGtkParamSpecExpression  = ^GtkParamSpecExpression;
PGValue  = ^GValue;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_EXPRESSION_H__}
{$define __GTK_EXPRESSION_H__}
{$include <gtk/gtktypes.h>}


function GTK_TYPE_EXPRESSION : longint; { return type might be wrong }

function GTK_TYPE_EXPRESSION_WATCH : longint; { return type might be wrong }

function GTK_IS_EXPRESSION(obj : longint) : longint;

function GTK_EXPRESSION(obj : longint) : longint;

type


  TGtkExpressionNotify = procedure (user_data:Tgpointer);cdecl;


function gtk_expression_get_type:TGType;cdecl;external;

function gtk_expression_ref(self:PGtkExpression):PGtkExpression;cdecl;external;

procedure gtk_expression_unref(self:PGtkExpression);cdecl;external;


function gtk_expression_get_value_type(self:PGtkExpression):TGType;cdecl;external;

function gtk_expression_is_static(self:PGtkExpression):Tgboolean;cdecl;external;

function gtk_expression_evaluate(self:PGtkExpression; this_:Tgpointer; value:PGValue):Tgboolean;cdecl;external;

function gtk_expression_watch(self:PGtkExpression; this_:Tgpointer; notify:TGtkExpressionNotify; user_data:Tgpointer; user_destroy:TGDestroyNotify):PGtkExpressionWatch;cdecl;external;

function gtk_expression_bind(self:PGtkExpression; target:Tgpointer; _property:Pchar; this_:Tgpointer):PGtkExpressionWatch;cdecl;external;

function gtk_expression_watch_get_type:TGType;cdecl;external;

function gtk_expression_watch_ref(watch:PGtkExpressionWatch):PGtkExpressionWatch;cdecl;external;

procedure gtk_expression_watch_unref(watch:PGtkExpressionWatch);cdecl;external;

function gtk_expression_watch_evaluate(watch:PGtkExpressionWatch; value:PGValue):Tgboolean;cdecl;external;

procedure gtk_expression_watch_unwatch(watch:PGtkExpressionWatch);cdecl;external;
function GTK_TYPE_PROPERTY_EXPRESSION : longint; { return type might be wrong }

type


function gtk_property_expression_get_type:TGType;cdecl;external;

function gtk_property_expression_new(this_type:TGType; expression:PGtkExpression; property_name:Pchar):PGtkExpression;cdecl;external;

function gtk_property_expression_new_for_pspec(expression:PGtkExpression; pspec:PGParamSpec):PGtkExpression;cdecl;external;

function gtk_property_expression_get_expression(expression:PGtkExpression):PGtkExpression;cdecl;external;

function gtk_property_expression_get_pspec(expression:PGtkExpression):PGParamSpec;cdecl;external;
function GTK_TYPE_CONSTANT_EXPRESSION : longint; { return type might be wrong }

type


function gtk_constant_expression_get_type:TGType;cdecl;external;

function gtk_constant_expression_new(value_type:TGType; args:array of const):PGtkExpression;cdecl;external;
function gtk_constant_expression_new(value_type:TGType):PGtkExpression;cdecl;external;

function gtk_constant_expression_new_for_value(value:PGValue):PGtkExpression;cdecl;external;

function gtk_constant_expression_get_value(expression:PGtkExpression):PGValue;cdecl;external;
function GTK_TYPE_OBJECT_EXPRESSION : longint; { return type might be wrong }

type


function gtk_object_expression_get_type:TGType;cdecl;external;

function gtk_object_expression_new(object:PGObject):PGtkExpression;cdecl;external;

function gtk_object_expression_get_object(expression:PGtkExpression):PGObject;cdecl;external;
function GTK_TYPE_CLOSURE_EXPRESSION : longint; { return type might be wrong }

type


function gtk_closure_expression_get_type:TGType;cdecl;external;

function gtk_closure_expression_new(value_type:TGType; closure:PGClosure; n_params:Tguint; params:PPGtkExpression):PGtkExpression;cdecl;external;
function GTK_TYPE_CCLOSURE_EXPRESSION : longint; { return type might be wrong }

type


function gtk_cclosure_expression_get_type:TGType;cdecl;external;

function gtk_cclosure_expression_new(value_type:TGType; marshal:TGClosureMarshal; n_params:Tguint; params:PPGtkExpression; callback_func:TGCallback; 
           user_data:Tgpointer; user_destroy:TGClosureNotify):PGtkExpression;cdecl;external;


function GTK_VALUE_HOLDS_EXPRESSION(value : longint) : longint;


procedure gtk_value_set_expression(value:PGValue; expression:PGtkExpression);cdecl;external;

procedure gtk_value_take_expression(value:PGValue; expression:PGtkExpression);cdecl;external;

function gtk_value_get_expression(value:PGValue):PGtkExpression;cdecl;external;

function gtk_value_dup_expression(value:PGValue):PGtkExpression;cdecl;external;
function GTK_TYPE_PARAM_SPEC_EXPRESSION : longint; { return type might be wrong }

function GTK_PARAM_SPEC_EXPRESSION(obj : longint) : longint;

function GTK_IS_PARAM_SPEC_EXPRESSION(obj : longint) : longint;



type
  PGtkParamSpecExpression = ^TGtkParamSpecExpression;
  TGtkParamSpecExpression = record
      parent_instance : TGParamSpec;
    end;


function gtk_param_expression_get_type:TGType;cdecl;external;

function gtk_param_spec_expression(name:Pchar; nick:Pchar; blurb:Pchar; flags:TGParamFlags):PGParamSpec;cdecl;external;

{$endif}


implementation

function GTK_TYPE_EXPRESSION : longint; { return type might be wrong }
  begin
    GTK_TYPE_EXPRESSION:=gtk_expression_get_type;
  end;

function GTK_TYPE_EXPRESSION_WATCH : longint; { return type might be wrong }
  begin
    GTK_TYPE_EXPRESSION_WATCH:=gtk_expression_watch_get_type;
  end;

function GTK_IS_EXPRESSION(obj : longint) : longint;
begin
  GTK_IS_EXPRESSION:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_EXPRESSION);
end;

function GTK_EXPRESSION(obj : longint) : longint;
begin
  GTK_EXPRESSION:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_EXPRESSION,GtkExpression);
end;

function GTK_TYPE_PROPERTY_EXPRESSION : longint; { return type might be wrong }
  begin
    GTK_TYPE_PROPERTY_EXPRESSION:=gtk_property_expression_get_type;
  end;

function GTK_TYPE_CONSTANT_EXPRESSION : longint; { return type might be wrong }
  begin
    GTK_TYPE_CONSTANT_EXPRESSION:=gtk_constant_expression_get_type;
  end;

function GTK_TYPE_OBJECT_EXPRESSION : longint; { return type might be wrong }
  begin
    GTK_TYPE_OBJECT_EXPRESSION:=gtk_object_expression_get_type;
  end;

function GTK_TYPE_CLOSURE_EXPRESSION : longint; { return type might be wrong }
  begin
    GTK_TYPE_CLOSURE_EXPRESSION:=gtk_closure_expression_get_type;
  end;

function GTK_TYPE_CCLOSURE_EXPRESSION : longint; { return type might be wrong }
  begin
    GTK_TYPE_CCLOSURE_EXPRESSION:=gtk_cclosure_expression_get_type;
  end;

function GTK_VALUE_HOLDS_EXPRESSION(value : longint) : longint;
begin
  GTK_VALUE_HOLDS_EXPRESSION:=G_VALUE_HOLDS(value,GTK_TYPE_EXPRESSION);
end;

function GTK_TYPE_PARAM_SPEC_EXPRESSION : longint; { return type might be wrong }
  begin
    GTK_TYPE_PARAM_SPEC_EXPRESSION:=gtk_param_expression_get_type;
  end;

function GTK_PARAM_SPEC_EXPRESSION(obj : longint) : longint;
begin
  GTK_PARAM_SPEC_EXPRESSION:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_PARAM_SPEC_EXPRESSION,GtkParamSpecExpression);
end;

function GTK_IS_PARAM_SPEC_EXPRESSION(obj : longint) : longint;
begin
  GTK_IS_PARAM_SPEC_EXPRESSION:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_PARAM_SPEC_EXPRESSION);
end;


end.
