unit gtkprintoperationpreview;

interface

uses
  glib2, common_GTK, gtkprintcontext, gtkpagesetup;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}

type
  TGtkPrintOperationPreview = record // _GtkPrintOperationPreview
  end;
  PGtkPrintOperationPreview = ^TGtkPrintOperationPreview;

  TGtkPrintOperationPreviewIface = record
    g_iface: TGTypeInterface;
    ready: procedure(preview: PGtkPrintOperationPreview; context: PGtkPrintContext); cdecl;
    got_page_size: procedure(preview: PGtkPrintOperationPreview; context: PGtkPrintContext; page_setup: PGtkPageSetup); cdecl;
    render_page: procedure(preview: PGtkPrintOperationPreview; page_nr: longint); cdecl;
    is_selected: function(preview: PGtkPrintOperationPreview; page_nr: longint): Tgboolean; cdecl;
    end_preview: procedure(preview: PGtkPrintOperationPreview); cdecl;
    _gtk_reserved1: procedure; cdecl;
    _gtk_reserved2: procedure; cdecl;
    _gtk_reserved3: procedure; cdecl;
    _gtk_reserved4: procedure; cdecl;
    _gtk_reserved5: procedure; cdecl;
    _gtk_reserved6: procedure; cdecl;
    _gtk_reserved7: procedure; cdecl;
    _gtk_reserved8: procedure; cdecl;
  end;
  PGtkPrintOperationPreviewIface = ^TGtkPrintOperationPreviewIface;


function gtk_print_operation_preview_get_type: TGType; cdecl; external gtklib;
procedure gtk_print_operation_preview_render_page(preview: PGtkPrintOperationPreview; page_nr: longint); cdecl; external gtklib;
procedure gtk_print_operation_preview_end_preview(preview: PGtkPrintOperationPreview); cdecl; external gtklib;
function gtk_print_operation_preview_is_selected(preview: PGtkPrintOperationPreview; page_nr: longint): Tgboolean; cdecl; external gtklib;

// === Konventiert am: 24-7-24 16:38:22 ===

function GTK_TYPE_PRINT_OPERATION_PREVIEW: TGType;
function GTK_PRINT_OPERATION_PREVIEW(obj: Pointer): PGtkPrintOperationPreview;
function GTK_IS_PRINT_OPERATION_PREVIEW(obj: Pointer): Tgboolean;
function GTK_PRINT_OPERATION_PREVIEW_GET_IFACE(obj: Pointer): PGtkPrintOperationPreviewIface;



implementation

function GTK_TYPE_PRINT_OPERATION_PREVIEW: TGType;
begin
  GTK_TYPE_PRINT_OPERATION_PREVIEW := gtk_print_operation_preview_get_type;
end;

function GTK_PRINT_OPERATION_PREVIEW(obj: Pointer): PGtkPrintOperationPreview;
begin
  Result := PGtkPrintOperationPreview(g_type_check_instance_cast(obj, GTK_TYPE_PRINT_OPERATION_PREVIEW));
end;

function GTK_IS_PRINT_OPERATION_PREVIEW(obj: Pointer): Tgboolean;
begin
  Result := g_type_check_instance_is_a(obj, GTK_TYPE_PRINT_OPERATION_PREVIEW);
end;

function GTK_PRINT_OPERATION_PREVIEW_GET_IFACE(obj: Pointer): PGtkPrintOperationPreviewIface;
begin
  Result := g_type_interface_peek(obj, GTK_TYPE_PRINT_OPERATION_PREVIEW);
end;


end.
