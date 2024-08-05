/////////////////////////////////////////////////////////////
//                                                         //
//   WARNUNG, dies Datei wird automatisch durch            //
//   das Program "Convert_Unit_to_pas_includes" erzeugt !  //
//   Erzeugt am: 05-08-2024   15:41                        //
//                                                         //
/////////////////////////////////////////////////////////////

{$IFDEF read_interface}

type
  TGtkEmojiChooser = record // _GtkEmojiChooser
  end;
  PGtkEmojiChooser = ^TGtkEmojiChooser;

  TGtkEmojiChooserClass = record // _GtkEmojiChooserClass
  end;
  PGtkEmojiChooserClass = ^TGtkEmojiChooserClass;

function gtk_emoji_chooser_get_type: TGType; cdecl; external gtklib;
function gtk_emoji_chooser_new: PGtkWidget; cdecl; external gtklib;

// === Konventiert am: 25-7-24 18:00:59 ===

function GTK_TYPE_EMOJI_CHOOSER: TGType;
function GTK_EMOJI_CHOOSER(obj: Pointer): PGtkEmojiChooser;
function GTK_EMOJI_CHOOSER_CLASS(klass: Pointer): PGtkEmojiChooserClass;
function GTK_IS_EMOJI_CHOOSER(obj: Pointer): Tgboolean;
function GTK_IS_EMOJI_CHOOSER_CLASS(klass: Pointer): Tgboolean;
function GTK_EMOJI_CHOOSER_GET_CLASS(obj: Pointer): PGtkEmojiChooserClass;

{$ENDIF read_interface}


{$IFDEF read_implementation}

function GTK_TYPE_EMOJI_CHOOSER: TGType;
begin
  GTK_TYPE_EMOJI_CHOOSER := gtk_emoji_chooser_get_type;
end;

function GTK_EMOJI_CHOOSER(obj: Pointer): PGtkEmojiChooser;
begin
  Result := PGtkEmojiChooser(g_type_check_instance_cast(obj, GTK_TYPE_EMOJI_CHOOSER));
end;

function GTK_EMOJI_CHOOSER_CLASS(klass: Pointer): PGtkEmojiChooserClass;
begin
  Result := PGtkEmojiChooserClass(g_type_check_class_cast(klass, GTK_TYPE_EMOJI_CHOOSER));
end;

function GTK_IS_EMOJI_CHOOSER(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_EMOJI_CHOOSER);
end;

function GTK_IS_EMOJI_CHOOSER_CLASS(klass: Pointer): Tgboolean;
begin
  Result := g_type_check_class_is_a(klass, GTK_TYPE_EMOJI_CHOOSER);
end;

function GTK_EMOJI_CHOOSER_GET_CLASS(obj: Pointer): PGtkEmojiChooserClass;
begin
  Result := PGtkEmojiChooserClass(PGTypeInstance(obj)^.g_class);
end;



{$ENDIF read_implementation}
