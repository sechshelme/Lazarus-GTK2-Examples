/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}

type
  PGtkInscriptionOverflow = ^TGtkInscriptionOverflow;
  TGtkInscriptionOverflow = longint;

const
  GTK_INSCRIPTION_OVERFLOW_CLIP = 0;
  GTK_INSCRIPTION_OVERFLOW_ELLIPSIZE_START = 1;
  GTK_INSCRIPTION_OVERFLOW_ELLIPSIZE_MIDDLE = 2;
  GTK_INSCRIPTION_OVERFLOW_ELLIPSIZE_END = 3;

  {G_DECLARE_FINAL_TYPE (GtkInscription, gtk_inscription, GTK, INSCRIPTION, GtkWidget) }
type
  TGtkInscription = record
  end;
  PGtkInscription = ^TGtkInscription;

  TGtkInscriptionClass = record
    parent_class: TGtkWidgetClass;
  end;
  PGtkInscriptionClass = ^TGtkInscriptionClass;

function gtk_inscription_get_type: TGType; cdecl; external gtklib;
function gtk_inscription_new(Text: PChar): PGtkWidget; cdecl; external gtklib;
function gtk_inscription_get_text(self: PGtkInscription): PChar; cdecl; external gtklib;
procedure gtk_inscription_set_text(self: PGtkInscription; Text: PChar); cdecl; external gtklib;
function gtk_inscription_get_attributes(self: PGtkInscription): PPangoAttrList; cdecl; external gtklib;
procedure gtk_inscription_set_attributes(self: PGtkInscription; attrs: PPangoAttrList); cdecl; external gtklib;
procedure gtk_inscription_set_markup(self: PGtkInscription; markup: PChar); cdecl; external gtklib;
function gtk_inscription_get_text_overflow(self: PGtkInscription): TGtkInscriptionOverflow; cdecl; external gtklib;
procedure gtk_inscription_set_text_overflow(self: PGtkInscription; overflow: TGtkInscriptionOverflow); cdecl; external gtklib;
function gtk_inscription_get_wrap_mode(self: PGtkInscription): TPangoWrapMode; cdecl; external gtklib;
procedure gtk_inscription_set_wrap_mode(self: PGtkInscription; wrap_mode: TPangoWrapMode); cdecl; external gtklib;
function gtk_inscription_get_min_chars(self: PGtkInscription): Tguint; cdecl; external gtklib;
procedure gtk_inscription_set_min_chars(self: PGtkInscription; min_chars: Tguint); cdecl; external gtklib;
function gtk_inscription_get_nat_chars(self: PGtkInscription): Tguint; cdecl; external gtklib;
procedure gtk_inscription_set_nat_chars(self: PGtkInscription; nat_chars: Tguint); cdecl; external gtklib;
function gtk_inscription_get_min_lines(self: PGtkInscription): Tguint; cdecl; external gtklib;
procedure gtk_inscription_set_min_lines(self: PGtkInscription; min_lines: Tguint); cdecl; external gtklib;
function gtk_inscription_get_nat_lines(self: PGtkInscription): Tguint; cdecl; external gtklib;
procedure gtk_inscription_set_nat_lines(self: PGtkInscription; nat_lines: Tguint); cdecl; external gtklib;
function gtk_inscription_get_xalign(self: PGtkInscription): single; cdecl; external gtklib;
procedure gtk_inscription_set_xalign(self: PGtkInscription; xalign: single); cdecl; external gtklib;
function gtk_inscription_get_yalign(self: PGtkInscription): single; cdecl; external gtklib;
procedure gtk_inscription_set_yalign(self: PGtkInscription; yalign: single); cdecl; external gtklib;

// === Konventiert am: 27-7-24 19:38:48 ===

function GTK_TYPE_INSCRIPTION: TGType;
function GTK_INSCRIPTION(obj: Pointer): PGtkInscription;
function GTK_IS_INSCRIPTION(obj: Pointer): Tgboolean;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GTK_TYPE_INSCRIPTION: TGType;
begin
  Result := gtk_inscription_get_type;
end;

function GTK_INSCRIPTION(obj: Pointer): PGtkInscription;
begin
  Result := PGtkInscription(g_type_check_instance_cast(obj, GTK_TYPE_INSCRIPTION));
end;

function GTK_IS_INSCRIPTION(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_INSCRIPTION);
end;




{$ENDIF read_implementation}
