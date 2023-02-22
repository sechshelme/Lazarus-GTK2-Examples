
  Type
  Pchar  = ^char;
  PGClosure  = ^GClosure;
  PGError  = ^GError;
  PGObject  = ^GObject;
  PGParamSpec  = ^GParamSpec;
  PGSList  = ^GSList;
  PGtkBuilder  = ^GtkBuilder;
  PGtkBuilderScope  = ^GtkBuilderScope;
  PGValue  = ^GValue;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { GTK - The GIMP Toolkit
   * Copyright (C) 2006-2007 Async Open Source,
   *                         Johan Dahlin <jdahlin@async.com.br>
   *
   * This library is free software; you can redistribute it and/or
   * modify it under the terms of the GNU Library General Public
   * License as published by the Free Software Foundation; either
   * version 2 of the License, or (at your option) any later version.
   *
   * This library is distributed in the hope that it will be useful,
   * but WITHOUT ANY WARRANTY; without even the implied warranty of
   * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   * Library General Public License for more details.
   *
   * You should have received a copy of the GNU Library General Public
   * License along with this library. If not, see <http://www.gnu.org/licenses/>.
    }
{$ifndef __GTK_BUILDER_H__}
{$define __GTK_BUILDER_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkbuilderscope.h>}
{$include <gtk/gtkwidget.h>}

  { was #define dname def_expr }
  function GTK_TYPE_BUILDER : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_BUILDER(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_BUILDER_CLASS(klass : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_BUILDER(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_BUILDER_CLASS(klass : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_BUILDER_GET_CLASS(obj : longint) : longint;  

  { was #define dname def_expr }
  function GTK_BUILDER_ERROR : longint; { return type might be wrong }


  type
    _GtkBuilderClass = GtkBuilderClass;
  {*
   * GtkBuilderError:
   * @GTK_BUILDER_ERROR_INVALID_TYPE_FUNCTION: A type-func attribute didn’t name
   *  a function that returns a `GType`.
   * @GTK_BUILDER_ERROR_UNHANDLED_TAG: The input contained a tag that `GtkBuilder`
   *  can’t handle.
   * @GTK_BUILDER_ERROR_MISSING_ATTRIBUTE: An attribute that is required by
   *  `GtkBuilder` was missing.
   * @GTK_BUILDER_ERROR_INVALID_ATTRIBUTE: `GtkBuilder` found an attribute that
   *  it doesn’t understand.
   * @GTK_BUILDER_ERROR_INVALID_TAG: `GtkBuilder` found a tag that
   *  it doesn’t understand.
   * @GTK_BUILDER_ERROR_MISSING_PROPERTY_VALUE: A required property value was
   *  missing.
   * @GTK_BUILDER_ERROR_INVALID_VALUE: `GtkBuilder` couldn’t parse
   *  some attribute value.
   * @GTK_BUILDER_ERROR_VERSION_MISMATCH: The input file requires a newer version
   *  of GTK.
   * @GTK_BUILDER_ERROR_DUPLICATE_ID: An object id occurred twice.
   * @GTK_BUILDER_ERROR_OBJECT_TYPE_REFUSED: A specified object type is of the same type or
   *  derived from the type of the composite class being extended with builder XML.
   * @GTK_BUILDER_ERROR_TEMPLATE_MISMATCH: The wrong type was specified in a composite class’s template XML
   * @GTK_BUILDER_ERROR_INVALID_PROPERTY: The specified property is unknown for the object class.
   * @GTK_BUILDER_ERROR_INVALID_SIGNAL: The specified signal is unknown for the object class.
   * @GTK_BUILDER_ERROR_INVALID_ID: An object id is unknown.
   * @GTK_BUILDER_ERROR_INVALID_FUNCTION: A function could not be found. This often happens
   *   when symbols are set to be kept private. Compiling code with -rdynamic or using the
   *   `gmodule-export-2.0` pkgconfig module can fix this problem.
   *
   * Error codes that identify various errors that can occur while using
   * `GtkBuilder`.
    }

    GtkBuilderError = (GTK_BUILDER_ERROR_INVALID_TYPE_FUNCTION,
      GTK_BUILDER_ERROR_UNHANDLED_TAG,GTK_BUILDER_ERROR_MISSING_ATTRIBUTE,
      GTK_BUILDER_ERROR_INVALID_ATTRIBUTE,
      GTK_BUILDER_ERROR_INVALID_TAG,GTK_BUILDER_ERROR_MISSING_PROPERTY_VALUE,
      GTK_BUILDER_ERROR_INVALID_VALUE,GTK_BUILDER_ERROR_VERSION_MISMATCH,
      GTK_BUILDER_ERROR_DUPLICATE_ID,GTK_BUILDER_ERROR_OBJECT_TYPE_REFUSED,
      GTK_BUILDER_ERROR_TEMPLATE_MISMATCH,
      GTK_BUILDER_ERROR_INVALID_PROPERTY,GTK_BUILDER_ERROR_INVALID_SIGNAL,
      GTK_BUILDER_ERROR_INVALID_ID,GTK_BUILDER_ERROR_INVALID_FUNCTION
      );

  function gtk_builder_error_quark:GQuark;

(* error 
GType        gtk_builder_get_type                (void) G_GNUC_CONST;
 in declarator_list *)

    var
 : GType;

  function gtk_builder_new:^GtkBuilder;

(* Const before type ignored *)
  function gtk_builder_add_from_file(builder:PGtkBuilder; filename:Pchar; error:PPGError):gboolean;

(* Const before type ignored *)
  function gtk_builder_add_from_resource(builder:PGtkBuilder; resource_path:Pchar; error:PPGError):gboolean;

(* Const before type ignored *)
  function gtk_builder_add_from_string(builder:PGtkBuilder; buffer:Pchar; length:gssize; error:PPGError):gboolean;

(* Const before type ignored *)
(* Const before type ignored *)
  function gtk_builder_add_objects_from_file(builder:PGtkBuilder; filename:Pchar; object_ids:PPchar; error:PPGError):gboolean;

(* Const before type ignored *)
(* Const before type ignored *)
  function gtk_builder_add_objects_from_resource(builder:PGtkBuilder; resource_path:Pchar; object_ids:PPchar; error:PPGError):gboolean;

(* Const before type ignored *)
(* Const before type ignored *)
  function gtk_builder_add_objects_from_string(builder:PGtkBuilder; buffer:Pchar; length:gssize; object_ids:PPchar; error:PPGError):gboolean;

(* Const before type ignored *)
  function gtk_builder_get_object(builder:PGtkBuilder; name:Pchar):^GObject;

  function gtk_builder_get_objects(builder:PGtkBuilder):^GSList;

(* Const before type ignored *)
  procedure gtk_builder_expose_object(builder:PGtkBuilder; name:Pchar; object:PGObject);

  function gtk_builder_get_current_object(builder:PGtkBuilder):^GObject;

  procedure gtk_builder_set_current_object(builder:PGtkBuilder; current_object:PGObject);

(* Const before type ignored *)
  procedure gtk_builder_set_translation_domain(builder:PGtkBuilder; domain:Pchar);

(* Const before type ignored *)
  function gtk_builder_get_translation_domain(builder:PGtkBuilder):^char;

  function gtk_builder_get_scope(builder:PGtkBuilder):^GtkBuilderScope;

  procedure gtk_builder_set_scope(builder:PGtkBuilder; scope:PGtkBuilderScope);

(* Const before type ignored *)
  function gtk_builder_get_type_from_name(builder:PGtkBuilder; type_name:Pchar):GType;

(* Const before type ignored *)
  function gtk_builder_value_from_string(builder:PGtkBuilder; pspec:PGParamSpec; _string:Pchar; value:PGValue; error:PPGError):gboolean;

(* Const before type ignored *)
  function gtk_builder_value_from_string_type(builder:PGtkBuilder; _type:GType; _string:Pchar; value:PGValue; error:PPGError):gboolean;

(* Const before type ignored *)
  function gtk_builder_new_from_file(filename:Pchar):^GtkBuilder;

(* Const before type ignored *)
  function gtk_builder_new_from_resource(resource_path:Pchar):^GtkBuilder;

(* Const before type ignored *)
  function gtk_builder_new_from_string(_string:Pchar; length:gssize):^GtkBuilder;

(* Const before type ignored *)
  function gtk_builder_create_closure(builder:PGtkBuilder; function_name:Pchar; flags:GtkBuilderClosureFlags; object:PGObject; error:PPGError):^GClosure;

  {*
   * GTK_BUILDER_WARN_INVALID_CHILD_TYPE:
   * @object: the `GtkBuildable` on which the warning occurred
   * @type: the unexpected type value
   *
   * This macro should be used to emit a warning about and unexpected @type value
   * in a `GtkBuildable` add_child implementation.
    }
  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_BUILDER_WARN_INVALID_CHILD_TYPE(object,_type : longint) : longint;  

(* Const before type ignored *)
  function gtk_builder_extend_with_template(builder:PGtkBuilder; object:PGObject; template_type:GType; buffer:Pchar; length:gssize; 
             error:PPGError):gboolean;

{$endif}
  { __GTK_BUILDER_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_BUILDER : longint; { return type might be wrong }
    begin
      GTK_TYPE_BUILDER:=gtk_builder_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_BUILDER(obj : longint) : longint;
  begin
    GTK_BUILDER:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_BUILDER,GtkBuilder);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_BUILDER_CLASS(klass : longint) : longint;
  begin
    GTK_BUILDER_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_BUILDER,GtkBuilderClass);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_BUILDER(obj : longint) : longint;
  begin
    GTK_IS_BUILDER:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_BUILDER);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_BUILDER_CLASS(klass : longint) : longint;
  begin
    GTK_IS_BUILDER_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_BUILDER);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_BUILDER_GET_CLASS(obj : longint) : longint;
  begin
    GTK_BUILDER_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_BUILDER,GtkBuilderClass);
  end;

  { was #define dname def_expr }
  function GTK_BUILDER_ERROR : longint; { return type might be wrong }
    begin
      GTK_BUILDER_ERROR:=gtk_builder_error_quark;
    end;

  function gtk_builder_error_quark:GQuark;
  begin
    { You must implement this function }
  end;
  function gtk_builder_new:PGtkBuilder;
  begin
    { You must implement this function }
  end;
  function gtk_builder_add_from_file(builder:PGtkBuilder; filename:Pchar; error:PPGError):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_builder_add_from_resource(builder:PGtkBuilder; resource_path:Pchar; error:PPGError):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_builder_add_from_string(builder:PGtkBuilder; buffer:Pchar; length:gssize; error:PPGError):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_builder_add_objects_from_file(builder:PGtkBuilder; filename:Pchar; object_ids:PPchar; error:PPGError):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_builder_add_objects_from_resource(builder:PGtkBuilder; resource_path:Pchar; object_ids:PPchar; error:PPGError):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_builder_add_objects_from_string(builder:PGtkBuilder; buffer:Pchar; length:gssize; object_ids:PPchar; error:PPGError):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_builder_get_object(builder:PGtkBuilder; name:Pchar):PGObject;
  begin
    { You must implement this function }
  end;
  function gtk_builder_get_objects(builder:PGtkBuilder):PGSList;
  begin
    { You must implement this function }
  end;
  procedure gtk_builder_expose_object(builder:PGtkBuilder; name:Pchar; object:PGObject);
  begin
    { You must implement this function }
  end;
  function gtk_builder_get_current_object(builder:PGtkBuilder):PGObject;
  begin
    { You must implement this function }
  end;
  procedure gtk_builder_set_current_object(builder:PGtkBuilder; current_object:PGObject);
  begin
    { You must implement this function }
  end;
  procedure gtk_builder_set_translation_domain(builder:PGtkBuilder; domain:Pchar);
  begin
    { You must implement this function }
  end;
  function gtk_builder_get_translation_domain(builder:PGtkBuilder):Pchar;
  begin
    { You must implement this function }
  end;
  function gtk_builder_get_scope(builder:PGtkBuilder):PGtkBuilderScope;
  begin
    { You must implement this function }
  end;
  procedure gtk_builder_set_scope(builder:PGtkBuilder; scope:PGtkBuilderScope);
  begin
    { You must implement this function }
  end;
  function gtk_builder_get_type_from_name(builder:PGtkBuilder; type_name:Pchar):GType;
  begin
    { You must implement this function }
  end;
  function gtk_builder_value_from_string(builder:PGtkBuilder; pspec:PGParamSpec; _string:Pchar; value:PGValue; error:PPGError):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_builder_value_from_string_type(builder:PGtkBuilder; _type:GType; _string:Pchar; value:PGValue; error:PPGError):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_builder_new_from_file(filename:Pchar):PGtkBuilder;
  begin
    { You must implement this function }
  end;
  function gtk_builder_new_from_resource(resource_path:Pchar):PGtkBuilder;
  begin
    { You must implement this function }
  end;
  function gtk_builder_new_from_string(_string:Pchar; length:gssize):PGtkBuilder;
  begin
    { You must implement this function }
  end;
  function gtk_builder_create_closure(builder:PGtkBuilder; function_name:Pchar; flags:GtkBuilderClosureFlags; object:PGObject; error:PPGError):PGClosure;
  begin
    { You must implement this function }
  end;
  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_BUILDER_WARN_INVALID_CHILD_TYPE(object,_type : longint) : longint;
  begin
    GTK_BUILDER_WARN_INVALID_CHILD_TYPE:=g_warning(''%s' is not a valid child type of '%s'',_type,g_type_name(G_OBJECT_TYPE(object)));
  end;

  function gtk_builder_extend_with_template(builder:PGtkBuilder; object:PGObject; template_type:GType; buffer:Pchar; length:gssize; 
             error:PPGError):gboolean;
  begin
    { You must implement this function }
  end;

