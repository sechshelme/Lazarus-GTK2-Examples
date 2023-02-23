
unit gtkrecentmanager;
interface

{
  Automatically converted by H2Pas 1.0.0 from /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkrecentmanager.h
  The following command line parameters were used:
    /n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header/gtk/gtkrecentmanager.h
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
PGAppInfo  = ^GAppInfo;
PGDateTime  = ^GDateTime;
PGError  = ^GError;
PGIcon  = ^GIcon;
PGList  = ^GList;
PGtkRecentData  = ^GtkRecentData;
PGtkRecentInfo  = ^GtkRecentInfo;
PGtkRecentManager  = ^GtkRecentManager;
PGtkRecentManagerClass  = ^GtkRecentManagerClass;
PGtkRecentManagerError  = ^GtkRecentManagerError;
PGtkRecentManagerPrivate  = ^GtkRecentManagerPrivate;
Pguint  = ^guint;
{$IFDEF FPC}
{$PACKRECORDS C}
{$ENDIF}



{$ifndef __GTK_RECENT_MANAGER_H__}
{$define __GTK_RECENT_MANAGER_H__}
{$if !defined (__GTK_H_INSIDE__) && !defined (GTK_COMPILATION)}
{$error "Only <gtk/gtk.h> can be included directly."}
{$endif}
{$include <gdk-pixbuf/gdk-pixbuf.h>}
{$include <gdk/gdk.h>}
{$include <time.h>}


function GTK_TYPE_RECENT_INFO : longint; { return type might be wrong }

function GTK_TYPE_RECENT_MANAGER : longint; { return type might be wrong }

function GTK_RECENT_MANAGER(obj : longint) : longint;

function GTK_IS_RECENT_MANAGER(obj : longint) : longint;

function GTK_RECENT_MANAGER_CLASS(klass : longint) : longint;

function GTK_IS_RECENT_MANAGER_CLASS(klass : longint) : longint;

function GTK_RECENT_MANAGER_GET_CLASS(obj : longint) : longint;

type

  PGtkRecentData = ^TGtkRecentData;
  TGtkRecentData = record
      display_name : Pchar;
      description : Pchar;
      mime_type : Pchar;
      app_name : Pchar;
      app_exec : Pchar;
      groups : ^Pchar;
      is_private : Tgboolean;
    end;


  PGtkRecentManager = ^TGtkRecentManager;
  TGtkRecentManager = record
      parent_instance : TGObject;
      priv : PGtkRecentManagerPrivate;
    end;




  PGtkRecentManagerClass = ^TGtkRecentManagerClass;
  TGtkRecentManagerClass = record
      parent_class : TGObjectClass;
      changed : procedure (manager:PGtkRecentManager);cdecl;
      _gtk_recent1 : procedure ;cdecl;
      _gtk_recent2 : procedure ;cdecl;
      _gtk_recent3 : procedure ;cdecl;
      _gtk_recent4 : procedure ;cdecl;
    end;



  PGtkRecentManagerError = ^TGtkRecentManagerError;
  TGtkRecentManagerError = (GTK_RECENT_MANAGER_ERROR_NOT_FOUND,GTK_RECENT_MANAGER_ERROR_INVALID_URI,
    GTK_RECENT_MANAGER_ERROR_INVALID_ENCODING,
    GTK_RECENT_MANAGER_ERROR_NOT_REGISTERED,
    GTK_RECENT_MANAGER_ERROR_READ,GTK_RECENT_MANAGER_ERROR_WRITE,
    GTK_RECENT_MANAGER_ERROR_UNKNOWN);


function GTK_RECENT_MANAGER_ERROR : longint; { return type might be wrong }


function gtk_recent_manager_error_quark:TGQuark;cdecl;external;

function gtk_recent_manager_get_type:TGType;cdecl;external;

function gtk_recent_manager_new:PGtkRecentManager;cdecl;external;

function gtk_recent_manager_get_default:PGtkRecentManager;cdecl;external;

function gtk_recent_manager_add_item(manager:PGtkRecentManager; uri:Pchar):Tgboolean;cdecl;external;

function gtk_recent_manager_add_full(manager:PGtkRecentManager; uri:Pchar; recent_data:PGtkRecentData):Tgboolean;cdecl;external;

function gtk_recent_manager_remove_item(manager:PGtkRecentManager; uri:Pchar; error:PPGError):Tgboolean;cdecl;external;

function gtk_recent_manager_lookup_item(manager:PGtkRecentManager; uri:Pchar; error:PPGError):PGtkRecentInfo;cdecl;external;

function gtk_recent_manager_has_item(manager:PGtkRecentManager; uri:Pchar):Tgboolean;cdecl;external;

function gtk_recent_manager_move_item(manager:PGtkRecentManager; uri:Pchar; new_uri:Pchar; error:PPGError):Tgboolean;cdecl;external;

function gtk_recent_manager_get_items(manager:PGtkRecentManager):PGList;cdecl;external;

function gtk_recent_manager_purge_items(manager:PGtkRecentManager; error:PPGError):longint;cdecl;external;

function gtk_recent_info_get_type:TGType;cdecl;external;

function gtk_recent_info_ref(info:PGtkRecentInfo):PGtkRecentInfo;cdecl;external;

procedure gtk_recent_info_unref(info:PGtkRecentInfo);cdecl;external;

function gtk_recent_info_get_uri(info:PGtkRecentInfo):Pchar;cdecl;external;

function gtk_recent_info_get_display_name(info:PGtkRecentInfo):Pchar;cdecl;external;

function gtk_recent_info_get_description(info:PGtkRecentInfo):Pchar;cdecl;external;

function gtk_recent_info_get_mime_type(info:PGtkRecentInfo):Pchar;cdecl;external;

function gtk_recent_info_get_added(info:PGtkRecentInfo):PGDateTime;cdecl;external;

function gtk_recent_info_get_modified(info:PGtkRecentInfo):PGDateTime;cdecl;external;

function gtk_recent_info_get_visited(info:PGtkRecentInfo):PGDateTime;cdecl;external;

function gtk_recent_info_get_private_hint(info:PGtkRecentInfo):Tgboolean;cdecl;external;

function gtk_recent_info_get_application_info(info:PGtkRecentInfo; app_name:Pchar; app_exec:PPchar; count:Pguint; stamp:PPGDateTime):Tgboolean;cdecl;external;

function gtk_recent_info_create_app_info(info:PGtkRecentInfo; app_name:Pchar; error:PPGError):PGAppInfo;cdecl;external;

(* error 
							    gsize          *length) G_GNUC_MALLOC;
 in declarator_list *)
  var
 : char;

