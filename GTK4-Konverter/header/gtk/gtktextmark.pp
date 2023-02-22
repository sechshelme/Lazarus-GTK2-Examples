
  Type
  Pchar  = ^char;
  PGtkTextBuffer  = ^GtkTextBuffer;
  PGtkTextMark  = ^GtkTextMark;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}


  { gtktextmark.h - mark segments
   *
   * Copyright (c) 1994 The Regents of the University of California.
   * Copyright (c) 1994-1997 Sun Microsystems, Inc.
   * Copyright (c) 2000      Red Hat, Inc.
   * Tk -> Gtk port by Havoc Pennington <hp@redhat.com>
   *
   * This software is copyrighted by the Regents of the University of
   * California, Sun Microsystems, Inc., and other parties.  The
   * following terms apply to all files associated with the software
   * unless explicitly disclaimed in individual files.
   *
   * The authors hereby grant permission to use, copy, modify,
   * distribute, and license this software and its documentation for any
   * purpose, provided that existing copyright notices are retained in
   * all copies and that this notice is included verbatim in any
   * distributions. No written agreement, license, or royalty fee is
   * required for any of the authorized uses.  Modifications to this
   * software may be copyrighted by their authors and need not follow
   * the licensing terms described here, provided that the new terms are
   * clearly indicated on the first page of each file where they apply.
   *
   * IN NO EVENT SHALL THE AUTHORS OR DISTRIBUTORS BE LIABLE TO ANY
   * PARTY FOR DIRECT, INDIRECT, SPECIAL, INCIDENTAL, OR CONSEQUENTIAL
   * DAMAGES ARISING OUT OF THE USE OF THIS SOFTWARE, ITS DOCUMENTATION,
   * OR ANY DERIVATIVES THEREOF, EVEN IF THE AUTHORS HAVE BEEN ADVISED
   * OF THE POSSIBILITY OF SUCH DAMAGE.
   *
   * THE AUTHORS AND DISTRIBUTORS SPECIFICALLY DISCLAIM ANY WARRANTIES,
   * INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
   * MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE, AND
   * NON-INFRINGEMENT.  THIS SOFTWARE IS PROVIDED ON AN "AS IS" BASIS,
   * AND THE AUTHORS AND DISTRIBUTORS HAVE NO OBLIGATION TO PROVIDE
   * MAINTENANCE, SUPPORT, UPDATES, ENHANCEMENTS, OR MODIFICATIONS.
   *
   * GOVERNMENT USE: If you are acquiring this software on behalf of the
   * U.S. government, the Government shall have only "Restricted Rights"
   * in the software and related documentation as defined in the Federal
   * Acquisition Regulations (FARs) in Clause 52.227.19 (c) (2).  If you
   * are acquiring the software on behalf of the Department of Defense,
   * the software shall be classified as "Commercial Computer Software"
   * and the Government shall have only "Restricted Rights" as defined
   * in Clause 252.227-7013 (c) (1) of DFARs.  Notwithstanding the
   * foregoing, the authors grant the U.S. Government and others acting
   * in its behalf permission to use and distribute the software in
   * accordance with the terms specified in this license.
   *
    }
{$ifndef __GTK_TEXT_MARK_H__}
{$define __GTK_TEXT_MARK_H__}  
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
  { Zeile entfernt  }

  type
    _GtkTextMark = GtkTextMark;
    _GtkTextMarkClass = GtkTextMarkClass;

  { was #define dname def_expr }
  function GTK_TYPE_TEXT_MARK : longint; { return type might be wrong }

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_TEXT_MARK(object : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_TEXT_MARK_CLASS(klass : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_TEXT_MARK(object : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_TEXT_MARK_CLASS(klass : longint) : longint;  

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_TEXT_MARK_GET_CLASS(obj : longint) : longint;  

  {< private > }

  type
    _GtkTextMark = record
        parent_instance : GObject;
        segment : gpointer;
      end;

  {< private > }
    _GtkTextMarkClass = record
        parent_class : GObjectClass;
        padding : array[0..7] of gpointer;
      end;

  { Zeile entfernt  }

  function gtk_text_mark_get_type:GType;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_text_mark_new(name:Pchar; left_gravity:gboolean):^GtkTextMark;

  { Zeile entfernt  }
  procedure gtk_text_mark_set_visible(mark:PGtkTextMark; setting:gboolean);

  { Zeile entfernt  }
  function gtk_text_mark_get_visible(mark:PGtkTextMark):gboolean;

  { Zeile entfernt  }
(* Const before type ignored *)
  function gtk_text_mark_get_name(mark:PGtkTextMark):^char;

  { Zeile entfernt  }
  function gtk_text_mark_get_deleted(mark:PGtkTextMark):gboolean;

  { Zeile entfernt  }
  function gtk_text_mark_get_buffer(mark:PGtkTextMark):^GtkTextBuffer;

  { Zeile entfernt  }
  function gtk_text_mark_get_left_gravity(mark:PGtkTextMark):gboolean;

  { Zeile entfernt  }
{$endif}
  { __GTK_TEXT_MARK_H__  }
  { was #define dname def_expr }
  function GTK_TYPE_TEXT_MARK : longint; { return type might be wrong }
    begin
      GTK_TYPE_TEXT_MARK:=gtk_text_mark_get_type;
    end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_TEXT_MARK(object : longint) : longint;
  begin
    GTK_TEXT_MARK:=G_TYPE_CHECK_INSTANCE_CAST(object,GTK_TYPE_TEXT_MARK,GtkTextMark);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_TEXT_MARK_CLASS(klass : longint) : longint;
  begin
    GTK_TEXT_MARK_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_TEXT_MARK,GtkTextMarkClass);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_TEXT_MARK(object : longint) : longint;
  begin
    GTK_IS_TEXT_MARK:=G_TYPE_CHECK_INSTANCE_TYPE(object,GTK_TYPE_TEXT_MARK);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_IS_TEXT_MARK_CLASS(klass : longint) : longint;
  begin
    GTK_IS_TEXT_MARK_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_TEXT_MARK);
  end;

  { was #define dname(params) para_def_expr }
  { argument types are unknown }
  { return type might be wrong }   
  function GTK_TEXT_MARK_GET_CLASS(obj : longint) : longint;
  begin
    GTK_TEXT_MARK_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_TEXT_MARK,GtkTextMarkClass);
  end;

  function gtk_text_mark_get_type:GType;
  begin
    { You must implement this function }
  end;
  function gtk_text_mark_new(name:Pchar; left_gravity:gboolean):PGtkTextMark;
  begin
    { You must implement this function }
  end;
  procedure gtk_text_mark_set_visible(mark:PGtkTextMark; setting:gboolean);
  begin
    { You must implement this function }
  end;
  function gtk_text_mark_get_visible(mark:PGtkTextMark):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_text_mark_get_name(mark:PGtkTextMark):Pchar;
  begin
    { You must implement this function }
  end;
  function gtk_text_mark_get_deleted(mark:PGtkTextMark):gboolean;
  begin
    { You must implement this function }
  end;
  function gtk_text_mark_get_buffer(mark:PGtkTextMark):PGtkTextBuffer;
  begin
    { You must implement this function }
  end;
  function gtk_text_mark_get_left_gravity(mark:PGtkTextMark):gboolean;
  begin
    { You must implement this function }
  end;

