
unit gtkbuildable;
interface

{
  Automatically converted by H2Pas 1.0.0 from gtkbuildable.h
  The following command line parameters were used:
    -p
    -T
    -d
    -c
    -e
    gtkbuildable.h
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
PGObject  = ^GObject;
Pgpointer  = ^gpointer;
PGPtrArray  = ^GPtrArray;
PGtkBuildable  = ^GtkBuildable;
PGtkBuildableIface  = ^GtkBuildableIface;
PGtkBuildableParseContext  = ^GtkBuildableParseContext;
PGtkBuildableParser  = ^GtkBuildableParser;
PGtkBuilder  = ^GtkBuilder;
PGValue  = ^GValue;
Plongint  = ^longint;
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
(** unsupported pragma#pragma once*)
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkbuilder.h>}

{ was #define dname def_expr }
function GTK_TYPE_BUILDABLE : longint; { return type might be wrong }

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function GTK_BUILDABLE(obj : longint) : longint;

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function GTK_IS_BUILDABLE(obj : longint) : longint;

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function GTK_BUILDABLE_GET_IFACE(obj : longint) : longint;

type
{ Dummy typedef  }
{*
 * GtkBuildableParseContext:
 *
 * An opaque context struct for `GtkBuildableParser`.
  }
{*
 * GtkBuildableParser:
 * @start_element: function called for open elements
 * @end_element: function called for close elements
 * @text: function called for character data
 * @error: function called on error
 *
 * A sub-parser for `GtkBuildable` implementations.
  }
{ Called for open tags <foo bar="baz">  }
(* Const before type ignored *)
(* Const before type ignored *)
(* Const before type ignored *)
{ Called for close tags </foo>  }
(* Const before type ignored *)
{ Called for character data  }
{ text is not nul-terminated  }
(* Const before type ignored *)
{ Called on error, including one set by other
   * methods in the vtable. The GError should not be freed.
    }
{< private > }
  PGtkBuildableParser = ^TGtkBuildableParser;
  TGtkBuildableParser = record
      start_element : procedure (context:PGtkBuildableParseContext; element_name:Pchar; attribute_names:PPchar; attribute_values:PPchar; user_data:Tgpointer; 
                    error:PPGError);cdecl;
      end_element : procedure (context:PGtkBuildableParseContext; element_name:Pchar; user_data:Tgpointer; error:PPGError);cdecl;
      text : procedure (context:PGtkBuildableParseContext; text:Pchar; text_len:Tgsize; user_data:Tgpointer; error:PPGError);cdecl;
      error : procedure (context:PGtkBuildableParseContext; error:PGError; user_data:Tgpointer);cdecl;
      padding : array[0..3] of Tgpointer;
    end;

{*
 * GtkBuildableIface:
 * @g_iface: the parent class
 * @set_id: Stores the id attribute given in the `GtkBuilder` UI definition.
 *   `GtkWidget` stores the name as object data. Implement this method if your
 *   object has some notion of “ID” and it makes sense to map the XML id
 *   attribute to it.
 * @get_id: The getter corresponding to @set_id. Implement this
 *   if you implement @set_id.
 * @add_child: Adds a child. The @type parameter can be used to
 *   differentiate the kind of child. `GtkWidget` implements this
 *   to add event controllers to the widget, `GtkNotebook` uses
 *   the @type to distinguish between page labels (of type "page-label")
 *   and normal children.
 * @set_buildable_property: Sets a property of a buildable object.
 *  It is normally not necessary to implement this, g_object_set_property()
 *  is used by default. `GtkWindow` implements this to delay showing itself
 *  (i.e. setting the [property@Gtk.Widget:visible] property) until the whole
 *  interface is created.
 * @construct_child: Constructs a child of a buildable that has been
 *  specified as “constructor” in the UI definition. This can be used to
 *  reference a widget created in a `<ui>` tag which is outside
 *  of the normal GtkBuilder UI definition hierarchy.  A reference to the
 *  constructed object is returned and becomes owned by the caller.
 * @custom_tag_start: Implement this if the buildable needs to parse
 *  content below `<child>`. To handle an element, the implementation
 *  must fill in the @parser and @user_data and return %TRUE.
 *  `GtkWidget` implements this to parse accessible attributes specified
 *  in `<accessibility>` elements.
 *  Note that @user_data must be freed in @custom_tag_end or @custom_finished.
 * @custom_tag_end: Called for the end tag of each custom element that is
 *  handled by the buildable (see @custom_tag_start).
 * @custom_finished: Called for each custom tag handled by the buildable
 *  when the builder finishes parsing (see @custom_tag_start)
 * @parser_finished: Called when a builder finishes the parsing
 *  of a UI definition. It is normally not necessary to implement this,
 *  unless you need to perform special cleanup actions. `GtkWindow` sets
 *  the `GtkWidget:visible` property here.
 * @get_internal_child: Returns an internal child of a buildable.
 *  `GtkDialog` implements this to give access to its @vbox, making
 *  it possible to add children to the vbox in a UI definition.
 *  Implement this if the buildable has internal children that may
 *  need to be accessed from a UI definition.
 *
 * The `GtkBuildableIface` interface contains methods that are
 * necessary to allow `GtkBuilder` to construct an object from
 * a `GtkBuilder` UI definition.
  }
{ virtual table  }
(* Const before type ignored *)
(* Const before type ignored *)
{*
   * GtkBuildableIface::add_child:
   * @buildable: a `GtkBuildable`
   * @builder: a `GtkBuilder`
   * @child: child to add
   * @type: (nullable): kind of child or %NULL
   *
   * Adds a child to @buildable. @type is an optional string
   * describing how the child should be added.
    }
(* Const before type ignored *)
(* Const before type ignored *)
(* Const before type ignored *)
(* Const before type ignored *)
{*
   * GtkBuildableIface::custom_tag_start:
   * @buildable: a `GtkBuildable`
   * @builder: a `GtkBuilder` used to construct this object
   * @child: (nullable): child object or %NULL for non-child tags
   * @tagname: name of tag
   * @parser: (out): a `GtkBuildableParser` to fill in
   * @data: (out): return location for user data that will be passed in
   *   to parser functions
   *
   * Called for each unknown element under `<child>`.
   *
   * Returns: %TRUE if an object has a custom implementation, %FALSE
   *   if it doesn't.
    }
(* Const before type ignored *)
{*
   * GtkBuildableIface::custom_tag_end:
   * @buildable: A `GtkBuildable`
   * @builder: `GtkBuilder` used to construct this object
   * @child: (nullable): child object or %NULL for non-child tags
   * @tagname: name of tag
   * @data: user data that will be passed in to parser functions
   *
   * Called at the end of each custom element handled by
   * the buildable.
    }
(* Const before type ignored *)
{*
    * GtkBuildableIface::custom_finished:
    * @buildable: a `GtkBuildable`
    * @builder: a `GtkBuilder`
    * @child: (nullable): child object or %NULL for non-child tags
    * @tagname: the name of the tag
    * @data: user data created in custom_tag_start
    *
    * Similar to gtk_buildable_parser_finished() but is
    * called once for each custom tag handled by the @buildable.
     }
(* Const before type ignored *)
{*
   * GtkBuildableIface::get_internal_child:
   * @buildable: a `GtkBuildable`
   * @builder: a `GtkBuilder`
   * @childname: name of child
   *
   * Retrieves the internal child called @childname of the @buildable object.
   *
   * Returns: (transfer none): the internal child of the buildable object
    }
(* Const before type ignored *)
  PGtkBuildableIface = ^TGtkBuildableIface;
  TGtkBuildableIface = record
      g_iface : TGTypeInterface;
      set_id : procedure (buildable:PGtkBuildable; id:Pchar);cdecl;
      get_id : function (buildable:PGtkBuildable):Pchar;cdecl;
      add_child : procedure (buildable:PGtkBuildable; builder:PGtkBuilder; child:PGObject; _type:Pchar);cdecl;
      set_buildable_property : procedure (buildable:PGtkBuildable; builder:PGtkBuilder; name:Pchar; value:PGValue);cdecl;
      construct_child : function (buildable:PGtkBuildable; builder:PGtkBuilder; name:Pchar):PGObject;cdecl;
      custom_tag_start : function (buildable:PGtkBuildable; builder:PGtkBuilder; child:PGObject; tagname:Pchar; parser:PGtkBuildableParser; 
                   data:Pgpointer):Tgboolean;cdecl;
      custom_tag_end : procedure (buildable:PGtkBuildable; builder:PGtkBuilder; child:PGObject; tagname:Pchar; data:Tgpointer);cdecl;
      custom_finished : procedure (buildable:PGtkBuildable; builder:PGtkBuilder; child:PGObject; tagname:Pchar; data:Tgpointer);cdecl;
      parser_finished : procedure (buildable:PGtkBuildable; builder:PGtkBuilder);cdecl;
      get_internal_child : function (buildable:PGtkBuildable; builder:PGtkBuilder; childname:Pchar):PGObject;cdecl;
    end;


function gtk_buildable_get_type:TGType;cdecl;external;
(* Const before type ignored *)
function gtk_buildable_get_buildable_id(buildable:PGtkBuildable):Pchar;cdecl;external;
(* Const before type ignored *)
procedure gtk_buildable_parse_context_push(context:PGtkBuildableParseContext; parser:PGtkBuildableParser; user_data:Tgpointer);cdecl;external;
function gtk_buildable_parse_context_pop(context:PGtkBuildableParseContext):Tgpointer;cdecl;external;
(* Const before type ignored *)
function gtk_buildable_parse_context_get_element(context:PGtkBuildableParseContext):Pchar;cdecl;external;
function gtk_buildable_parse_context_get_element_stack(context:PGtkBuildableParseContext):PGPtrArray;cdecl;external;
procedure gtk_buildable_parse_context_get_position(context:PGtkBuildableParseContext; line_number:Plongint; char_number:Plongint);cdecl;external;

implementation

{ was #define dname def_expr }
function GTK_TYPE_BUILDABLE : longint; { return type might be wrong }
  begin
    GTK_TYPE_BUILDABLE:=gtk_buildable_get_type;
  end;

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function GTK_BUILDABLE(obj : longint) : longint;
begin
  GTK_BUILDABLE:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_BUILDABLE,GtkBuildable);
end;

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function GTK_IS_BUILDABLE(obj : longint) : longint;
begin
  GTK_IS_BUILDABLE:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_BUILDABLE);
end;

{ was #define dname(params) para_def_expr }
{ argument types are unknown }
{ return type might be wrong }   
function GTK_BUILDABLE_GET_IFACE(obj : longint) : longint;
begin
  GTK_BUILDABLE_GET_IFACE:=G_TYPE_INSTANCE_GET_INTERFACE(obj,GTK_TYPE_BUILDABLE,GtkBuildableIface);
end;


end.
