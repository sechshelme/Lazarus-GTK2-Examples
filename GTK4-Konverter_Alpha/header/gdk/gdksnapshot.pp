
unit gdksnapshot;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/gdksnapshot.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/gdksnapshot.h
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

{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GDK_SNAPSHOT_H__}
{$define __GDK_SNAPSHOT_H__}
{$if !defined (__GDK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gdk/gdk.h> can be included directly."}
{$endif}
{$include <gdk/gdktypes.h>}
{$include <gdk/gdkversionmacros.h>}

type

function GDK_TYPE_SNAPSHOT : longint; { return type might be wrong }

function GDK_SNAPSHOT(obj : longint) : longint;

function GDK_IS_SNAPSHOT(obj : longint) : longint;



function gdk_snapshot_get_type:TGType;cdecl;external;

{$endif}


implementation

function GDK_TYPE_SNAPSHOT : longint; { return type might be wrong }
  begin
    GDK_TYPE_SNAPSHOT:=gdk_snapshot_get_type;
  end;

function GDK_SNAPSHOT(obj : longint) : longint;
begin
  GDK_SNAPSHOT:=G_TYPE_CHECK_INSTANCE_CAST(obj,GDK_TYPE_SNAPSHOT,GdkSnapshot);
end;

function GDK_IS_SNAPSHOT(obj : longint) : longint;
begin
  GDK_IS_SNAPSHOT:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GDK_TYPE_SNAPSHOT);
end;


end.
