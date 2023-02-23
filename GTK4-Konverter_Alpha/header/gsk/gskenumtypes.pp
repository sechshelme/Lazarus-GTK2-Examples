
unit gskenumtypes;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gsk/gskenumtypes.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gsk/gskenumtypes.h
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



{$ifndef __GSK_ENUM_TYPES_H__}
{$define __GSK_ENUM_TYPES_H__}
{$include <gdk/gdk.h>}




function GSK_TYPE_RENDER_NODE_TYPE : longint; { return type might be wrong }


function GSK_TYPE_SCALING_FILTER : longint; { return type might be wrong }


function GSK_TYPE_BLEND_MODE : longint; { return type might be wrong }


function GSK_TYPE_CORNER : longint; { return type might be wrong }


function GSK_TYPE_SERIALIZATION_ERROR : longint; { return type might be wrong }


function GSK_TYPE_TRANSFORM_CATEGORY : longint; { return type might be wrong }


function GSK_TYPE_GL_UNIFORM_TYPE : longint; { return type might be wrong }


{$endif}



implementation

function GSK_TYPE_RENDER_NODE_TYPE : longint; { return type might be wrong }
  begin
    GSK_TYPE_RENDER_NODE_TYPE:=gsk_render_node_type_get_type;
  end;

function GSK_TYPE_SCALING_FILTER : longint; { return type might be wrong }
  begin
    GSK_TYPE_SCALING_FILTER:=gsk_scaling_filter_get_type;
  end;

function GSK_TYPE_BLEND_MODE : longint; { return type might be wrong }
  begin
    GSK_TYPE_BLEND_MODE:=gsk_blend_mode_get_type;
  end;

function GSK_TYPE_CORNER : longint; { return type might be wrong }
  begin
    GSK_TYPE_CORNER:=gsk_corner_get_type;
  end;

function GSK_TYPE_SERIALIZATION_ERROR : longint; { return type might be wrong }
  begin
    GSK_TYPE_SERIALIZATION_ERROR:=gsk_serialization_error_get_type;
  end;

function GSK_TYPE_TRANSFORM_CATEGORY : longint; { return type might be wrong }
  begin
    GSK_TYPE_TRANSFORM_CATEGORY:=gsk_transform_category_get_type;
  end;

function GSK_TYPE_GL_UNIFORM_TYPE : longint; { return type might be wrong }
  begin
    GSK_TYPE_GL_UNIFORM_TYPE:=gsk_gl_uniform_type_get_type;
  end;


end.
