
  Type
  Pchar  = ^char;
  PGClosure  = ^GClosure;
  PGObject  = ^GObject;
  PGParamSpec  = ^GParamSpec;
  PGtkExpression  = ^GtkExpression;
  PGtkExpressionWatch  = ^GtkExpressionWatch;
  PGValue  = ^GValue;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  {
   * Copyright © 2019 Benjamin Otte
   *
   * This library is free software; you can redistribute it and/or
   * modify it under the terms of the GNU Lesser General Public
   * License as published by the Free Software Foundation; either
   * version 2.1 of the License, or (at your option) any later version.
   *
   * This library is distributed in the hope that it will be useful,
   * but WITHOUT ANY WARRANTY; without even the implied warranty of
   * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   * Lesser General Public License for more details.
   *
   * You should have received a copy of the GNU Lesser General Public
   * License along with this library. If not, see <http://www.gnu.org/licenses/>.
   *
   * Authors: Benjamin Otte <otte@gnome.org>
    }
{$ifndef __GTK_EXPRESSION_H__}
{$define __GTK_EXPRESSION_H__}  
{$include <gtk/gtktypes.h>}
  { Zeile entfernt  }

  { was #define dname def_expr }
  function GTK_TYPE_EXPRESSION : longint; { return type might be wrong }

  { was #define dname def_expr }
  function GTK_TYPE_EXPRESSION_WATCH : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_EXPRESSION(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_EXPRESSION(obj : longint) : longint;  


  type
    _GtkExpression = GtkExpression;
    _GtkExpressionWatch = GtkExpressionWatch;
  {*
   * GtkExpressionNotify:
   * @user_data: data passed to gtk_expression_watch()
   *
   * Callback called by gtk_expression_watch() when the
   * expression value changes.
    }

    GtkExpressionNotify = procedure (user_data:gpointer);cdecl;
  { Zeile entfernt  }

  function gtk_expression_get_type:GType;

  { Zeile entfernt  }
  function gtk_expression_ref(self:PGtkExpression):^GtkExpression;

  { Zeile entfernt  }
  procedure gtk_expression_unref(self:PGtkExpression);

  { Zeile entfernt  }
  { Zeile entfernt  }
  function gtk_expression_get_value_type(self:PGtkExpression):GType;

  { Zeile entfernt  }
  function gtk_expression_is_static(self:PGtkExpression):gboolean;

  { Zeile entfernt  }
  function gtk_expression_evaluate(self:PGtkExpression; this_:gpointer; value:PGValue):gboolean;

  { Zeile entfernt  }
  function gtk_expression_watch(self:PGtkExpression; this_:gpointer; notify:GtkExpressionNotify; user_data:gpointer; user_destroy:GDestroyNotify):^GtkExpressionWatch;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_expression_bind(self:PGtkExpression; target:gpointer; _property:Pchar; this_:gpointer):^GtkExpressionWatch;

  { Zeile entfernt  }
  function gtk_expression_watch_get_type:GType;

  { Zeile entfernt  }
  function gtk_expression_watch_ref(watch:PGtkExpressionWatch):^GtkExpressionWatch;

  { Zeile entfernt  }
  procedure gtk_expression_watch_unref(watch:PGtkExpressionWatch);

  { Zeile entfernt  }
  function gtk_expression_watch_evaluate(watch:PGtkExpressionWatch; value:PGValue):gboolean;

  { Zeile entfernt  }
  procedure gtk_expression_watch_unwatch(watch:PGtkExpressionWatch);

  { was #define dname def_expr }
  function GTK_TYPE_PROPERTY_EXPRESSION : longint; { return type might be wrong }


  type
    _GtkPropertyExpression = GtkPropertyExpression;
  { Zeile entfernt  }

  function gtk_property_expression_get_type:GType;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_property_expression_new(this_type:GType; expression:PGtkExpression; property_name:Pchar):^GtkExpression;

  { Zeile entfernt  }
  function gtk_property_expression_new_for_pspec(expression:PGtkExpression; pspec:PGParamSpec):^GtkExpression;

  { Zeile entfernt  }
  function gtk_property_expression_get_expression(expression:PGtkExpression):^GtkExpression;

  { Zeile entfernt  }
  function gtk_property_expression_get_pspec(expression:PGtkExpression):^GParamSpec;

  { was #define dname def_expr }
  function GTK_TYPE_CONSTANT_EXPRESSION : longint; { return type might be wrong }


  type
    _GtkConstantExpression = GtkConstantExpression;
  { Zeile entfernt  }

  function gtk_constant_expression_get_type:GType;

  { Zeile entfernt  }
  function gtk_constant_expression_new(value_type:GType; args:array of const):^GtkExpression;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_constant_expression_new_for_value(value:PGValue):^GtkExpression;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_constant_expression_get_value(expression:PGtkExpression):^GValue;

  { was #define dname def_expr }
  function GTK_TYPE_OBJECT_EXPRESSION : longint; { return type might be wrong }


  type
    _GtkObjectExpression = GtkObjectExpression;
  { Zeile entfernt  }

  function gtk_object_expression_get_type:GType;

  { Zeile entfernt  }
  function gtk_object_expression_new(object:PGObject):^GtkExpression;

  { Zeile entfernt  }
  function gtk_object_expression_get_object(expression:PGtkExpression):^GObject;

  { was #define dname def_expr }
  function GTK_TYPE_CLOSURE_EXPRESSION : longint; { return type might be wrong }


  type
    _GtkClosureExpression = GtkClosureExpression;
  { Zeile entfernt  }

  function gtk_closure_expression_get_type:GType;

  { Zeile entfernt  }
  function gtk_closure_expression_new(value_type:GType; closure:PGClosure; n_params:guint; params:PPGtkExpression):^GtkExpression;

  { was #define dname def_expr }
  function GTK_TYPE_CCLOSURE_EXPRESSION : longint; { return type might be wrong }


  type
    _GtkCClosureExpression = GtkCClosureExpression;
  { Zeile entfernt  }

  function gtk_cclosure_expression_get_type:GType;

  { Zeile entfernt  }
  function gtk_cclosure_expression_new(value_type:GType; marshal:GClosureMarshal; n_params:guint; params:PPGtkExpression; callback_func:GCallback; 
             user_data:gpointer; user_destroy:GClosureNotify):^GtkExpression;

  { GObject integration, so we can use GtkBuilder  }
  {*
   * GTK_VALUE_HOLDS_EXPRESSION:
   * @value: a `GValue`
   *
   * Evaluates to %TRUE if @value was initialized with %GTK_TYPE_EXPRESSION.
    }
  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_VALUE_HOLDS_EXPRESSION(value : longint) : longint;  

  { Zeile entfernt  }
  procedure gtk_value_set_expression(value:PGValue; expression:PGtkExpression);

  { Zeile entfernt  }
  procedure gtk_value_take_expression(value:PGValue; expression:PGtkExpression);

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_value_get_expression(value:PGValue):^GtkExpression;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_value_dup_expression(value:PGValue):^GtkExpression;

  { was #define dname def_expr }
  function GTK_TYPE_PARAM_SPEC_EXPRESSION : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_PARAM_SPEC_EXPRESSION(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_PARAM_SPEC_EXPRESSION(obj : longint) : longint;  

  {*
   * GtkParamSpecExpression:
   *
   * A `GParamSpec` for properties holding a `GtkExpression`.
    }
  {< private > }

  type
    GtkParamSpecExpression = record
        parent_instance : GParamSpec;
      end;
  { Zeile entfernt  }

  function gtk_param_expression_get_type:GType;

  { Zeile entfernt  }
(* Const before type ignored *)
(* Const before type ignored *)
(* Const before type ignored *)
  function gtk_param_spec_expression(name:Pchar; nick:Pchar; blurb:Pchar; flags:GParamFlags):^GParamSpec;

  { Zeile entfernt  }
{$endif}
  { __GTK_EXPRESSION_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_EXPRESSION : longint; { return type might be wrong }
    begin
      GTK_TYPE_EXPRESSION:=gtk_expression_get_type;
    end;

  { was #define dname def_expr }
  function GTK_TYPE_EXPRESSION_WATCH : longint; { return type might be wrong }
    begin
      GTK_TYPE_EXPRESSION_WATCH:=gtk_expression_watch_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_EXPRESSION(obj : longint) : longint;
  begin
    GTK_IS_EXPRESSION:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_EXPRESSION);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_EXPRESSION(obj : longint) : longint;
  begin
    GTK_EXPRESSION:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_EXPRESSION,GtkExpression);
  end;

  function gtk_expression_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gtk_expression_ref(self:PGtkExpression):PGtkExpression;
  begin
    { You must implement this function }
  end;
  procedure gtk_expression_unref(self:PGtkExpression);
  begin
    { You must implement this function }
  end;
  function gtk_expression_get_value_type(self:PGtkExpression):GType;
  begin
    { You must implement this function }
  end;
  function gtk_expression_is_static(self:PGtkExpression):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_expression_evaluate(self:PGtkExpression; this_:gpointer; value:PGValue):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_expression_watch(self:PGtkExpression; this_:gpointer; notify:GtkExpressionNotify; user_data:gpointer; user_destroy:GDestroyNotify):PGtkExpressionWatch;
  begin
    { You must implement this function }
  end;
  function gtk_expression_bind(self:PGtkExpression; target:gpointer; _property:Pchar; this_:gpointer):PGtkExpressionWatch;
  begin
    { You must implement this function }
  end;
  function gtk_expression_watch_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gtk_expression_watch_ref(watch:PGtkExpressionWatch):PGtkExpressionWatch;
  begin
    { You must implement this function }
  end;
  procedure gtk_expression_watch_unref(watch:PGtkExpressionWatch);
  begin
    { You must implement this function }
  end;
  function gtk_expression_watch_evaluate(watch:PGtkExpressionWatch; value:PGValue):gboolean;
  begin
    { You must implement this function }
  end;
  procedure gtk_expression_watch_unwatch(watch:PGtkExpressionWatch);
  begin
    { You must implement this function }
  end;
  { was #define dname def_expr }
  function GTK_TYPE_PROPERTY_EXPRESSION : longint; { return type might be wrong }
    begin
      GTK_TYPE_PROPERTY_EXPRESSION:=gtk_property_expression_get_type;
    end;

  function gtk_property_expression_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gtk_property_expression_new(this_type:GType; expression:PGtkExpression; property_name:Pchar):PGtkExpression;
  begin
    { You must implement this function }
  end;
  function gtk_property_expression_new_for_pspec(expression:PGtkExpression; pspec:PGParamSpec):PGtkExpression;
  begin
    { You must implement this function }
  end;
  function gtk_property_expression_get_expression(expression:PGtkExpression):PGtkExpression;
  begin
    { You must implement this function }
  end;
  function gtk_property_expression_get_pspec(expression:PGtkExpression):PGParamSpec;
  begin
    { You must implement this function }
  end;
  { was #define dname def_expr }
  function GTK_TYPE_CONSTANT_EXPRESSION : longint; { return type might be wrong }
    begin
      GTK_TYPE_CONSTANT_EXPRESSION:=gtk_constant_expression_get_type;
    end;

  function gtk_constant_expression_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gtk_constant_expression_new(value_type:GType):PGtkExpression;
  begin
    { You must implement this function }
  end;
  function gtk_constant_expression_new_for_value(value:PGValue):PGtkExpression;
  begin
    { You must implement this function }
  end;
  function gtk_constant_expression_get_value(expression:PGtkExpression):PGValue;
  begin
    { You must implement this function }
  end;
  { was #define dname def_expr }
  function GTK_TYPE_OBJECT_EXPRESSION : longint; { return type might be wrong }
    begin
      GTK_TYPE_OBJECT_EXPRESSION:=gtk_object_expression_get_type;
    end;

  function gtk_object_expression_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gtk_object_expression_new(object:PGObject):PGtkExpression;
  begin
    { You must implement this function }
  end;
  function gtk_object_expression_get_object(expression:PGtkExpression):PGObject;
  begin
    { You must implement this function }
  end;
  { was #define dname def_expr }
  function GTK_TYPE_CLOSURE_EXPRESSION : longint; { return type might be wrong }
    begin
      GTK_TYPE_CLOSURE_EXPRESSION:=gtk_closure_expression_get_type;
    end;

  function gtk_closure_expression_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gtk_closure_expression_new(value_type:GType; closure:PGClosure; n_params:guint; params:PPGtkExpression):PGtkExpression;
  begin
    { You must implement this function }
  end;
  { was #define dname def_expr }
  function GTK_TYPE_CCLOSURE_EXPRESSION : longint; { return type might be wrong }
    begin
      GTK_TYPE_CCLOSURE_EXPRESSION:=gtk_cclosure_expression_get_type;
    end;

  function gtk_cclosure_expression_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gtk_cclosure_expression_new(value_type:GType; marshal:GClosureMarshal; n_params:guint; params:PPGtkExpression; callback_func:GCallback; 
             user_data:gpointer; user_destroy:GClosureNotify):PGtkExpression;
  begin
    { You must implement this function }
  end;
  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_VALUE_HOLDS_EXPRESSION(value : longint) : longint;
  begin
    GTK_VALUE_HOLDS_EXPRESSION:=G_VALUE_HOLDS(value,GTK_TYPE_EXPRESSION);
  end;

  procedure gtk_value_set_expression(value:PGValue; expression:PGtkExpression);
  begin
    { You must implement this function }
  end;
  procedure gtk_value_take_expression(value:PGValue; expression:PGtkExpression);
  begin
    { You must implement this function }
  end;
  function gtk_value_get_expression(value:PGValue):PGtkExpression;
  begin
    { You must implement this function }
  end;
  function gtk_value_dup_expression(value:PGValue):PGtkExpression;
  begin
    { You must implement this function }
  end;
  { was #define dname def_expr }
  function GTK_TYPE_PARAM_SPEC_EXPRESSION : longint; { return type might be wrong }
    begin
      GTK_TYPE_PARAM_SPEC_EXPRESSION:=gtk_param_expression_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_PARAM_SPEC_EXPRESSION(obj : longint) : longint;
  begin
    GTK_PARAM_SPEC_EXPRESSION:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_PARAM_SPEC_EXPRESSION,GtkParamSpecExpression);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_PARAM_SPEC_EXPRESSION(obj : longint) : longint;
  begin
    GTK_IS_PARAM_SPEC_EXPRESSION:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_PARAM_SPEC_EXPRESSION);
  end;

  function gtk_param_expression_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gtk_param_spec_expression(name:Pchar; nick:Pchar; blurb:Pchar; flags:GParamFlags):PGParamSpec;
  begin
    { You must implement this function }
  end;

