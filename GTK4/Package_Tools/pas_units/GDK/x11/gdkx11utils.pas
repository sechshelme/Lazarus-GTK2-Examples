unit gdkx11utils;

interface

uses
  glib2, common_GTK;

  {$IFDEF FPC}
  {$PACKRECORDS C}
  {$ENDIF}

function GDK_XID_TO_POINTER(xid: Tguint): Pointer;
function GDK_POINTER_TO_XID(p: Pointer): guint;


// === Konventiert am: 3-8-24 17:51:25 ===


implementation


function GDK_XID_TO_POINTER(xid: Tguint): Pointer;
begin
  GDK_XID_TO_POINTER := GUINT_TO_POINTER(xid);
end;

function GDK_POINTER_TO_XID(p: Pointer): guint;
begin
  GDK_POINTER_TO_XID := guint(p);
end;


end.
