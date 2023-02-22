
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { gdkversionmacros.h - version boundaries checks
   * Copyright (C) 2012 Red Hat, Inc.
   *
   * This library is free software; you can redistribute it and/or
   * modify it under the terms of the GNU Lesser General Public
   * License as published by the Free Software Foundation; either
   * version 2 of the License, or (at your option) any later version.
   *
   * This library is distributed in the hope that it will be useful,
   * but WITHOUT ANY WARRANTY; without even the implied warranty of
   * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.▸ See the GNU
   * Lesser General Public License for more details.
   *
   * You should have received a copy of the GNU Lesser General Public
   * License along with this library; if not, see <http://www.gnu.org/licenses/>.
    }
{$if !defined (__GDK_H_INSIDE__) && !defined (__GTK_CSS_H_INSIDE__) && !defined (GTK_COMPILATION) && !defined (GTK_CSS_COMPILATION)}
{$error "Only <gdk/gdk.h> can be included directly."}
{$endif}
{$ifndef __GDK_VERSION_MACROS_H__}
{$define __GDK_VERSION_MACROS_H__}  
{$include <glib.h>}
  {*
   * GDK_MAJOR_VERSION:
   *
   * The major version component of the library's version, e.g. "1" for "1.2.3".
    }

  const
    GDK_MAJOR_VERSION = 4;    
  {*
   * GDK_MINOR_VERSION:
   *
   * The minor version component of the library's version, e.g. "2" for "1.2.3".
    }
    GDK_MINOR_VERSION = 8;    
  {*
   * GDK_MICRO_VERSION:
   *
   * The micro version component of the library's version, e.g. "3" for "1.2.3".
    }
    GDK_MICRO_VERSION = 1;    
{$ifndef _GDK_EXTERN}
(* error 
#define _GDK_EXTERN extern
in define line 49 *)
{$endif}
    {*
     * GDK_DISABLE_DEPRECATION_WARNINGS:
     *
     * A macro that should be defined before including the `gdk.h` header.
     *
     * If this symbol is defined, no compiler warnings will be produced for
     * uses of deprecated GDK and GTK APIs.
      }
{$ifdef GDK_DISABLE_DEPRECATION_WARNINGS}

    const
      GDK_DEPRECATED = _GDK_EXTERN;      
    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    { return type might be wrong }   

    function GDK_DEPRECATED_FOR(f : longint) : longint;    

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
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
    { XXX: Every new stable minor release bump should add a macro here  }
    {*
     * GDK_VERSION_4_0:
     *
     * A macro that evaluates to the 4.0 version of GDK, in a format
     * that can be used by the C pre-processor.
      }

    { was #define dname def_expr }
    function GDK_VERSION_4_0 : longint; { return type might be wrong }

  {*
   * GDK_VERSION_4_2:
   *
   * A macro that evaluates to the 4.2 version of GDK, in a format
   * that can be used by the C pre-processor.
   *
   * Since: 4.2
    }
  { was #define dname def_expr }
  function GDK_VERSION_4_2 : longint; { return type might be wrong }

  {*
   * GDK_VERSION_4_4:
   *
   * A macro that evaluates to the 4.4 version of GDK, in a format
   * that can be used by the C pre-processor.
   *
   * Since: 4.4
    }
  { was #define dname def_expr }
  function GDK_VERSION_4_4 : longint; { return type might be wrong }

  {*
   * GDK_VERSION_4_6:
   *
   * A macro that evaluates to the 4.6 version of GDK, in a format
   * that can be used by the C pre-processor.
   *
   * Since: 4.6
    }
  { was #define dname def_expr }
  function GDK_VERSION_4_6 : longint; { return type might be wrong }

  {*
   * GDK_VERSION_4_8:
   *
   * A macro that evaluates to the 4.8 version of GDK, in a format
   * that can be used by the C pre-processor.
   *
   * Since: 4.8
    }
  { was #define dname def_expr }
  function GDK_VERSION_4_8 : longint; { return type might be wrong }

  { evaluates to the current stable version; for development cycles,
   * this means the next stable target, with a hard backstop to the
   * beginning of the stable series
    }
{$if GDK_MAJOR_VERSION >= 4 && (GDK_MINOR_VERSION % 2)}

  { was #define dname def_expr }
  function GDK_VERSION_CUR_STABLE : longint; { return type might be wrong }

(*** was #elif ****){$else G_ENCODE_VERSION (GDK_MAJOR_VERSION, GDK_MINOR_VERSION) > GDK_VERSION_4_0}

  { was #define dname def_expr }
  function GDK_VERSION_CUR_STABLE : longint; { return type might be wrong }

{$else}

  const
    GDK_VERSION_CUR_STABLE = GDK_VERSION_4_0;    
{$endif}
  { evaluates to the previous stable version, with a hard backstop
   * to the beginning of the stable series
    }
{$if GDK_MAJOR_VERSION >= 4 && (GDK_MINOR_VERSION % 2)}

  { was #define dname def_expr }
  function GDK_VERSION_PREV_STABLE : longint; { return type might be wrong }

(*** was #elif ****){$else GDK_MAJOR_VERSION >= 4 && GDK_MINOR_VERSION > 2}

  { was #define dname def_expr }
  function GDK_VERSION_PREV_STABLE : longint; { return type might be wrong }

{$else}

  const
    GDK_VERSION_PREV_STABLE = GDK_VERSION_4_0;    
{$endif}
  {*
   * GDK_VERSION_MIN_REQUIRED:
   *
   * A macro that should be defined by the user prior to including
   * the `gdk.h` header.
   *
   * The definition should be one of the predefined GDK version
   * macros: %GDK_VERSION_4_0, %GDK_VERSION_4_2,...
   *
   * This macro defines the lower bound for the GDK API to use.
   *
   * If a function has been deprecated in a newer version of GDK,
   * it is possible to use this symbol to avoid the compiler warnings
   * without disabling warning for every deprecated function.
    }
{$ifndef GDK_VERSION_MIN_REQUIRED}

  const
    GDK_VERSION_MIN_REQUIRED = GDK_VERSION_CUR_STABLE;    
{$endif}
  {*
   * GDK_VERSION_MAX_ALLOWED:
   *
   * A macro that should be defined by the user prior to including
   * the `gdk.h` header.
   *
   * The definition should be one of the predefined GDK version
   * macros: %GDK_VERSION_4_0, %GDK_VERSION_4_2,...
   *
   * This macro defines the upper bound for the GDK API to use.
   *
   * If a function has been introduced in a newer version of GDK,
   * it is possible to use this symbol to get compiler warnings when
   * trying to use that function.
    }
{$ifndef GDK_VERSION_MAX_ALLOWED}
{$if GDK_VERSION_MIN_REQUIRED > GDK_VERSION_PREV_STABLE}

  const
    GDK_VERSION_MAX_ALLOWED = GDK_VERSION_MIN_REQUIRED;    
{$else}

  const
    GDK_VERSION_MAX_ALLOWED = GDK_VERSION_CUR_STABLE;    
{$endif}
{$endif}
  { sanity checks  }
{$if GDK_VERSION_MAX_ALLOWED < GDK_VERSION_MIN_REQUIRED}
{$error "GDK_VERSION_MAX_ALLOWED must be >= GDK_VERSION_MIN_REQUIRED"}
{$endif}
{$if GDK_VERSION_MIN_REQUIRED < GDK_VERSION_4_0}
{$error "GDK_VERSION_MIN_REQUIRED must be >= GDK_VERSION_4_0"}
{$endif}

  const
    GDK_AVAILABLE_IN_ALL = _GDK_EXTERN;    
  { XXX: Every new stable minor release should add a set of macros here  }
  { This is not really necessary for 4.0, since there can't be an
   * earlier version, and there are no deprecated symbols. We just
   * include it for completeness, and because it's easier to copy
   * this stanza every time a new development cycle starts.
    }
{$if GDK_VERSION_MAX_ALLOWED < GDK_VERSION_4_0}

  { was #define dname def_expr }
  function GDK_AVAILABLE_IN_4_0 : longint; { return type might be wrong }

{$else}

  const
    GDK_AVAILABLE_IN_4_0 = _GDK_EXTERN;    
{$endif}
{$if GDK_VERSION_MIN_REQUIRED >= GDK_VERSION_4_0}

  const
    GDK_DEPRECATED_IN_4_0 = GDK_DEPRECATED;    
  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   

  function GDK_DEPRECATED_IN_4_0_FOR(f : longint) : longint;  

{$else}

  const
    GDK_DEPRECATED_IN_4_0 = _GDK_EXTERN;    
  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   

  function GDK_DEPRECATED_IN_4_0_FOR(f : longint) : longint;  

{$endif}
{$if GDK_VERSION_MAX_ALLOWED < GDK_VERSION_4_2}

  { was #define dname def_expr }
  function GDK_AVAILABLE_IN_4_2 : longint; { return type might be wrong }

{$else}

  const
    GDK_AVAILABLE_IN_4_2 = _GDK_EXTERN;    
{$endif}
{$if GDK_VERSION_MIN_REQUIRED >= GDK_VERSION_4_2}

  const
    GDK_DEPRECATED_IN_4_2 = GDK_DEPRECATED;    
  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   

  function GDK_DEPRECATED_IN_4_2_FOR(f : longint) : longint;  

{$else}

  const
    GDK_DEPRECATED_IN_4_2 = _GDK_EXTERN;    
  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   

  function GDK_DEPRECATED_IN_4_2_FOR(f : longint) : longint;  

{$endif}
{$if GDK_VERSION_MAX_ALLOWED < GDK_VERSION_4_4}

  { was #define dname def_expr }
  function GDK_AVAILABLE_IN_4_4 : longint; { return type might be wrong }

{$else}

  const
    GDK_AVAILABLE_IN_4_4 = _GDK_EXTERN;    
{$endif}
{$if GDK_VERSION_MIN_REQUIRED >= GDK_VERSION_4_4}

  const
    GDK_DEPRECATED_IN_4_4 = GDK_DEPRECATED;    
  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   

  function GDK_DEPRECATED_IN_4_4_FOR(f : longint) : longint;  

{$else}

  const
    GDK_DEPRECATED_IN_4_4 = _GDK_EXTERN;    
  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   

  function GDK_DEPRECATED_IN_4_4_FOR(f : longint) : longint;  

{$endif}
{$if GDK_VERSION_MAX_ALLOWED < GDK_VERSION_4_6}

  { was #define dname def_expr }
  function GDK_AVAILABLE_IN_4_6 : longint; { return type might be wrong }

{$else}

  const
    GDK_AVAILABLE_IN_4_6 = _GDK_EXTERN;    
{$endif}
{$if GDK_VERSION_MIN_REQUIRED >= GDK_VERSION_4_6}

  const
    GDK_DEPRECATED_IN_4_6 = GDK_DEPRECATED;    
  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   

  function GDK_DEPRECATED_IN_4_6_FOR(f : longint) : longint;  

{$else}

  const
    GDK_DEPRECATED_IN_4_6 = _GDK_EXTERN;    
  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   

  function GDK_DEPRECATED_IN_4_6_FOR(f : longint) : longint;  

{$endif}
{$if GDK_VERSION_MAX_ALLOWED < GDK_VERSION_4_8}

  { was #define dname def_expr }
  function GDK_AVAILABLE_IN_4_8 : longint; { return type might be wrong }

{$else}

  const
    GDK_AVAILABLE_IN_4_8 = _GDK_EXTERN;    
{$endif}
{$if GDK_VERSION_MIN_REQUIRED >= GDK_VERSION_4_8}

  const
    GDK_DEPRECATED_IN_4_8 = GDK_DEPRECATED;    
  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   

  function GDK_DEPRECATED_IN_4_8_FOR(f : longint) : longint;  

{$else}

  const
    GDK_DEPRECATED_IN_4_8 = _GDK_EXTERN;    
  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   

  function GDK_DEPRECATED_IN_4_8_FOR(f : longint) : longint;  

{$endif}
{$endif}
  { __GDK_VERSION_MACROS_H__  }
    { was #define dname(params) para_def_expr }
    { argument types are unknown }
    { return type might be wrong }   
    function GDK_DEPRECATED_FOR(f : longint) : longint;
    begin
      GDK_DEPRECATED_FOR:=_GDK_EXTERN;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_UNAVAILABLE(maj,min : longint) : longint;
  begin
    GDK_UNAVAILABLE:=_GDK_EXTERN;
  end;

    { was #define dname def_expr }
    function GDK_VERSION_4_0 : longint; { return type might be wrong }
      begin
        GDK_VERSION_4_0:=G_ENCODE_VERSION(4,0);
      end;

  { was #define dname def_expr }
  function GDK_VERSION_4_2 : longint; { return type might be wrong }
    begin
      GDK_VERSION_4_2:=G_ENCODE_VERSION(4,2);
    end;

  { was #define dname def_expr }
  function GDK_VERSION_4_4 : longint; { return type might be wrong }
    begin
      GDK_VERSION_4_4:=G_ENCODE_VERSION(4,4);
    end;

  { was #define dname def_expr }
  function GDK_VERSION_4_6 : longint; { return type might be wrong }
    begin
      GDK_VERSION_4_6:=G_ENCODE_VERSION(4,6);
    end;

  { was #define dname def_expr }
  function GDK_VERSION_4_8 : longint; { return type might be wrong }
    begin
      GDK_VERSION_4_8:=G_ENCODE_VERSION(4,8);
    end;

  { was #define dname def_expr }
  function GDK_VERSION_CUR_STABLE : longint; { return type might be wrong }
    begin
      GDK_VERSION_CUR_STABLE:=G_ENCODE_VERSION(GDK_MAJOR_VERSION,GDK_MINOR_VERSION+1);
    end;

  { was #define dname def_expr }
  function GDK_VERSION_CUR_STABLE : longint; { return type might be wrong }
    begin
      GDK_VERSION_CUR_STABLE:=G_ENCODE_VERSION(GDK_MAJOR_VERSION,GDK_MINOR_VERSION);
    end;

  { was #define dname def_expr }
  function GDK_VERSION_PREV_STABLE : longint; { return type might be wrong }
    begin
      GDK_VERSION_PREV_STABLE:=G_ENCODE_VERSION(GDK_MAJOR_VERSION,GDK_MINOR_VERSION-1);
    end;

  { was #define dname def_expr }
  function GDK_VERSION_PREV_STABLE : longint; { return type might be wrong }
    begin
      GDK_VERSION_PREV_STABLE:=G_ENCODE_VERSION(GDK_MAJOR_VERSION,GDK_MINOR_VERSION-2);
    end;

  { was #define dname def_expr }
  function GDK_AVAILABLE_IN_4_0 : longint; { return type might be wrong }
    begin
      GDK_AVAILABLE_IN_4_0:=GDK_UNAVAILABLE(4,0);
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_DEPRECATED_IN_4_0_FOR(f : longint) : longint;
  begin
    GDK_DEPRECATED_IN_4_0_FOR:=GDK_DEPRECATED_FOR(f);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_DEPRECATED_IN_4_0_FOR(f : longint) : longint;
  begin
    GDK_DEPRECATED_IN_4_0_FOR:=_GDK_EXTERN;
  end;

  { was #define dname def_expr }
  function GDK_AVAILABLE_IN_4_2 : longint; { return type might be wrong }
    begin
      GDK_AVAILABLE_IN_4_2:=GDK_UNAVAILABLE(4,2);
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_DEPRECATED_IN_4_2_FOR(f : longint) : longint;
  begin
    GDK_DEPRECATED_IN_4_2_FOR:=GDK_DEPRECATED_FOR(f);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_DEPRECATED_IN_4_2_FOR(f : longint) : longint;
  begin
    GDK_DEPRECATED_IN_4_2_FOR:=_GDK_EXTERN;
  end;

  { was #define dname def_expr }
  function GDK_AVAILABLE_IN_4_4 : longint; { return type might be wrong }
    begin
      GDK_AVAILABLE_IN_4_4:=GDK_UNAVAILABLE(4,4);
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_DEPRECATED_IN_4_4_FOR(f : longint) : longint;
  begin
    GDK_DEPRECATED_IN_4_4_FOR:=GDK_DEPRECATED_FOR(f);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_DEPRECATED_IN_4_4_FOR(f : longint) : longint;
  begin
    GDK_DEPRECATED_IN_4_4_FOR:=_GDK_EXTERN;
  end;

  { was #define dname def_expr }
  function GDK_AVAILABLE_IN_4_6 : longint; { return type might be wrong }
    begin
      GDK_AVAILABLE_IN_4_6:=GDK_UNAVAILABLE(4,6);
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_DEPRECATED_IN_4_6_FOR(f : longint) : longint;
  begin
    GDK_DEPRECATED_IN_4_6_FOR:=GDK_DEPRECATED_FOR(f);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_DEPRECATED_IN_4_6_FOR(f : longint) : longint;
  begin
    GDK_DEPRECATED_IN_4_6_FOR:=_GDK_EXTERN;
  end;

  { was #define dname def_expr }
  function GDK_AVAILABLE_IN_4_8 : longint; { return type might be wrong }
    begin
      GDK_AVAILABLE_IN_4_8:=GDK_UNAVAILABLE(4,8);
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_DEPRECATED_IN_4_8_FOR(f : longint) : longint;
  begin
    GDK_DEPRECATED_IN_4_8_FOR:=GDK_DEPRECATED_FOR(f);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GDK_DEPRECATED_IN_4_8_FOR(f : longint) : longint;
  begin
    GDK_DEPRECATED_IN_4_8_FOR:=_GDK_EXTERN;
  end;


