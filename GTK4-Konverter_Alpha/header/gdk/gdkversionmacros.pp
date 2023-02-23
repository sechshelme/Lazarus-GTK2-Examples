
unit gdkversionmacros;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/gdkversionmacros.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gdk/gdkversionmacros.h
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



{$if !defined (__GDK_H_INSIDE__) && !defined (__GTK_CSS_H_INSIDE__) && !defined (GTK_COMPILATION) && !defined (GTK_CSS_COMPILATION)}
{$error "Only <gdk/gdk.h> can be included directly."}
{$endif}
{$ifndef __GDK_VERSION_MACROS_H__}
{$define __GDK_VERSION_MACROS_H__}
{$include <glib.h>}


const
  GDK_MAJOR_VERSION = 4;  

  GDK_MINOR_VERSION = 6;  

  GDK_MICRO_VERSION = 6;  
{$ifndef _GDK_EXTERN}
(* error 
#define _GDK_EXTERN extern
in define line 49 *)
{$endif}

{$ifdef GDK_DISABLE_DEPRECATION_WARNINGS}

    const
      GDK_DEPRECATED = _GDK_EXTERN;      

    function GDK_DEPRECATED_FOR(f : longint) : longint;    

    function GDK_UNAVAILABLE(maj,min : longint) : longint;    

{$else}
(* error 
#define GDK_DEPRECATED G_DEPRECATED _GDK_EXTERN
in define line 66 *)
(* error 
#define GDK_DEPRECATED_FOR(f) G_DEPRECATED_FOR(f) _GDK_EXTERN
in define line 67 *)
(* error 
#define GDK_UNAVAILABLE(maj,min) G_UNAVAILABLE(maj,min) _GDK_EXTERN
in define line 68 *)
{$endif}



    function GDK_VERSION_4_0 : longint; { return type might be wrong }


    function GDK_VERSION_4_2 : longint; { return type might be wrong }


    function GDK_VERSION_4_4 : longint; { return type might be wrong }


    function GDK_VERSION_4_6 : longint; { return type might be wrong }


{$if GDK_MAJOR_VERSION >= 4 && (GDK_MINOR_VERSION % 2)}

    function GDK_VERSION_CUR_STABLE : longint; { return type might be wrong }

{$else G_ENCODE_VERSION (GDK_MAJOR_VERSION, GDK_MINOR_VERSION) > GDK_VERSION_4_0}

    function GDK_VERSION_CUR_STABLE : longint; { return type might be wrong }

{$else}

    const
      GDK_VERSION_CUR_STABLE = GDK_VERSION_4_0;      
{$endif}

{$if GDK_MAJOR_VERSION >= 4 && (GDK_MINOR_VERSION % 2)}

    function GDK_VERSION_PREV_STABLE : longint; { return type might be wrong }

{$else GDK_MAJOR_VERSION >= 4 && GDK_MINOR_VERSION > 2}

    function GDK_VERSION_PREV_STABLE : longint; { return type might be wrong }

{$else}

    const
      GDK_VERSION_PREV_STABLE = GDK_VERSION_4_0;      
{$endif}

{$ifndef GDK_VERSION_MIN_REQUIRED}

    const
      GDK_VERSION_MIN_REQUIRED = GDK_VERSION_CUR_STABLE;      
{$endif}

{$ifndef GDK_VERSION_MAX_ALLOWED}
{$if GDK_VERSION_MIN_REQUIRED > GDK_VERSION_PREV_STABLE}

    const
      GDK_VERSION_MAX_ALLOWED = GDK_VERSION_MIN_REQUIRED;      
{$else}

    const
      GDK_VERSION_MAX_ALLOWED = GDK_VERSION_CUR_STABLE;      
{$endif}
{$endif}

{$if GDK_VERSION_MAX_ALLOWED < GDK_VERSION_MIN_REQUIRED}
{$error "GDK_VERSION_MAX_ALLOWED must be >= GDK_VERSION_MIN_REQUIRED"}
{$endif}
{$if GDK_VERSION_MIN_REQUIRED < GDK_VERSION_4_0}
{$error "GDK_VERSION_MIN_REQUIRED must be >= GDK_VERSION_4_0"}
{$endif}



{$if GDK_VERSION_MAX_ALLOWED < GDK_VERSION_4_0}

    function GDK_AVAILABLE_IN_4_0 : longint; { return type might be wrong }

{$else}

    const
      GDK_AVAILABLE_IN_4_0 = _GDK_EXTERN;      
{$endif}
{$if GDK_VERSION_MIN_REQUIRED >= GDK_VERSION_4_0}

    const
      GDK_DEPRECATED_IN_4_0 = GDK_DEPRECATED;      

    function GDK_DEPRECATED_IN_4_0_FOR(f : longint) : longint;    

{$else}

    const
      GDK_DEPRECATED_IN_4_0 = _GDK_EXTERN;      

    function GDK_DEPRECATED_IN_4_0_FOR(f : longint) : longint;    

{$endif}
{$if GDK_VERSION_MAX_ALLOWED < GDK_VERSION_4_2}

{$else}

{$endif}
{$if GDK_VERSION_MIN_REQUIRED >= GDK_VERSION_4_2}

    const
      GDK_DEPRECATED_IN_4_2 = GDK_DEPRECATED;      

    function GDK_DEPRECATED_IN_4_2_FOR(f : longint) : longint;    

