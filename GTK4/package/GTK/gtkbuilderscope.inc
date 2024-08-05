/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}

  {G_DECLARE_INTERFACE (GtkBuilderScope, gtk_builder_scope, GTK, BUILDER_SCOPE, GObject) }
  // ausgelagert
//type
//  TGtkBuilderScope = record
//  end;
//  PGtkBuilderScope = ^TGtkBuilderScope;
//

//type
//  PGtkBuilderClosureFlags = ^TGtkBuilderClosureFlags;
//  TGtkBuilderClosureFlags = longint;
//
//const
//  GTK_BUILDER_CLOSURE_SWAPPED = 1 shl 0;

type
  PGtkBuilderScopeInterface = ^TGtkBuilderScopeInterface;

  TGtkBuilderScopeInterface = record
    g_iface: TGTypeInterface;
    get_type_from_name: function(self: PGtkBuilderScope; builder: PGtkBuilder; type_name: PChar): TGType; cdecl;
    get_type_from_function: function(self: PGtkBuilderScope; builder: PGtkBuilder; function_name: PChar): TGType; cdecl;
    create_closure: function(self: PGtkBuilderScope; builder: PGtkBuilder; function_name: PChar; flags: TGtkBuilderClosureFlags; obj: PGObject;
      error: PPGError): PGClosure; cdecl;
  end;

function gtk_builder_scope_get_type: TGType; cdecl; external gtklib;

{G_DECLARE_DERIVABLE_TYPE (GtkBuilderCScope, gtk_builder_cscope, GTK, BUILDER_CSCOPE, GObject) }
type
  TGtkBuilderCScope = record
    parent_instance: TGObject
  end;
  PGtkBuilderCScope = ^TGtkBuilderCScope;

  PGtkBuilderCScopeClass = ^TGtkBuilderCScopeClass;

  TGtkBuilderCScopeClass = record
    parent_class: TGObjectClass;
  end;


function gtk_builder_cscope_get_type: TGType; cdecl; external gtklib;
function gtk_builder_cscope_new: PGtkBuilderScope; cdecl; external gtklib;
procedure gtk_builder_cscope_add_callback_symbol(self: PGtkBuilderCScope; callback_name: PChar; callback_symbol: TGCallback); cdecl; external gtklib;
procedure gtk_builder_cscope_add_callback_symbols(self: PGtkBuilderCScope; first_callback_name: PChar; first_callback_symbol: TGCallback; args: array of const); cdecl; external gtklib;
procedure gtk_builder_cscope_add_callback_symbols(self: PGtkBuilderCScope; first_callback_name: PChar; first_callback_symbol: TGCallback); cdecl; external gtklib;

{#define gtk_builder_cscope_add_callback(scope, callback) \ }
{  gtk_builder_cscope_add_callback_symbol (GTK_BUILDER_CSCOPE (scope), #callback, G_CALLBACK (callback)) }

function gtk_builder_cscope_lookup_callback_symbol(self: PGtkBuilderCScope; callback_name: PChar): TGCallback; cdecl; external gtklib;

// === Konventiert am: 17-7-24 16:42:50 ===

function GTK_TYPE_BUILDER_SCOPE: TGType;
function GTK_BUILDER_SCOPE(obj: Pointer): PGtkBuilderScope;
function GTK_IS_BUILDER_SCOPE(obj: Pointer): Tgboolean;
function GTK_BUILDER_SCOPE_GET_IFACE(obj: Pointer): PGtkBuilderScopeInterface;

function GTK_TYPE_BUILDER_CSCOPE: TGType;
function GTK_BUILDER_CSCOPE(obj: Pointer): PGtkBuilderCScope;
function GTK_IS_BUILDER_CSCOPE(obj: Pointer): Tgboolean;
function GTK_BUILDER_CSCOPE_CLASS(klass: Pointer): PGtkBuilderCScopeClass;
function GTK_IS_BUILDER_CSCOPE_CLASS(klass: Pointer): Tgboolean;
function GTK_BUILDER_CSCOPE_GET_CLASS(obj: Pointer): PGtkBuilderCScopeClass;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GTK_TYPE_BUILDER_SCOPE: TGType;
begin
  Result := gtk_builder_scope_get_type;
end;

function GTK_BUILDER_SCOPE(obj: Pointer): PGtkBuilderScope;
begin
  Result := PGtkBuilderScope(g_type_check_instance_cast(obj, GTK_TYPE_BUILDER_SCOPE));
end;

function GTK_IS_BUILDER_SCOPE(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_BUILDER_SCOPE);
end;

function GTK_BUILDER_SCOPE_GET_IFACE(obj: Pointer): PGtkBuilderScopeInterface;
begin
  Result := g_type_interface_peek(obj, GTK_TYPE_BUILDER_SCOPE);
end;

// ====

function GTK_TYPE_BUILDER_CSCOPE: TGType;
begin
  Result := gtk_builder_cscope_get_type;
end;

function GTK_BUILDER_CSCOPE(obj: Pointer): PGtkBuilderCScope;
begin
  Result := PGtkBuilderCScope(g_type_check_instance_cast(obj, GTK_TYPE_BUILDER_CSCOPE));
end;

function GTK_IS_BUILDER_CSCOPE(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_BUILDER_CSCOPE);
end;

function GTK_BUILDER_CSCOPE_CLASS(klass: Pointer): PGtkBuilderCScopeClass;
begin
  Result := PGtkBuilderCScopeClass(g_type_check_class_cast(klass, GTK_TYPE_BUILDER_CSCOPE));
end;

function GTK_IS_BUILDER_CSCOPE_CLASS(klass: Pointer): Tgboolean;
begin
  Result := g_type_check_class_is_a(klass, GTK_TYPE_BUILDER_CSCOPE);
end;

function GTK_BUILDER_CSCOPE_GET_CLASS(obj: Pointer): PGtkBuilderCScopeClass;
begin
  Result := PGtkBuilderCScopeClass(PGTypeInstance(obj)^.g_class);
end;


{$ENDIF read_implementation}
