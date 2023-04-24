unit ComboBox;

interface

uses
  Strings,
  SysUtils,
  GLib2,
  Gdk2,
  Gtk2;

function CreateComboBox: PGtkWidget;

implementation

function CreateComboBox: PGtkWidget;
var
  cbitems: PGList=nil;
  combo: PGtkWidget;
begin
  cbitems:=g_list_append(cbitems,PChar('Arial'));
  cbitems:=g_list_append(cbitems,PChar('Times Roman'));
  cbitems:=g_list_append(cbitems,PChar('Wing Dings'));
  cbitems:=g_list_append(cbitems,PChar('Sandscript'));

  combo:=gtk_combo_new;

  gtk_combo_set_popdown_strings(GTK_COMBO(combo),cbitems);

  gtk_entry_set_text(GTK_ENTRY(GTK_COMBO(combo)^.entry),'Arial');

  gtk_entry_set_editable(GTK_ENTRY(GTK_COMBO(combo)^.entry),False);

  gtk_widget_show(combo);

  Result:=combo;
end;

end.

