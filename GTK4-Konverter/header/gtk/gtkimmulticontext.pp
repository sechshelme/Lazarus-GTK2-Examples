
  Type
  Pchar  = ^char;
  PGtkIMContext  = ^GtkIMContext;
  PGtkIMMulticontext  = ^GtkIMMulticontext;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { GTK - The GIMP Toolkit
   * Copyright (C) 2000 Red Hat Software
   *
   * This library is free software; you can redistribute it and/or
   * modify it under the terms of the GNU Lesser General Public
   * License as published by the Free Software Foundation; either
   * version 2 of the License, or (at your option) any later version.
   *
   * This library is distributed in the hope that it will be useful,
   * but WITHOUT ANY WARRANTY; without even the implied warranty of
   * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   * Lesser General Public License for more details.
   *
   * You should have received a copy of the GNU Lesser General Public
   * License along with this library. If not, see <http://www.gnu.org/licenses/>.
    }
{$ifndef __GTK_IM_MULTICONTEXT_H__}
{$define __GTK_IM_MULTICONTEXT_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gtk/gtkimcontext.h>}

  { was #define dname def_expr }
  function GTK_TYPE_IM_MULTICONTEXT : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IM_MULTICONTEXT(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IM_MULTICONTEXT_CLASS(klass : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_IM_MULTICONTEXT(obj : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_IM_MULTICONTEXT_CLASS(klass : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IM_MULTICONTEXT_GET_CLASS(obj : longint) : longint;  


  type
    _GtkIMMulticontext = GtkIMMulticontext;
    _GtkIMMulticontextClass = GtkIMMulticontextClass;
    _GtkIMMulticontextPrivate = GtkIMMulticontextPrivate;
  {< private > }
    _GtkIMMulticontext = record
        object : GtkIMContext;
        priv : ^GtkIMMulticontextPrivate;
      end;

  { Padding for future expansion  }
    _GtkIMMulticontextClass = record
        parent_class : GtkIMContextClass;
        _gtk_reserved1 : procedure ;cdecl;
        _gtk_reserved2 : procedure ;cdecl;
        _gtk_reserved3 : procedure ;cdecl;
        _gtk_reserved4 : procedure ;cdecl;
      end;

(* error 
GType         gtk_im_multicontext_get_type (void) G_GNUC_CONST;
 in declarator_list *)

    var
 : GType;

  function gtk_im_multicontext_new:^GtkIMContext;

(* Const before type ignored *)
  function gtk_im_multicontext_get_context_id(context:PGtkIMMulticontext):^char;

(* Const before type ignored *)
  procedure gtk_im_multicontext_set_context_id(context:PGtkIMMulticontext; context_id:Pchar);

{$endif}
  { __GTK_IM_MULTICONTEXT_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_IM_MULTICONTEXT : longint; { return type might be wrong }
    begin
      GTK_TYPE_IM_MULTICONTEXT:=gtk_im_multicontext_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IM_MULTICONTEXT(obj : longint) : longint;
  begin
    GTK_IM_MULTICONTEXT:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_IM_MULTICONTEXT,GtkIMMulticontext);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IM_MULTICONTEXT_CLASS(klass : longint) : longint;
  begin
    GTK_IM_MULTICONTEXT_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_IM_MULTICONTEXT,GtkIMMulticontextClass);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_IM_MULTICONTEXT(obj : longint) : longint;
  begin
    GTK_IS_IM_MULTICONTEXT:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_IM_MULTICONTEXT);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_IM_MULTICONTEXT_CLASS(klass : longint) : longint;
  begin
    GTK_IS_IM_MULTICONTEXT_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_IM_MULTICONTEXT);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IM_MULTICONTEXT_GET_CLASS(obj : longint) : longint;
  begin
    GTK_IM_MULTICONTEXT_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_IM_MULTICONTEXT,GtkIMMulticontextClass);
  end;

  function gtk_im_multicontext_new:PGtkIMContext;
  begin
    { You must implement this function }
  end;
  function gtk_im_multicontext_get_context_id(context:PGtkIMMulticontext):Pchar;
  begin
    { You must implement this function }
  end;
  procedure gtk_im_multicontext_set_context_id(context:PGtkIMMulticontext; context_id:Pchar);
  begin
    { You must implement this function }
  end;

