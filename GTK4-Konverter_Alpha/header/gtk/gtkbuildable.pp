
unit gtkbuildable;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkbuildable.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkbuildable.h
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
PGError  = ^GError;
PGObject  = ^GObject;
PGPtrArray  = ^GPtrArray;
PGtkBuildableIface  = ^GtkBuildableIface;
PGtkBuildableParser  = ^GtkBuildableParser;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_BUILDABLE_H__}
{$define __GTK_BUILDABLE_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkbuilder.h>}


function GTK_TYPE_BUILDABLE : longint; { return type might be wrong }

function GTK_BUILDABLE(obj : longint) : longint;

function GTK_IS_BUILDABLE(obj : longint) : longint;

function GTK_BUILDABLE_GET_IFACE(obj : longint) : longint;

type









  PGtkBuildableParser = ^TGtkBuildableParser;
  TGtkBuildableParser = record
      start_element : procedure (var context:TGtkBuildableParseContext; element_name:Pchar; attribute_names:PPchar; attribute_values:PPchar; user_data:Tgpointer; 
                    var error:PGError);cdecl;
      end_element : procedure (var context:TGtkBuildableParseContext; element_name:Pchar; user_data:Tgpointer; var error:PGError);cdecl;
      text : procedure (var context:TGtkBuildableParseContext; text:Pchar; text_len:Tgsize; user_data:Tgpointer; var error:PGError);cdecl;
      error : procedure (var context:TGtkBuildableParseContext; var error:TGError; user_data:Tgpointer);cdecl;
      padding : array[0..3] of Tgpointer;
    end;








  PGtkBuildableIface = ^TGtkBuildableIface;
  TGtkBuildableIface = record
      g_iface : TGTypeInterface;
      set_id : procedure (var buildable:TGtkBuildable; id:Pchar);cdecl;
      get_id : function (var buildable:TGtkBuildable):Pchar;cdecl;
      add_child : procedure (var buildable:TGtkBuildable; var builder:TGtkBuilder; var child:TGObject; _type:Pchar);cdecl;
      set_buildable_property : procedure (var buildable:TGtkBuildable; var builder:TGtkBuilder; name:Pchar; var value:TGValue);cdecl;
      construct_child : function (var buildable:TGtkBuildable; var builder:TGtkBuilder; name:Pchar):PGObject;cdecl;
      custom_tag_start : function (var buildable:TGtkBuildable; var builder:TGtkBuilder; var child:TGObject; tagname:Pchar; var parser:TGtkBuildableParser; 
                   var data:Tgpointer):Tgboolean;cdecl;
      custom_tag_end : procedure (var buildable:TGtkBuildable; var builder:TGtkBuilder; var child:TGObject; tagname:Pchar; data:Tgpointer);cdecl;
      custom_finished : procedure (var buildable:TGtkBuildable; var builder:TGtkBuilder; var child:TGObject; tagname:Pchar; data:Tgpointer);cdecl;
      parser_finished : procedure (var buildable:TGtkBuildable; var builder:TGtkBuilder);cdecl;
      get_internal_child : function (var buildable:TGtkBuildable; var builder:TGtkBuilder; childname:Pchar):PGObject;cdecl;
    end;



function gtk_buildable_get_type:TGType;cdecl;external;

function gtk_buildable_get_buildable_id(var buildable:TGtkBuildable):Pchar;cdecl;external;

procedure gtk_buildable_parse_context_push(var context:TGtkBuildableParseContext; var parser:TGtkBuildableParser; user_data:Tgpointer);cdecl;external;

function gtk_buildable_parse_context_pop(var context:TGtkBuildableParseContext):Tgpointer;cdecl;external;

function gtk_buildable_parse_context_get_element(var context:TGtkBuildableParseContext):Pchar;cdecl;external;

function gtk_buildable_parse_context_get_element_stack(var context:TGtkBuildableParseContext):PGPtrArray;cdecl;external;

procedure gtk_buildable_parse_context_get_position(var context:TGtkBuildableParseContext; var line_number:longint; var char_number:longint);cdecl;external;

{$endif}


implementation

function GTK_TYPE_BUILDABLE : longint; { return type might be wrong }
  begin
    GTK_TYPE_BUILDABLE:=gtk_buildable_get_type;
  end;

function GTK_BUILDABLE(obj : longint) : longint;
begin
  GTK_BUILDABLE:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_BUILDABLE,GtkBuildable);
end;

function GTK_IS_BUILDABLE(obj : longint) : longint;
begin
  GTK_IS_BUILDABLE:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_BUILDABLE);
end;

function GTK_BUILDABLE_GET_IFACE(obj : longint) : longint;
begin
  GTK_BUILDABLE_GET_IFACE:=G_TYPE_INSTANCE_GET_INTERFACE(obj,GTK_TYPE_BUILDABLE,GtkBuildableIface);
end;


end.
