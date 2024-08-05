  //{%MainUnit sdl3.pas}
      {$include common_gtk.inc}

{$include GTK/gtkenums.inc }                   // io.
{$include GTK/gtktypes.inc }                   // io.
{$include GTK/gtknative.inc }                  // io.
{$include GTK/gtkwidget.inc }                  //   Macro nicht aufgelöst
{$include GTK/gtkwindow.inc }                  // io.
{$include GTK/gtkapplication.inc }             // io.
{$include GTK/gtkwindowgroup.inc }             // io.
{$include GTK/gtkmain.inc }                    // io.
{$include GTK/gtkdebug.inc }                   //   Macro nicht aufgelöst
{$include GTK/gtksizerequest.inc }             // io.
{$include GTK/gtkgraphicsoffload.inc }         // io.
{$include GTK/gtkadjustment.inc }              // io.
{$include GTK/gtkborder.inc }                  // io.
{$include GTK/gtkcolorutils.inc }              // io.
{$include GTK/gtkbitset.inc }                  // io.
{$include GTK/gtkselectionmodel.inc }          // io. -> gtkbitset
{$include GTK/gtkstack.inc }                   // io. -> gtkselectionmodel
{$include GTK/gtkaccelgroup.inc }              // io.
{$include GTK/gtkexpression.inc }              // io.
{$include GTK/gtkfilter.inc }                  // io.
{$include GTK/gtkfilefilter.inc }              // io.
{$include GTK/gtkfilterlistmodel.inc }         // io. -> gtkfilter
{$include GTK/gtkcustomfilter.inc }            // io. -> gtkfilter
{$include GTK/gtkmultifilter.inc }             // io. -> gtkfilter
{$include GTK/gtkboolfilter.inc }              // io. -> gtkfilter, gtkexpression;
{$include GTK/gtkstringfilter.inc }            // io. -> gtkfilter, gtkexpression
{$include GTK/gtkbuilder.inc }                 // io.
{$include GTK/gtkbookmarklist.inc }            // io.
{$include GTK/gtkactionable.inc }              // io.
{$include GTK/gtkstyleprovider.inc }           // io.
{$include GTK/gtkbuilderscope.inc }            // io. -> gtkbuilder;
{$include GTK/gtkbuildable.inc }               // io. -> gtkbuilder;
{$include GTK/gtkroot.inc }                    // io.
{$include GTK/gtkaspectframe.inc }             // io.
{$include GTK/gtkrecentmanager.inc }           // io.
{$include GTK/gtkmediastream.inc }             // io.
{$include GTK/gtkmediacontrols.inc }           // io. -> gtkmediastream
{$include GTK/gtkmediafile.inc }               // io. -> gtkmediastream
{$include GTK/gtkvideo.inc }                   // io. -> gtkmediastream, gtkgraphicsoffload
{$include GTK/gtkimcontext.inc }               // io.
{$include GTK/gtkimmodule.inc }                // io.
{$include GTK/gtkinscription.inc }             // io.
{$include GTK/gtkimcontextsimple.inc }         // io. -> gtkimcontext
{$include GTK/gtkimmulticontext.inc }          // io. -> gtkimcontext
{$include GTK/gtkbuilderlistitemfactory.inc }  // io.
{$include GTK/gtksorter.inc }                  // io.
{$include GTK/gtkcustomsorter.inc }            // io. -> gtksorter
{$include GTK/gtkmultisorter.inc }             // io. -> gtksorter
{$include GTK/gtknumericsorter.inc }           // io. -> gtksorter, gtkexpression
{$include GTK/gtkicontheme.inc }               // io.
{$include GTK/gtkcssprovider.inc }             // io.
{$include GTK/gtkdirectorylist.inc }           // io.
{$include GTK/gtkeventcontroller.inc }         // io.
{$include GTK/gtkeventcontrollerfocus.inc }    // io.
{$include GTK/gtkeventcontrollerlegacy.inc }   // io.
{$include GTK/gtkeventcontrollermotion.inc }   // io.
{$include GTK/gtkeventcontrollerscroll.inc }   // io.
{$include GTK/gtkeventcontrollerkey.inc }      // io. -> gtkimcontext
{$include GTK/gtklistitemfactory.inc }         // io.
{$include GTK/gtkscrollinfo.inc }              // io.
{$include GTK/gtkatcontext.inc }               // io.
{$include GTK/gtksnapshot.inc }                // io.
{$include GTK/gtktypebuiltins.inc }            // io.
{$include GTK/gtkfilelauncher.inc }            // io.
{$include GTK/gtkflattenlistmodel.inc }        // io.
{$include GTK/gtkglarea.inc }                  // io.
{$include GTK/gtklistbase.inc }                // io.
{$include GTK/gtklistheader.inc }              // io.
{$include GTK/gtklistitem.inc }                // io.
{$include GTK/gtkmountoperation.inc }          // io.
{$include GTK/gtkmultiselection.inc }          // io.
{$include GTK/gtknoselection.inc }             // io.
{$include GTK/gtkorientable.inc }              // io.
{$include GTK/gtkpadcontroller.inc }           // io.
{$include GTK/gtksectionmodel.inc }            // io.
{$include GTK/gtkselectionfiltermodel.inc }    // io. -> gtkselectionmodel
{$include GTK/gtksettings.inc }                // io.
{$include GTK/gtksignallistitemfactory.inc }   // io. -> gtklistitemfactory
{$include GTK/gtksingleselection.inc }         // io.
{$include GTK/gtksortlistmodel.inc }           // io.
{$include GTK/gtkslicelistmodel.inc }          // io. -> gtksorter
{$include GTK/gtksymbolicpaintable.inc }       // io.
{$include GTK/gtktestutils.inc }               // io.
{$include GTK/gtktreelistrowsorter.inc }       // io. -> gtksorter
{$include GTK/gtkversion.inc }                 // Unaufgelöstes Makro
{$include GTK/gtkaccessiblerange.inc }         // io.
{$include GTK/gtkaccessibletext.inc }          // io.
{$include GTK/gtkaccessible.inc }              // io.
{$include GTK/gtkeditable.inc }                // io. -> gtkaccessible
{$include GTK/gtklayoutchild.inc }             // io.
{$include GTK/gtklayoutmanager.inc }           // io. -> gtklayoutchild;
{$include GTK/gtkbinlayout.inc }               // io. -> gtklayoutmanager;
{$include GTK/gtkboxlayout.inc }               // io. -> gtklayoutmanager;
{$include GTK/gtkcenterlayout.inc }            // io. -> gtklayoutmanager
{$include GTK/gtkcustomlayout.inc }            // io. -> gtklayoutmanager
{$include GTK/gtkgridlayout.inc }              // io. -> gtklayoutmanager, gtklayoutchild
{$include GTK/gtkfixedlayout.inc }             // io. -> gtklayoutmanager, gtklayoutchild
{$include GTK/gtkoverlaylayout.inc }           // io. -> gtklayoutmanager, gtklayoutchild
{$include GTK/gtkstringlist.inc }              // io
{$include GTK/gtkstringsorter.inc }            // io. -> gtksorter, gtkexpression
{$include GTK/gtkcolumnviewrow.inc }           // io.
{$include GTK/gtkcolumnviewsorter.inc }        // io. -> gtksorter, gtkcolumnview
{$include GTK/gtkcolumnview.inc }              // io. -> gtkselectionmodel, gtksorter, gtkscrollinfo
{$include GTK/gtkcolumnviewcolumn.inc }        // io. -> gtkcolumnview, gtklistitemfactory, gtksorter
{$include GTK/gtkcolumnviewcell.inc }          // io.
{$include GTK/gtkconstraint.inc }              // io.
{$include GTK/gtkconstraintguide.inc }         // io.
{$include GTK/gtkconstraintlayout.inc }        // io. -> gtkconstraint, gtklayoutmanager, gtklayoutchild, gtkconstraintguide;
{$include GTK/gtkshortcutsshortcut.inc }       // io.
{$include GTK/gtkshortcuttrigger.inc }         // io.
{$include GTK/gtkshortcutaction.inc }          // io.
{$include GTK/gtkshortcutlabel.inc }           // io.
{$include GTK/gtkshortcut.inc }                // io. -> gtkshortcuttrigger, gtkshortcutaction;  ( TGtkShortcut ausgelagert )
{$include GTK/gtkshortcutcontroller.inc }      // io. -> gtkshortcut;
{$include GTK/gtkshortcutmanager.inc }         // io.
{$include GTK/gtkshortcutsgroup.inc }          // io. -> gtkshortcutsshortcut;
{$include GTK/gtkshortcutssection.inc }        // io. -> gtkshortcutsgroup;
{$include GTK/gtkshortcutswindow.inc }         // io. -> gtkshortcutssection;
{$include GTK/gtkapplicationwindow.inc }       // io. -> gtkshortcutswindow
{$include GTK/gtkdragicon.inc }                // io.
{$include GTK/gtkdragsource.inc }              // io.
{$include GTK/gtktooltip.inc }                 // io.
{$include GTK/gtkbox.inc }                     // io.
{$include GTK/gtkcenterbox.inc }               // io.
{$include GTK/gtkgrid.inc }                    // io.
{$include GTK/gtkactionbar.inc }               // io.
{$include GTK/gtknotebook.inc }                // io.
{$include GTK/gtkexpander.inc }                // io.
{$include GTK/gtkfixed.inc }                   // io.
{$include GTK/gtkframe.inc }                   // io.
{$include GTK/gtkpaned.inc }                   // io.
{$include GTK/gtksizegroup.inc }               // io.
{$include GTK/gtktreelistmodel.inc }           // io.
{$include GTK/gtktreeexpander.inc }            // io. -> gtktreelistmodel
{$include GTK/gtkbutton.inc }                  // io.
{$include GTK/gtklinkbutton.inc }              // io.
{$include GTK/gtktogglebutton.inc }            // io. -> gtkbutton
{$include GTK/gtklabel.inc }                   // io. -> pango
{$include GTK/gtkcalendar.inc }                // io.
{$include GTK/gtkwindowcontrols.inc }          // io.
{$include GTK/gtkimage.inc }                   // io.
{$include GTK/gtkspinner.inc }                 // io.
{$include GTK/gtkcheckbutton.inc }             // io.
{$include GTK/gtkeditablelabel.inc }           // io.
{$include GTK/gtkdrawingarea.inc }             // io.
{$include GTK/gtklevelbar.inc }                // io.
{$include GTK/gtkoverlay.inc }                 // io.
{$include GTK/gtkpicture.inc }                 // io.
{$include GTK/gtkprogressbar.inc }             // io.
{$include GTK/gtkrevealer.inc }                // io.
{$include GTK/gtksearchbar.inc }               // io. -> gtkeditable
{$include GTK/gtksearchentry.inc }             // io.
{$include GTK/gtkseparator.inc }               // io.
{$include GTK/gtkswitch.inc }                  // io.
{$include GTK/gtkurilauncher.inc }             // io.
{$include GTK/gtkwidgetpaintable.inc }         // io.
{$include GTK/gtkscrollbar.inc }               // io. -> gtkadjustment;
{$include GTK/gtkrange.inc }                   // io. -> gtkadjustment, gtkborder;
{$include GTK/gtkscale.inc }                   // io. -> pango, gtkrange, gtkadjustment;
{$include GTK/gtkscalebutton.inc }             // io. -> gtkadjustment;
{$include GTK/gtkflowbox.inc }                 // io. -> gtkadjustment;
{$include GTK/gtkscrolledwindow.inc }          // io. -> gtkadjustment
{$include GTK/gtkspinbutton.inc }              // io. -> gtkadjustment
{$include GTK/gtklistbox.inc }                 // io. -> gtkadjustment;
{$include GTK/gtkscrollable.inc }              // io. -> gtkborder, gtkadjustment
{$include GTK/gtklistview.inc }                // io. -> gtkselectionmodel, gtklistitemfactory, gtkscrollinfo
{$include GTK/gtkgridview.inc }                // io. -> gtkselectionmodel, gtklistitemfactory, gtkscrollinfo
{$include GTK/gtkwindowhandle.inc }            // io.
{$include GTK/gtkheaderbar.inc }               // io.
{$include GTK/gtkmaplistmodel.inc }            // io.
{$include GTK/gtkstacksidebar.inc }            // io. -> gtkstack
{$include GTK/gtkstackswitcher.inc }           // io. -> gtkstack
{$include GTK/gtkviewport.inc }                // io. -> gtkscrollinfo, gtkadjustment
{$include GTK/gtkpopover.inc }                 // io.
{$include GTK/gtkpopovermenu.inc }             // io.
{$include GTK/gtkpopovermenubar.inc }          // io.
{$include GTK/gtkmenubutton.inc }              // io. -> gtkpopover
{$include GTK/gtkemojichooser.inc }            // io.
{$include GTK/gtktexttag.inc }                 // io.
{$include GTK/gtktexttagtable.inc }            // io. -> gtktexttag;
{$include GTK/gtktextchild.inc }               // io.
{$include GTK/gtktextiter.inc }                // io. -> pango, gtktexttag, gtktextchild;
{$include GTK/gtktextmark.inc }                // io. -> gtktextiter;
{$include GTK/gtktextbuffer.inc }              // io. -> gtktexttag, gtktextiter, gtktextchild, gtktextmark;
{$include GTK/gtktextview.inc }                // io. -> pango, gtktextiter, gtktextmark, gtktextchild;
{$include GTK/deprecated/gtktreemodel.inc }               // io.
{$include GTK/deprecated/gtkcelleditable.inc }               // io.
{$include GTK/deprecated/gtkcellrenderer.inc }            // io. -> gtkcelleditable;
{$include GTK/deprecated/gtkcellarea.inc }                // gtkcellrenderer, gtktreemodel, gtkcelleditable;  ( Makro )
{$include GTK/deprecated/gtkentrycompletion.inc }         // io. -> gtktreemodel, gtkcellarea;
{$include GTK/gtkentrybuffer.inc }             // io.
{$include GTK/gtktext.inc }                    // io. -> gtkentrybuffer
{$include GTK/gtkentry.inc }                   // io. -> pango, gtkentrybuffer, gtkentrycompletion, gtkimage;
{$include GTK/deprecated/gtkstylecontext.inc }            // io. -> gtkborder, gtkstyleprovider;
{$include GTK/gtkpasswordentry.inc }           // io.
{$include GTK/gtkpasswordentrybuffer.inc }     // io. -> gtkentrybuffer
{$include GTK/gtkdroptarget.inc }              // io.
{$include GTK/gtkdroptargetasync.inc }         // io.
{$include GTK/gtkdropcontrollermotion.inc }    // io. -> gtkeventcontroller
{$include GTK/gtkdropdown.inc }                // io. -> gtkexpression, gtkstringfilter
{$include GTK/gtkgesture.inc }                 // io.
{$include GTK/gtkgesturesingle.inc }           // io.
{$include GTK/gtkgestureclick.inc }            // io. -> gtkgesture
{$include GTK/gtkgesturedrag.inc }             // io. -> gtkgesture
{$include GTK/gtkgesturelongpress.inc }        // io. -> gtkgesture
{$include GTK/gtkgesturepan.inc }              // io. -> gtkgesture
{$include GTK/gtkgesturerotate.inc }           // io. -> gtkgesture
{$include GTK/gtkgesturestylus.inc }           // io. -> gtkgesture
{$include GTK/gtkgestureswipe.inc }            // io. -> gtkgesture
{$include GTK/gtkgesturezoom.inc }             // io. -> gtkgesture
{$include GTK/gtkdialogerror.inc }             // io.
{$include GTK/gtkaboutdialog.inc }             // io.
{$include GTK/gtkfiledialog.inc }              // io. -> gtkfilter, gtkfilefilter,
{$include GTK/gtkfontdialog.inc }              // io. -> gtkfilter,
{$include GTK/gtkfontdialogbutton.inc }        // io. -> gtkfontdialog
{$include GTK/gtkcolordialog.inc }             // io.
{$include GTK/gtkcolordialogbutton.inc }       // io. -> gtkcolordialog
{$include GTK/gtkalertdialog.inc }             // io.
{$include GTK/gtknativedialog.inc }            // io.
{$include GTK/print/gtkpapersize.inc }               // io.
{$include GTK/print/gtkpagesetup.inc }               // io. -> gtkpapersize
{$include GTK/print/gtkprintsettings.inc }           // io. -> gtkpapersize
{$include GTK/print/gtkprintcontext.inc }            // io. -> gtkpagesetup
{$include GTK/print/gtkprintoperationpreview.inc }   // io. -> gtkprintcontext, gtkpagesetup
{$include GTK/print/gtkprintoperation.inc }          // io. -> gtkprintcontext, gtkpagesetup, gtkprintoperationpreview, gtkprintsettings;
{$include GTK/gtkprintdialog.inc }             // io. -> gtkprintsettings, gtkpagesetup
{$include GTK/deprecated/gtktreeviewcolumn.inc }          // io. -> gtkcellrenderer, gtktreemodel, gtkcellarea
{$include GTK/deprecated/gtktreeview.inc }                // io. -> gtkeditable, gtkcellrenderer, gtktreemodel, gtktreeviewcolumn
{$include GTK/deprecated/gtkcombobox.inc }                // io. -> gtktreemodel, gtktreeview
{$include GTK/deprecated/gtkcomboboxtext.inc }            // io.
{$include GTK/deprecated/gtkdialog.inc }                  // io.
{$include GTK/deprecated/gtkappchooserdialog.inc }        // io. -> gtkdialog
{$include GTK/deprecated/gtkappchooser.inc }              // io.
{$include GTK/deprecated/gtkappchooserbutton.inc }        // io.
{$include GTK/deprecated/gtkappchooserwidget.inc }        // io.
{$include GTK/deprecated/gtkassistant.inc }               // io.
{$include GTK/deprecated/gtkcolorbutton.inc }             // io.
{$include GTK/deprecated/gtkcolorchooser.inc }            // io.
{$include GTK/deprecated/gtkcolorchooserdialog.inc }      // io.
{$include GTK/deprecated/gtkcolorchooserwidget.inc }      // io.
{$include GTK/deprecated/gtkcellrendereraccel.inc }       // io. -> gtkcellrenderer
{$include GTK/deprecated/gtkcellrenderercombo.inc }       // io. -> gtkcellrenderer
{$include GTK/deprecated/gtkcellrendererpixbuf.inc }      // io. -> gtkcellrenderer
{$include GTK/deprecated/gtkcellrendererprogress.inc }    // io. -> gtkcellrenderer
{$include GTK/deprecated/gtkcellrendererspin.inc }        // io. -> gtkcellrenderer
{$include GTK/deprecated/gtkcellrendererspinner.inc }     // io. -> gtkcellrenderer
{$include GTK/deprecated/gtkcellrenderertoggle.inc }      // io. -> gtkcellrenderer
{$include GTK/deprecated/gtkcellrenderertext.inc }        // io. -> gtkcellrenderer
{$include GTK/deprecated/gtkcellareabox.inc }             // io. -> gtkcellrenderer, gtkcellarea
{$include GTK/deprecated/gtkcellareacontext.inc }         // io. -> gtkcellarea
{$include GTK/deprecated/gtkcelllayout.inc }              // io. -> gtkbuilder, gtkbuildable, gtktreemodel, gtkcellrenderer, gtkcellarea
{$include GTK/deprecated/gtkcellview.inc }                // io. -> gtktreemodel, gtkcellarea
{$include GTK/deprecated/gtkfilechooser.inc }             // io. -> gtkfilefilter
{$include GTK/deprecated/gtkfilechooserwidget.inc }       // io. -> gtkfilechooser
{$include GTK/deprecated/gtkfilechooserdialog.inc }       // io. -> gtkfilechooser
{$include GTK/deprecated/gtkfilechoosernative.inc }       // io. -> gtknativedialog, gtkfilechooser
{$include GTK/deprecated/gtkfontbutton.inc }              // io.
{$include GTK/deprecated/gtkfontchooser.inc }             // io.
{$include GTK/deprecated/gtkfontchooserdialog.inc }       // io.
{$include GTK/deprecated/gtkfontchooserwidget.inc }       // io.
{$include GTK/deprecated/gtkinfobar.inc }                 // io.
{$include GTK/deprecated/gtklockbutton.inc }              // io.
{$include GTK/deprecated/gtkrender.inc }                  // io.
{$include GTK/deprecated/gtkshow.inc }                    // io.
{$include GTK/deprecated/gtkstatusbar.inc }               // io.
{$include GTK/deprecated/gtktreednd.inc }                 // io. -> gtktreemodel
{$include GTK/deprecated/gtktreemodelfilter.inc }         // io. -> gtktreemodel
{$include GTK/deprecated/gtktreemodelsort.inc }           // io. -> gtktreemodel
{$include GTK/deprecated/gtktreeselection.inc }           // io. -> gtktreemodel, gtktreeview
{$include GTK/deprecated/gtktreesortable.inc }            // io. -> gtktreemodel
{$include GTK/deprecated/gtktreestore.inc }               // io. -> gtktreemodel
{$include GTK/deprecated/gtkliststore.inc }               // io. -> gtktreemodel
{$include GTK/deprecated/gtkiconview.inc }                // io. -> gtktreemodel, gtkcellarea, gtkcellrenderer
{$include GTK/deprecated/gtkmessagedialog.inc }           // io. -> gtkdialog
{$include GTK/deprecated/gtkvolumebutton.inc }            // io. -> gtkscalebutton
{$include GTK/gtktestatcontext.inc }           // -> gtkaccessible    // komplexe Macros

// === gtkcss

{$include GTK/css/gtkcssenums.inc }                // io.
{$include GTK/css/gtkcssenumtypes.inc }            // io.
{$include GTK/css/gtkcsserror.inc }                // io.
{$include GTK/css/gtkcsslocation.inc }             // io.
{$include GTK/css/gtkcsssection.inc }              // io. -> gtkcsslocation

// ==== a11y
{$include GTK/a11y/gtkatspisocket.inc }            // io.




