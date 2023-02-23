
unit gtkmountoperation;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkmountoperation.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkmountoperation.h
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
PGdkDisplay  = ^GdkDisplay;
PGMountOperation  = ^GMountOperation;
PGtkMountOperation  = ^GtkMountOperation;
PGtkMountOperationClass  = ^GtkMountOperationClass;
PGtkMountOperationPrivate  = ^GtkMountOperationPrivate;
PGtkWindow  = ^GtkWindow;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}




{$ifndef __GTK_MOUNT_OPERATION_H__}
{$define __GTK_MOUNT_OPERATION_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}


function GTK_TYPE_MOUNT_OPERATION : longint; { return type might be wrong }

function GTK_MOUNT_OPERATION(o : longint) : longint;

function GTK_MOUNT_OPERATION_CLASS(k : longint) : longint;

function GTK_IS_MOUNT_OPERATION(o : longint) : longint;

function GTK_IS_MOUNT_OPERATION_CLASS(k : longint) : longint;

function GTK_MOUNT_OPERATION_GET_CLASS(o : longint) : longint;

type
  PGtkMountOperation = ^TGtkMountOperation;
  TGtkMountOperation = record
      parent_instance : TGMountOperation;
      priv : PGtkMountOperationPrivate;
    end;




  PGtkMountOperationClass = ^TGtkMountOperationClass;
  TGtkMountOperationClass = record
      parent_class : TGMountOperationClass;
      _gtk_reserved1 : procedure ;cdecl;
      _gtk_reserved2 : procedure ;cdecl;
      _gtk_reserved3 : procedure ;cdecl;
      _gtk_reserved4 : procedure ;cdecl;
    end;



function gtk_mount_operation_get_type:TGType;cdecl;external;

function gtk_mount_operation_new(parent:PGtkWindow):PGMountOperation;cdecl;external;

function gtk_mount_operation_is_showing(op:PGtkMountOperation):Tgboolean;cdecl;external;

procedure gtk_mount_operation_set_parent(op:PGtkMountOperation; parent:PGtkWindow);cdecl;external;

function gtk_mount_operation_get_parent(op:PGtkMountOperation):PGtkWindow;cdecl;external;

procedure gtk_mount_operation_set_display(op:PGtkMountOperation; display:PGdkDisplay);cdecl;external;

function gtk_mount_operation_get_display(op:PGtkMountOperation):PGdkDisplay;cdecl;external;

{$endif}


implementation

function GTK_TYPE_MOUNT_OPERATION : longint; { return type might be wrong }
  begin
    GTK_TYPE_MOUNT_OPERATION:=gtk_mount_operation_get_type;
  end;

function GTK_MOUNT_OPERATION(o : longint) : longint;
begin
  GTK_MOUNT_OPERATION:=G_TYPE_CHECK_INSTANCE_CAST(o,GTK_TYPE_MOUNT_OPERATION,GtkMountOperation);
end;

function GTK_MOUNT_OPERATION_CLASS(k : longint) : longint;
begin
  GTK_MOUNT_OPERATION_CLASS:=G_TYPE_CHECK_CLASS_CAST(k,GTK_TYPE_MOUNT_OPERATION,GtkMountOperationClass);
end;

function GTK_IS_MOUNT_OPERATION(o : longint) : longint;
begin
  GTK_IS_MOUNT_OPERATION:=G_TYPE_CHECK_INSTANCE_TYPE(o,GTK_TYPE_MOUNT_OPERATION);
end;

function GTK_IS_MOUNT_OPERATION_CLASS(k : longint) : longint;
begin
  GTK_IS_MOUNT_OPERATION_CLASS:=G_TYPE_CHECK_CLASS_TYPE(k,GTK_TYPE_MOUNT_OPERATION);
end;

function GTK_MOUNT_OPERATION_GET_CLASS(o : longint) : longint;
begin
  GTK_MOUNT_OPERATION_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(o,GTK_TYPE_MOUNT_OPERATION,GtkMountOperationClass);
end;


end.