{$else}

    const
      GDK_DEPRECATED_IN_4_2 = _GDK_EXTERN;      

    function GDK_DEPRECATED_IN_4_2_FOR(f : longint) : longint;    

{$endif}
{$if GDK_VERSION_MAX_ALLOWED < GDK_VERSION_4_4}

{$else}

{$endif}
{$if GDK_VERSION_MIN_REQUIRED >= GDK_VERSION_4_4}

    const
      GDK_DEPRECATED_IN_4_4 = GDK_DEPRECATED;      

    function GDK_DEPRECATED_IN_4_4_FOR(f : longint) : longint;    

{$else}

    const
      GDK_DEPRECATED_IN_4_4 = _GDK_EXTERN;      

    function GDK_DEPRECATED_IN_4_4_FOR(f : longint) : longint;    

{$endif}
{$if GDK_VERSION_MAX_ALLOWED < GDK_VERSION_4_6}

{$else}

{$endif}
{$if GDK_VERSION_MIN_REQUIRED >= GDK_VERSION_4_6}

    const
      GDK_DEPRECATED_IN_4_6 = GDK_DEPRECATED;      

    function GDK_DEPRECATED_IN_4_6_FOR(f : longint) : longint;    

{$else}

    const
      GDK_DEPRECATED_IN_4_6 = _GDK_EXTERN;      

    function GDK_DEPRECATED_IN_4_6_FOR(f : longint) : longint;    

{$endif}
{$endif}


implementation

    function GDK_DEPRECATED_FOR(f : longint) : longint;
    begin
      GDK_DEPRECATED_FOR:=_GDK_EXTERN;
    end;

    function GDK_UNAVAILABLE(maj,min : longint) : longint;
    begin
      GDK_UNAVAILABLE:=_GDK_EXTERN;
    end;

    function GDK_VERSION_4_0 : longint; { return type might be wrong }
      begin
        GDK_VERSION_4_0:=G_ENCODE_VERSION(4,0);
      end;

    function GDK_VERSION_4_2 : longint; { return type might be wrong }
      begin
        GDK_VERSION_4_2:=G_ENCODE_VERSION(4,2);
      end;

    function GDK_VERSION_4_4 : longint; { return type might be wrong }
      begin
        GDK_VERSION_4_4:=G_ENCODE_VERSION(4,4);
      end;

    function GDK_VERSION_4_6 : longint; { return type might be wrong }
      begin
        GDK_VERSION_4_6:=G_ENCODE_VERSION(4,6);
      end;

    function GDK_VERSION_CUR_STABLE : longint; { return type might be wrong }
      begin
        GDK_VERSION_CUR_STABLE:=G_ENCODE_VERSION(GDK_MAJOR_VERSION,GDK_MINOR_VERSION+1);
      end;

    function GDK_VERSION_CUR_STABLE : longint; { return type might be wrong }
      begin
        GDK_VERSION_CUR_STABLE:=G_ENCODE_VERSION(GDK_MAJOR_VERSION,GDK_MINOR_VERSION);
      end;

    function GDK_VERSION_PREV_STABLE : longint; { return type might be wrong }
      begin
        GDK_VERSION_PREV_STABLE:=G_ENCODE_VERSION(GDK_MAJOR_VERSION,GDK_MINOR_VERSION-1);
      end;

    function GDK_VERSION_PREV_STABLE : longint; { return type might be wrong }
      begin
        GDK_VERSION_PREV_STABLE:=G_ENCODE_VERSION(GDK_MAJOR_VERSION,GDK_MINOR_VERSION-2);
      end;

    function GDK_AVAILABLE_IN_4_0 : longint; { return type might be wrong }
      begin
        GDK_AVAILABLE_IN_4_0:=GDK_UNAVAILABLE(4,0);
      end;

    function GDK_DEPRECATED_IN_4_0_FOR(f : longint) : longint;
    begin
      GDK_DEPRECATED_IN_4_0_FOR:=GDK_DEPRECATED_FOR(f);
    end;

    function GDK_DEPRECATED_IN_4_0_FOR(f : longint) : longint;
    begin
      GDK_DEPRECATED_IN_4_0_FOR:=_GDK_EXTERN;
    end;

    function GDK_DEPRECATED_IN_4_2_FOR(f : longint) : longint;
    begin
      GDK_DEPRECATED_IN_4_2_FOR:=GDK_DEPRECATED_FOR(f);
    end;

    function GDK_DEPRECATED_IN_4_2_FOR(f : longint) : longint;
    begin
      GDK_DEPRECATED_IN_4_2_FOR:=_GDK_EXTERN;
    end;

    function GDK_DEPRECATED_IN_4_4_FOR(f : longint) : longint;
    begin
      GDK_DEPRECATED_IN_4_4_FOR:=GDK_DEPRECATED_FOR(f);
    end;

    function GDK_DEPRECATED_IN_4_4_FOR(f : longint) : longint;
    begin
      GDK_DEPRECATED_IN_4_4_FOR:=_GDK_EXTERN;
    end;

    function GDK_DEPRECATED_IN_4_6_FOR(f : longint) : longint;
    begin
      GDK_DEPRECATED_IN_4_6_FOR:=GDK_DEPRECATED_FOR(f);
    end;

    function GDK_DEPRECATED_IN_4_6_FOR(f : longint) : longint;
    begin
      GDK_DEPRECATED_IN_4_6_FOR:=_GDK_EXTERN;
    end;


end.
