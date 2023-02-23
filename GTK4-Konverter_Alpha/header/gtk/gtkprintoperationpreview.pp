
unit gtkprintoperationpreview;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkprintoperationpreview.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkprintoperationpreview.h
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
PGtkPageSetup  = ^GtkPageSetup;
PGtkPrintContext  = ^GtkPrintContext;
PGtkPrintOperationPreview  = ^GtkPrintOperationPreview;
PGtkPrintOperationPreviewIface  = ^GtkPrintOperationPreviewIface;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_PRINT_OPERATION_PREVIEW_H__}
{$define __GTK_PRINT_OPERATION_PREVIEW_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <cairo.h>}
{$include <gtk/gtkprintcontext.h>}


function GTK_TYPE_PRINT_OPERATION_PREVIEW : longint; { return type might be wrong }

function GTK_PRINT_OPERATION_PREVIEW(obj : longint) : longint;

function GTK_IS_PRINT_OPERATION_PREVIEW(obj : longint) : longint;

function GTK_PRINT_OPERATION_PREVIEW_GET_IFACE(obj : longint) : longint;

type




  PGtkPrintOperationPreviewIface = ^TGtkPrintOperationPreviewIface;
  TGtkPrintOperationPreviewIface = record
      g_iface : TGTypeInterface;
      ready : procedure (preview:PGtkPrintOperationPreview; context:PGtkPrintContext);cdecl;
      got_page_size : procedure (preview:PGtkPrintOperationPreview; context:PGtkPrintContext; page_setup:PGtkPageSetup);cdecl;
      render_page : procedure (preview:PGtkPrintOperationPreview; page_nr:longint);cdecl;
      is_selected : function (preview:PGtkPrintOperationPreview; page_nr:longint):Tgboolean;cdecl;
      end_preview : procedure (preview:PGtkPrintOperationPreview);cdecl;
      _gtk_reserved1 : procedure ;cdecl;
      _gtk_reserved2 : procedure ;cdecl;
      _gtk_reserved3 : procedure ;cdecl;
      _gtk_reserved4 : procedure ;cdecl;
      _gtk_reserved5 : procedure ;cdecl;
      _gtk_reserved6 : procedure ;cdecl;
      _gtk_reserved7 : procedure ;cdecl;
      _gtk_reserved8 : procedure ;cdecl;
    end;



function gtk_print_operation_preview_get_type:TGType;cdecl;external;

procedure gtk_print_operation_preview_render_page(preview:PGtkPrintOperationPreview; page_nr:longint);cdecl;external;

procedure gtk_print_operation_preview_end_preview(preview:PGtkPrintOperationPreview);cdecl;external;

function gtk_print_operation_preview_is_selected(preview:PGtkPrintOperationPreview; page_nr:longint):Tgboolean;cdecl;external;

{$endif}


implementation

function GTK_TYPE_PRINT_OPERATION_PREVIEW : longint; { return type might be wrong }
  begin
    GTK_TYPE_PRINT_OPERATION_PREVIEW:=gtk_print_operation_preview_get_type;
  end;

function GTK_PRINT_OPERATION_PREVIEW(obj : longint) : longint;
begin
  GTK_PRINT_OPERATION_PREVIEW:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_PRINT_OPERATION_PREVIEW,GtkPrintOperationPreview);
end;

function GTK_IS_PRINT_OPERATION_PREVIEW(obj : longint) : longint;
begin
  GTK_IS_PRINT_OPERATION_PREVIEW:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_PRINT_OPERATION_PREVIEW);
end;

function GTK_PRINT_OPERATION_PREVIEW_GET_IFACE(obj : longint) : longint;
begin
  GTK_PRINT_OPERATION_PREVIEW_GET_IFACE:=G_TYPE_INSTANCE_GET_INTERFACE(obj,GTK_TYPE_PRINT_OPERATION_PREVIEW,GtkPrintOperationPreviewIface);
end;


end.
