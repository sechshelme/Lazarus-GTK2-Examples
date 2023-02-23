
unit gdkcontentprovider;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/gdkcontentprovider.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/gdkcontentprovider.h
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
PGAsyncResult  = ^GAsyncResult;
PGCancellable  = ^GCancellable;
PGdkClipboard  = ^GdkClipboard;
PGdkContentFormats  = ^GdkContentFormats;
PGdkContentProvider  = ^GdkContentProvider;
PGdkContentProviderClass  = ^GdkContentProviderClass;
PGError  = ^GError;
PGOutputStream  = ^GOutputStream;
PGValue  = ^GValue;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GDK_CONTENT_PROVIDER_H__}
{$define __GDK_CONTENT_PROVIDER_H__}
{$if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gdk/gdk.h> can be included directly."}
{$endif}
{$include <gdk/gdkversionmacros.h>}
{$include <gdk/gdktypes.h>}


function GDK_TYPE_CONTENT_PROVIDER : longint; { return type might be wrong }

function GDK_CONTENT_PROVIDER(obj : longint) : longint;

function GDK_IS_CONTENT_PROVIDER(obj : longint) : longint;

function GDK_CONTENT_PROVIDER_CLASS(klass : longint) : longint;

function GDK_IS_CONTENT_PROVIDER_CLASS(klass : longint) : longint;

function GDK_CONTENT_PROVIDER_GET_CLASS(obj : longint) : longint;

type
  PGdkContentProvider = ^TGdkContentProvider;
  TGdkContentProvider = record
      parent : TGObject;
    end;






  PGdkContentProviderClass = ^TGdkContentProviderClass;
  TGdkContentProviderClass = record
      parent_class : TGObjectClass;
      content_changed : procedure (provider:PGdkContentProvider);cdecl;
      attach_clipboard : procedure (provider:PGdkContentProvider; clipboard:PGdkClipboard);cdecl;
      detach_clipboard : procedure (provider:PGdkContentProvider; clipboard:PGdkClipboard);cdecl;
      ref_formats : function (provider:PGdkContentProvider):PGdkContentFormats;cdecl;
      ref_storable_formats : function (provider:PGdkContentProvider):PGdkContentFormats;cdecl;
      write_mime_type_async : procedure (provider:PGdkContentProvider; mime_type:Pchar; stream:PGOutputStream; io_priority:longint; cancellable:PGCancellable; 
                    callback:TGAsyncReadyCallback; user_data:Tgpointer);cdecl;
      write_mime_type_finish : function (provider:PGdkContentProvider; result:PGAsyncResult; error:PPGError):Tgboolean;cdecl;
      get_value : function (provider:PGdkContentProvider; value:PGValue; error:PPGError):Tgboolean;cdecl;
      padding : array[0..7] of Tgpointer;
    end;



function gdk_content_provider_get_type:TGType;cdecl;external;

function gdk_content_provider_ref_formats(provider:PGdkContentProvider):PGdkContentFormats;cdecl;external;

function gdk_content_provider_ref_storable_formats(provider:PGdkContentProvider):PGdkContentFormats;cdecl;external;

procedure gdk_content_provider_content_changed(provider:PGdkContentProvider);cdecl;external;

procedure gdk_content_provider_write_mime_type_async(provider:PGdkContentProvider; mime_type:Pchar; stream:PGOutputStream; io_priority:longint; cancellable:PGCancellable; 
            callback:TGAsyncReadyCallback; user_data:Tgpointer);cdecl;external;

function gdk_content_provider_write_mime_type_finish(provider:PGdkContentProvider; result:PGAsyncResult; error:PPGError):Tgboolean;cdecl;external;

function gdk_content_provider_get_value(provider:PGdkContentProvider; value:PGValue; error:PPGError):Tgboolean;cdecl;external;

{$endif}


implementation

function GDK_TYPE_CONTENT_PROVIDER : longint; { return type might be wrong }
  begin
    GDK_TYPE_CONTENT_PROVIDER:=gdk_content_provider_get_type;
  end;

function GDK_CONTENT_PROVIDER(obj : longint) : longint;
begin
  GDK_CONTENT_PROVIDER:=G_TYPE_CHECK_INSTANCE_CAST(obj,GDK_TYPE_CONTENT_PROVIDER,GdkContentProvider);
end;

function GDK_IS_CONTENT_PROVIDER(obj : longint) : longint;
begin
  GDK_IS_CONTENT_PROVIDER:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GDK_TYPE_CONTENT_PROVIDER);
end;

function GDK_CONTENT_PROVIDER_CLASS(klass : longint) : longint;
begin
  GDK_CONTENT_PROVIDER_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GDK_TYPE_CONTENT_PROVIDER,GdkContentProviderClass);
end;

function GDK_IS_CONTENT_PROVIDER_CLASS(klass : longint) : longint;
begin
  GDK_IS_CONTENT_PROVIDER_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GDK_TYPE_CONTENT_PROVIDER);
end;

function GDK_CONTENT_PROVIDER_GET_CLASS(obj : longint) : longint;
begin
  GDK_CONTENT_PROVIDER_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GDK_TYPE_CONTENT_PROVIDER,GdkContentProviderClass);
end;


end.
