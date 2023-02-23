
unit gtkbuilderscope;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkbuilderscope.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkbuilderscope.h
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
    PGtkBuilderClosureFlags  = ^GtkBuilderClosureFlags;
    PGtkBuilderCScopeClass  = ^GtkBuilderCScopeClass;
    PGtkBuilderScope  = ^GtkBuilderScope;
    PGtkBuilderScopeInterface  = ^GtkBuilderScopeInterface;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_BUILDER_SCOPE_H__}
{$define __GTK_BUILDER_SCOPE_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtktypes.h>}


function GTK_TYPE_BUILDER_SCOPE : longint; { return type might be wrong }





type
  PGtkBuilderClosureFlags = ^TGtkBuilderClosureFlags;
  TGtkBuilderClosureFlags = (GTK_BUILDER_CLOSURE_SWAPPED := 1 shl 0);



  PGtkBuilderScopeInterface = ^TGtkBuilderScopeInterface;
  TGtkBuilderScopeInterface = record
      g_iface : TGTypeInterface;
      get_type_from_name : function (var self:TGtkBuilderScope; var builder:TGtkBuilder; type_name:Pchar):TGType;cdecl;
      get_type_from_function : function (var self:TGtkBuilderScope; var builder:TGtkBuilder; function_name:Pchar):TGType;cdecl;
      create_closure : function (var self:TGtkBuilderScope; var builder:TGtkBuilder; function_name:Pchar; flags:TGtkBuilderClosureFlags; var object:TGObject; 
                   var error:PGError):PGClosure;cdecl;
    end;

  PGtkBuilderCScopeClass = ^TGtkBuilderCScopeClass;
  TGtkBuilderCScopeClass = record
      parent_class : TGObjectClass;
    end;


function GTK_TYPE_BUILDER_CSCOPE : longint; { return type might be wrong }




function gtk_builder_cscope_new:PGtkBuilderScope;cdecl;external;

procedure gtk_builder_cscope_add_callback_symbol(var self:TGtkBuilderCScope; callback_name:Pchar; callback_symbol:TGCallback);cdecl;external;

procedure gtk_builder_cscope_add_callback_symbols(var self:TGtkBuilderCScope; first_callback_name:Pchar; first_callback_symbol:TGCallback; args:array of const);cdecl;external;
procedure gtk_builder_cscope_add_callback_symbols(var self:TGtkBuilderCScope; first_callback_name:Pchar; first_callback_symbol:TGCallback);cdecl;external;
(* error 
  gtk_builder_cscope_add_callback_symbol (GTK_BUILDER_CSCOPE (scope), #callback, G_CALLBACK (callback))
in define line 120 *)

function gtk_builder_cscope_lookup_callback_symbol(var self:TGtkBuilderCScope; callback_name:Pchar):TGCallback;cdecl;external;

{$endif}


implementation

function GTK_TYPE_BUILDER_SCOPE : longint; { return type might be wrong }
  begin
    GTK_TYPE_BUILDER_SCOPE:=gtk_builder_scope_get_type;
  end;

function GTK_TYPE_BUILDER_CSCOPE : longint; { return type might be wrong }
  begin
    GTK_TYPE_BUILDER_CSCOPE:=gtk_builder_cscope_get_type;
  end;


end.
