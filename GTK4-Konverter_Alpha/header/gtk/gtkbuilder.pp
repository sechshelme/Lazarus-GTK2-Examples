
unit gtkbuilder;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkbuilder.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkbuilder.h
    -v
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
PGError  = ^GError;
PGObject  = ^GObject;
PGSList  = ^GSList;
PGtkBuilder  = ^GtkBuilder;
PGtkBuilderError  = ^GtkBuilderError;
PGtkBuilderScope  = ^GtkBuilderScope;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_BUILDER_H__}
{$define __GTK_BUILDER_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkbuilderscope.h>}
{$include <gtk/gtkwidget.h>}


function GTK_TYPE_BUILDER : longint; { return type might be wrong }

function GTK_BUILDER(obj : longint) : longint;

function GTK_BUILDER_CLASS(klass : longint) : longint;

function GTK_IS_BUILDER(obj : longint) : longint;

function GTK_IS_BUILDER_CLASS(klass : longint) : longint;

function GTK_BUILDER_GET_CLASS(obj : longint) : longint;

function GTK_BUILDER_ERROR : longint; { return type might be wrong }

type


  PGtkBuilderError = ^TGtkBuilderError;
  TGtkBuilderError = (GTK_BUILDER_ERROR_INVALID_TYPE_FUNCTION,
    GTK_BUILDER_ERROR_UNHANDLED_TAG,GTK_BUILDER_ERROR_MISSING_ATTRIBUTE,
    GTK_BUILDER_ERROR_INVALID_ATTRIBUTE,GTK_BUILDER_ERROR_INVALID_TAG,
    GTK_BUILDER_ERROR_MISSING_PROPERTY_VALUE,
    GTK_BUILDER_ERROR_INVALID_VALUE,GTK_BUILDER_ERROR_VERSION_MISMATCH,
    GTK_BUILDER_ERROR_DUPLICATE_ID,GTK_BUILDER_ERROR_OBJECT_TYPE_REFUSED,
    GTK_BUILDER_ERROR_TEMPLATE_MISMATCH,GTK_BUILDER_ERROR_INVALID_PROPERTY,
    GTK_BUILDER_ERROR_INVALID_SIGNAL,GTK_BUILDER_ERROR_INVALID_ID,
    GTK_BUILDER_ERROR_INVALID_FUNCTION);


function gtk_builder_error_quark:TGQuark;cdecl;external;

function gtk_builder_get_type:TGType;cdecl;external;

function gtk_builder_new:PGtkBuilder;cdecl;external;

function gtk_builder_add_from_file(var builder:TGtkBuilder; filename:Pchar; var error:PGError):Tgboolean;cdecl;external;

function gtk_builder_add_from_resource(var builder:TGtkBuilder; resource_path:Pchar; var error:PGError):Tgboolean;cdecl;external;

function gtk_builder_add_from_string(var builder:TGtkBuilder; buffer:Pchar; length:Tgssize; var error:PGError):Tgboolean;cdecl;external;

function gtk_builder_add_objects_from_file(var builder:TGtkBuilder; filename:Pchar; object_ids:PPchar; var error:PGError):Tgboolean;cdecl;external;

function gtk_builder_add_objects_from_resource(var builder:TGtkBuilder; resource_path:Pchar; object_ids:PPchar; var error:PGError):Tgboolean;cdecl;external;

function gtk_builder_add_objects_from_string(var builder:TGtkBuilder; buffer:Pchar; length:Tgssize; object_ids:PPchar; var error:PGError):Tgboolean;cdecl;external;

function gtk_builder_get_object(var builder:TGtkBuilder; name:Pchar):PGObject;cdecl;external;

function gtk_builder_get_objects(var builder:TGtkBuilder):PGSList;cdecl;external;

procedure gtk_builder_expose_object(var builder:TGtkBuilder; name:Pchar; var object:TGObject);cdecl;external;

function gtk_builder_get_current_object(var builder:TGtkBuilder):PGObject;cdecl;external;

procedure gtk_builder_set_current_object(var builder:TGtkBuilder; var current_object:TGObject);cdecl;external;

procedure gtk_builder_set_translation_domain(var builder:TGtkBuilder; domain:Pchar);cdecl;external;

function gtk_builder_get_translation_domain(var builder:TGtkBuilder):Pchar;cdecl;external;

function gtk_builder_get_scope(var builder:TGtkBuilder):PGtkBuilderScope;cdecl;external;

procedure gtk_builder_set_scope(var builder:TGtkBuilder; var scope:TGtkBuilderScope);cdecl;external;

function gtk_builder_get_type_from_name(var builder:TGtkBuilder; type_name:Pchar):TGType;cdecl;external;

function gtk_builder_value_from_string(var builder:TGtkBuilder; var pspec:TGParamSpec; _string:Pchar; var value:TGValue; var error:PGError):Tgboolean;cdecl;external;

function gtk_builder_value_from_string_type(var builder:TGtkBuilder; _type:TGType; _string:Pchar; var value:TGValue; var error:PGError):Tgboolean;cdecl;external;

function gtk_builder_new_from_file(filename:Pchar):PGtkBuilder;cdecl;external;

function gtk_builder_new_from_resource(resource_path:Pchar):PGtkBuilder;cdecl;external;

function gtk_builder_new_from_string(_string:Pchar; length:Tgssize):PGtkBuilder;cdecl;external;

function gtk_builder_create_closure(var builder:TGtkBuilder; function_name:Pchar; flags:TGtkBuilderClosureFlags; var object:TGObject; var error:PGError):PGClosure;cdecl;external;

function GTK_BUILDER_WARN_INVALID_CHILD_TYPE(object,_type : longint) : longint;


function gtk_builder_extend_with_template(var builder:TGtkBuilder; var object:TGObject; template_type:TGType; buffer:Pchar; length:Tgssize; 
           var error:PGError):Tgboolean;cdecl;external;

{$endif}


implementation

function GTK_TYPE_BUILDER : longint; { return type might be wrong }
  begin
    GTK_TYPE_BUILDER:=gtk_builder_get_type;
  end;

function GTK_BUILDER(obj : longint) : longint;
begin
  GTK_BUILDER:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_BUILDER,GtkBuilder);
end;

function GTK_BUILDER_CLASS(klass : longint) : longint;
begin
  GTK_BUILDER_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_BUILDER,GtkBuilderClass);
end;

function GTK_IS_BUILDER(obj : longint) : longint;
begin
  GTK_IS_BUILDER:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_BUILDER);
end;

function GTK_IS_BUILDER_CLASS(klass : longint) : longint;
begin
  GTK_IS_BUILDER_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_BUILDER);
end;

function GTK_BUILDER_GET_CLASS(obj : longint) : longint;
begin
  GTK_BUILDER_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_BUILDER,GtkBuilderClass);
end;

function GTK_BUILDER_ERROR : longint; { return type might be wrong }
  begin
    GTK_BUILDER_ERROR:=gtk_builder_error_quark;
  end;

function GTK_BUILDER_WARN_INVALID_CHILD_TYPE(object,_type : longint) : longint;
begin
  GTK_BUILDER_WARN_INVALID_CHILD_TYPE:=g_warning(''%s' is not a valid child type of '%s'',_type,g_type_name(G_OBJECT_TYPE(object)));
end;


end.
