unit gtkexpression;

interface

uses
  glib2, common_GTK;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}

type
  TGtkExpression = record //_GtkExpression
  end;
  PGtkExpression = ^TGtkExpression;
  PPGtkExpression = ^PGtkExpression;

  TGtkExpressionWatch = record //_GtkExpressionWatch
  end;
  PGtkExpressionWatch = ^TGtkExpressionWatch;

  TGtkExpressionNotify = procedure(user_data: Tgpointer); cdecl;

  function GTK_TYPE_EXPRESSION: TGType;
  function GTK_EXPRESSION(obj: Pointer): PGtkExpression;
function GTK_IS_EXPRESSION(obj: Pointer): Tgboolean;


 function gtk_expression_get_type: TGType; cdecl; external gtklib;
function gtk_expression_ref(self: PGtkExpression): PGtkExpression; cdecl; external gtklib;
procedure gtk_expression_unref(self: PGtkExpression); cdecl; external gtklib;
function gtk_expression_get_value_type(self: PGtkExpression): TGType; cdecl; external gtklib;
function gtk_expression_is_static(self: PGtkExpression): Tgboolean; cdecl; external gtklib;
function gtk_expression_evaluate(self: PGtkExpression; this_: Tgpointer; Value: PGValue): Tgboolean; cdecl; external gtklib;
function gtk_expression_watch(self: PGtkExpression; this_: Tgpointer; notify: TGtkExpressionNotify; user_data: Tgpointer; user_destroy: TGDestroyNotify): PGtkExpressionWatch; cdecl; external gtklib;
function gtk_expression_bind(self: PGtkExpression; target: Tgpointer; _property: PChar; this_: Tgpointer): PGtkExpressionWatch; cdecl; external gtklib;
function gtk_expression_watch_get_type: TGType; cdecl; external gtklib;
function gtk_expression_watch_ref(watch: PGtkExpressionWatch): PGtkExpressionWatch; cdecl; external gtklib;
procedure gtk_expression_watch_unref(watch: PGtkExpressionWatch); cdecl; external gtklib;
function gtk_expression_watch_evaluate(watch: PGtkExpressionWatch; Value: PGValue): Tgboolean; cdecl; external gtklib;
procedure gtk_expression_watch_unwatch(watch: PGtkExpressionWatch); cdecl; external gtklib;

type
  TGtkPropertyExpression = record  // _GtkPropertyExpression
  end;
  PGtkPropertyExpression = ^TGtkPropertyExpression;

function GTK_TYPE_PROPERTY_EXPRESSION: TGType;

function gtk_property_expression_get_type: TGType; cdecl; external gtklib;
function gtk_property_expression_new(this_type: TGType; expression: PGtkExpression; property_name: PChar): PGtkExpression; cdecl; external gtklib;
function gtk_property_expression_new_for_pspec(expression: PGtkExpression; pspec: PGParamSpec): PGtkExpression; cdecl; external gtklib;
function gtk_property_expression_get_expression(expression: PGtkExpression): PGtkExpression; cdecl; external gtklib;
function gtk_property_expression_get_pspec(expression: PGtkExpression): PGParamSpec; cdecl; external gtklib;

type
  TGtkConstantExpression = record // _GtkConstantExpression
  end;
  PGtkConstantExpression = ^TGtkConstantExpression;

  function GTK_TYPE_CONSTANT_EXPRESSION: TGType;


function gtk_constant_expression_get_type: TGType; cdecl; external gtklib;
function gtk_constant_expression_new(value_type: TGType; args: array of const): PGtkExpression; cdecl; external gtklib;
function gtk_constant_expression_new(value_type: TGType): PGtkExpression; cdecl; external gtklib;
function gtk_constant_expression_new_for_value(Value: PGValue): PGtkExpression; cdecl; external gtklib;
function gtk_constant_expression_get_value(expression: PGtkExpression): PGValue; cdecl; external gtklib;

type
  TGtkObjectExpression = record // _GtkObjectExpression
  end;
  PGtkObjectExpression = ^TGtkObjectExpression;

  function GTK_TYPE_OBJECT_EXPRESSION: TGType;


function gtk_object_expression_get_type: TGType; cdecl; external gtklib;
function gtk_object_expression_new(obj: PGObject): PGtkExpression; cdecl; external gtklib;
function gtk_object_expression_get_object(expression: PGtkExpression): PGObject; cdecl; external gtklib;

