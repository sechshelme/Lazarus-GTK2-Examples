unit Common;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils;
         type
  TListMacro = record
    old, new: string;
  end;
  TListMacros = array of TListMacro;

const
  HeaderPath = '/usr/include/gtk-4.0';
  //  HeaderDespPath = '/n4800/DATEN/Programmierung/mit_GIT/Lazarus/Tutorial/GTK2/GTK4-Konverter/header';
  HeaderDespPath = '/tmp/GTK4-Konverter-header';

  //  HeaderMask = 'gtkb*.h';

  //HeaderMask = 'gtke*.h';
  //    HeaderMask = 'gdkt*.h';
  HeaderMask = '*.h';
  HeaderMask4 = '*.h';

  ListIngFiles: TStringArray = (
    HeaderPath + '/gdk/x11/gdkx-autocleanups.h',
    HeaderPath + '/gsk/gsk-autocleanup.h',

    HeaderPath + '/unix-print/gtk/gtkunixprint-autocleanups.h',
    HeaderPath + '/gdk/gdkversionmacros.h',
    HeaderPath + '/gtk/gtk-autocleanups.h',
    HeaderPath + '/gdk/gdk-autocleanup.h');

  ListPos1: TStringArray = (
    'G_DEFINE_AUTOPTR_CLEANUP_FUNC',
    'G_BEGIN_DECLS',
    'G_END_DECLS',

    'G_DEFINE_AUTOPTR_CLEANUP_FUNC(',
    'GDK_DEPRECATED_IN_4_2_FOR(gtk_im_context_set_surrounding_with_selection)',
    'GDK_DEPRECATED_IN_4_2_FOR(gtk_im_context_get_surrounding_with_selection)',
    'GDK_DEPRECATED_IN_4_4_FOR(gtk_im_context_simple_add_compose_file)',
    'GDK_DEPRECATED_IN_4_6_FOR(gdk_gl_texture_new)');

  ListSR: TStringArray = (
    'G_GNUC_WARN_UNUSED_RESULT',
    'G_GNUC_PRINTF (2, 3)',
    'G_GNUC_PRINTF (4, 0)',
    'G_GNUC_PRINTF (4, 5)',
    'G_GNUC_PRINTF (5, 6)',
    'G_UNLIKELY',
    'G_GNUC_MALLOC',

    'G_GNUC_PURE',
    'GTK_ACCESSIBLE',
    'G_GNUC_CONST',
    'G_GNUC_NULL_TERMINATED');


const
  ListRenameMacros: TListMacros = (
    (old: '#callback,'; new: 'callback,'),
    (old: '#member_name,'; new: 'member_name,'),
    (old: 'GDK_DEPRECATED_IN'; new: 'extern'),
    //    (old: 'GDK_DEPRECATED_IN_4_2_FOR'; new: 'extern'),
    //    (old: 'GDK_DEPRECATED_IN_4_4_FOR'; new: 'extern'),
    //    (old: 'GDK_DEPRECATED_IN_4_6_FOR'; new: 'extern'),
    //    (old: 'GDK_DEPRECATED_IN_4_8_FOR'; new: 'extern'),
    //    (old: 'GDK_AVAILABLE_IN_ALL'; new: 'extern'),
    //    (old: 'GDK_AVAILABLE_IN_4_2'; new: 'extern'),
    //    (old: 'GDK_AVAILABLE_IN_4_4'; new: 'extern'),
    //    (old: 'GDK_AVAILABLE_IN_4_6'; new: 'extern'),
    //    (old: 'GDK_AVAILABLE_IN_4_8'; new: 'extern'));
    (old: 'GDK_AVAILABLE_IN'; new: 'extern'));

  ListRenameMacrosLine: TStringArray = (
    '#define GTK_DEBUG_CHECK',
    '#define GTK_NOTE',
    'GDK_DECLARE_INTERNAL_TYPE',
    'G_DECLARE_INTERFACE',
    'G_DECLARE_FINAL_TYPE',
    'G_DECLARE_DERIVABLE_TYPE');

  ListDeleteBlock: TStringArray = (
    '#define GSK_ROUNDED_RECT_INIT(_x,_y,_w,_h)',
    '#define GDK_DECLARE_INTERNAL_TYPE',
    '#define GTK_CHECK_VERSION(major,minor,micro)', 'static inline ');


implementation

end.