(* error 
char *               gtk_recent_info_last_application     (GtkRecentInfo  *info) G_GNUC_MALLOC;
 in declarator_list *)
 : char;


function gtk_recent_info_has_application(info:PGtkRecentInfo; app_name:Pchar):Tgboolean;cdecl;external;

(* error 
							    gsize          *length) G_GNUC_MALLOC;
 in declarator_list *)
  var
 : char;


function gtk_recent_info_has_group(info:PGtkRecentInfo; group_name:Pchar):Tgboolean;cdecl;external;

function gtk_recent_info_get_gicon(info:PGtkRecentInfo):PGIcon;cdecl;external;

(* error 
char *               gtk_recent_info_get_short_name       (GtkRecentInfo  *info) G_GNUC_MALLOC;
 in declarator_list *)
  var
 : char;

(* error 
char *               gtk_recent_info_get_uri_display      (GtkRecentInfo  *info) G_GNUC_MALLOC;
 in declarator_list *)
 : char;


function gtk_recent_info_get_age(info:PGtkRecentInfo):longint;cdecl;external;

function gtk_recent_info_is_local(info:PGtkRecentInfo):Tgboolean;cdecl;external;

function gtk_recent_info_exists(info:PGtkRecentInfo):Tgboolean;cdecl;external;

function gtk_recent_info_match(info_a:PGtkRecentInfo; info_b:PGtkRecentInfo):Tgboolean;cdecl;external;

procedure _gtk_recent_manager_sync;cdecl;external;

{$endif}


implementation

function GTK_TYPE_RECENT_INFO : longint; { return type might be wrong }
  begin
    GTK_TYPE_RECENT_INFO:=gtk_recent_info_get_type;
  end;

function GTK_TYPE_RECENT_MANAGER : longint; { return type might be wrong }
  begin
    GTK_TYPE_RECENT_MANAGER:=gtk_recent_manager_get_type;
  end;

function GTK_RECENT_MANAGER(obj : longint) : longint;
begin
  GTK_RECENT_MANAGER:=G_TYPE_CHECK_INSTANCE_CAST(obj,GTK_TYPE_RECENT_MANAGER,GtkRecentManager);
end;

function GTK_IS_RECENT_MANAGER(obj : longint) : longint;
begin
  GTK_IS_RECENT_MANAGER:=G_TYPE_CHECK_INSTANCE_TYPE(obj,GTK_TYPE_RECENT_MANAGER);
end;

function GTK_RECENT_MANAGER_CLASS(klass : longint) : longint;
begin
  GTK_RECENT_MANAGER_CLASS:=G_TYPE_CHECK_CLASS_CAST(klass,GTK_TYPE_RECENT_MANAGER,GtkRecentManagerClass);
end;

function GTK_IS_RECENT_MANAGER_CLASS(klass : longint) : longint;
begin
  GTK_IS_RECENT_MANAGER_CLASS:=G_TYPE_CHECK_CLASS_TYPE(klass,GTK_TYPE_RECENT_MANAGER);
end;

function GTK_RECENT_MANAGER_GET_CLASS(obj : longint) : longint;
begin
  GTK_RECENT_MANAGER_GET_CLASS:=G_TYPE_INSTANCE_GET_CLASS(obj,GTK_TYPE_RECENT_MANAGER,GtkRecentManagerClass);
end;

function GTK_RECENT_MANAGER_ERROR : longint; { return type might be wrong }
  begin
    GTK_RECENT_MANAGER_ERROR:=gtk_recent_manager_error_quark;
  end;


end.