type
  TGtkClosureExpression = record // _GtkClosureExpression
  end;
  PGtkClosureExpression = ^TGtkClosureExpression;

  function GTK_TYPE_CLOSURE_EXPRESSION: TGType;


function gtk_closure_expression_get_type: TGType; cdecl; external gtklib;
function gtk_closure_expression_new(value_type: TGType; closure: PGClosure; n_params: Tguint; params: PPGtkExpression): PGtkExpression; cdecl; external gtklib;

type
  TGtkCClosureExpression = record // _GtkCClosureExpression
  end;
  PGtkCClosureExpression = ^TGtkCClosureExpression;

function GTK_TYPE_CCLOSURE_EXPRESSION: TGType;

function gtk_cclosure_expression_get_type: TGType; cdecl; external gtklib;
function gtk_cclosure_expression_new(value_type: TGType; marshal: TGClosureMarshal; n_params: Tguint; params: PPGtkExpression; callback_func: TGCallback;
  user_data: Tgpointer; user_destroy: TGClosureNotify): PGtkExpression; cdecl; external gtklib;


{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }
function GTK_VALUE_HOLDS_EXPRESSION(Value: longint): longint;

procedure gtk_value_set_expression(Value: PGValue; expression: PGtkExpression); cdecl; external gtklib;
procedure gtk_value_take_expression(Value: PGValue; expression: PGtkExpression); cdecl; external gtklib;
function gtk_value_get_expression(Value: PGValue): PGtkExpression; cdecl; external gtklib;
function gtk_value_dup_expression(Value: PGValue): PGtkExpression; cdecl; external gtklib;
{ was #define dname def_expr }
function GTK_TYPE_PARAM_SPEC_EXPRESSION: TGType; { return type might be wrong }

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }
function GTK_PARAM_SPEC_EXPRESSION(obj: longint): longint;

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }
function GTK_IS_PARAM_SPEC_EXPRESSION(obj: longint): longint;

{*
 * GtkParamSpecExpression:
 *
 * A `GParamSpec` for properties holding a `GtkExpression`.
  }
{< private > }
type
  PGtkParamSpecExpression = ^TGtkParamSpecExpression;

  TGtkParamSpecExpression = record
    parent_instance: TGParamSpec;
  end;

function gtk_param_expression_get_type: TGType; cdecl; external gtklib;
function gtk_param_spec_expression(Name: PChar; nick: PChar; blurb: PChar; flags: TGParamFlags): PGParamSpec; cdecl; external gtklib;

// === Konventiert am: 17-7-24 19:35:41 ===


//GTK_TYPE_EXPRESSION_WATCH:=gtk_expression_watch_get_type;
//  GTK_IS_EXPRESSION:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_EXPRESSION);
//  GTK_EXPRESSION:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_EXPRESSION,GtkExpression);

//function GTK_TYPE_OBJECT_EXPRESSION : P; { return type might be wrong }

implementation

function GTK_TYPE_PROPERTY_EXPRESSION: TGType;
begin
Result:=  gtk_property_expression_get_type;
end;

function GTK_TYPE_CONSTANT_EXPRESSION: TGType;
begin
Result:=  gtk_constant_expression_get_type;
end;

function GTK_TYPE_OBJECT_EXPRESSION: TGType;
begin
Result:=  gtk_object_expression_get_type;
end;

function GTK_TYPE_CLOSURE_EXPRESSION: TGType;
begin
Result:=  gtk_closure_expression_get_type;
end;

function GTK_TYPE_CCLOSURE_EXPRESSION: TGType;
begin
Result:=  gtk_cclosure_expression_get_type;
end;

function GTK_TYPE_PARAM_SPEC_EXPRESSION: TGType;
begin
Result:=  gtk_param_expression_get_type;
end;

function GTK_PARAM_SPEC_EXPRESSION(obj: longint): longint;
begin

end;

function GTK_IS_PARAM_SPEC_EXPRESSION(obj: longint): longint;
begin

end;

function GTK_TYPE_EXPRESSION: TGType;
begin
Result:=  gtk_expression_get_type();
end;

function GTK_EXPRESSION(obj: Pointer): PGtkExpression;
begin
Result := PGtkExpression(g_type_check_instance_cast(obj, GTK_TYPE_EXPRESSION));
end;

function GTK_IS_EXPRESSION(obj: Pointer): Tgboolean;
begin
Result := g_type_check_instance_is_a(obj, GTK_TYPE_EXPRESSION);
end;



end.
