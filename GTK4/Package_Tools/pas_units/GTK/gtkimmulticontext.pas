unit gtkimmulticontext;

interface

uses
  glib2, common_GTK, gtkimcontext;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}


type
  TGtkIMMulticontextPrivate = record // _GtkIMMulticontextPrivate
  end;
  PGtkIMMulticontextPrivate = ^TGtkIMMulticontextPrivate;

  TGtkIMMulticontext = record
    object_: TGtkIMContext;
    priv: PGtkIMMulticontextPrivate;
  end;
  PGtkIMMulticontext = ^TGtkIMMulticontext;

  TGtkIMMulticontextClass = record
    parent_class: TGtkIMContextClass;
    _gtk_reserved1: procedure; cdecl;
    _gtk_reserved2: procedure; cdecl;
    _gtk_reserved3: procedure; cdecl;
    _gtk_reserved4: procedure; cdecl;
  end;
  PGtkIMMulticontextClass = ^TGtkIMMulticontextClass;

function gtk_im_multicontext_get_type: TGType; cdecl; external gtklib;
function gtk_im_multicontext_new: PGtkIMContext; cdecl; external gtklib;
function gtk_im_multicontext_get_context_id(context: PGtkIMMulticontext): PChar; cdecl; external gtklib;
procedure gtk_im_multicontext_set_context_id(context: PGtkIMMulticontext; context_id: PChar); cdecl; external gtklib;

// === Konventiert am: 27-7-24 19:38:42 ===

function GTK_TYPE_IM_MULTICONTEXT: TGType;
function GTK_IM_MULTICONTEXT(obj: Pointer): PGtkIMMulticontext;
function GTK_IM_MULTICONTEXT_CLASS(klass: Pointer): PGtkIMMulticontextClass;
function GTK_IS_IM_MULTICONTEXT(obj: Pointer): Tgboolean;
function GTK_IS_IM_MULTICONTEXT_CLASS(klass: Pointer): Tgboolean;
function GTK_IM_MULTICONTEXT_GET_CLASS(obj: Pointer): PGtkIMMulticontextClass;

implementation

function GTK_TYPE_IM_MULTICONTEXT: TGType;
begin
  GTK_TYPE_IM_MULTICONTEXT := gtk_im_multicontext_get_type;
end;

function GTK_IM_MULTICONTEXT(obj: Pointer): PGtkIMMulticontext;
begin
  Result := PGtkIMMulticontext(g_type_check_instance_cast(obj, GTK_TYPE_IM_MULTICONTEXT));
end;

function GTK_IM_MULTICONTEXT_CLASS(klass: Pointer): PGtkIMMulticontextClass;
begin
  Result := PGtkIMMulticontextClass(g_type_check_class_cast(klass, GTK_TYPE_IM_MULTICONTEXT));
end;

function GTK_IS_IM_MULTICONTEXT(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_IM_MULTICONTEXT);
end;

function GTK_IS_IM_MULTICONTEXT_CLASS(klass: Pointer): Tgboolean;
begin
  Result := g_type_check_class_is_a(klass, GTK_TYPE_IM_MULTICONTEXT);
end;

function GTK_IM_MULTICONTEXT_GET_CLASS(obj: Pointer): PGtkIMMulticontextClass;
begin
  Result := PGtkIMMulticontextClass(PGTypeInstance(obj)^.g_class);
end;



end.
