//
// gcc main.c -o main `pkg-config gtk+-3.0 --libs --cflags`
//
// https://tecnocode.co.uk/misc/platform-demos/toolbar.c.xhtml
// https://tecnocode.co.uk/misc/platform-demos/beginner.c.xhtml#misc


#include <gtk/gtk.h>

/* Declare these two Toolbuttons, as they will be used in both the fullscreen
 * action callback as well as the activate function.
 */
GtkToolItem *fullscreen_button;
GtkToolItem *leavefullscreen_button;



/* Callback function for the undo action */
static void
undo_callback (GSimpleAction *simple,
               GVariant      *parameter,
               gpointer       user_data)
{
  g_print ("You clicked \"Undo\".\n");
}



/* Callback function for the fullscreen action */
static void
fullscreen_callback (GSimpleAction *simple,
                     GVariant      *parameter,
                     gpointer       user_data)
{
  GdkWindow *window = gtk_widget_get_window (GTK_WIDGET (user_data));

  GdkWindowState current_state = gdk_window_get_state (window);

  /* If the window is currently in fullscreen mode */
  if ( (current_state & GDK_WINDOW_STATE_FULLSCREEN) != 0)
    {
      /* Minimize the window and change to the fullscreen button */
      gdk_window_unfullscreen (window);
      gtk_widget_hide (GTK_WIDGET(leavefullscreen_button));
      gtk_widget_show (GTK_WIDGET(fullscreen_button));
    }
  else
    {
      /* Maximize the window, and change to the unfullscreen button */
      gdk_window_fullscreen (window);
      gtk_widget_hide (GTK_WIDGET (fullscreen_button));
      gtk_widget_show (GTK_WIDGET (leavefullscreen_button));
    }
}


static void
activate (GtkApplication *app,
          gpointer        user_data)
{
  /* Initialize variables */
  GtkWidget *window;
  GtkWidget *grid;
  GtkWidget *toolbar;

  GtkToolItem *new_button;
  GtkToolItem *open_button;
  GtkToolItem *undo_button;

  GtkStyleContext *style_context;

  GSimpleAction *undo_action;
  GSimpleAction *fullscreen_action;
  GSimpleAction *leavefullscreen_action;

  /* Create a window with a title and a default size */
  window = gtk_application_window_new (app);
  gtk_window_set_title (GTK_WINDOW (window), "Toolbar Example");
  gtk_window_set_default_size (GTK_WINDOW (window), 400, 200);

  /* Here we begin to create the toolbar */
  toolbar = gtk_toolbar_new ();
  /* Set the toolbar to be the primary toolbar of the application */
  style_context = gtk_widget_get_style_context (toolbar);
  gtk_style_context_add_class (style_context, GTK_STYLE_CLASS_PRIMARY_TOOLBAR);

  /* Create a button for the "new" action, with a stock image */
  new_button = gtk_tool_button_new_from_stock (GTK_STOCK_NEW);
  /* Show the "new" button's label */
  gtk_tool_item_set_is_important (new_button, TRUE);
  /* Insert the button in the desired position within the toolbar */
  gtk_toolbar_insert (GTK_TOOLBAR (toolbar), new_button, 0);
  /* Show the button */
  gtk_widget_show (GTK_WIDGET (new_button));
  /* Set the action name for the "new" action. We use "app.new" to
   * indicate that the action controls the application.
   */
  gtk_actionable_set_action_name (GTK_ACTIONABLE (new_button), "app.new");

  /* Repeat the same steps for the "open" action */
  open_button = gtk_tool_button_new_from_stock (GTK_STOCK_OPEN);
  gtk_tool_item_set_is_important (open_button, TRUE);
  gtk_toolbar_insert (GTK_TOOLBAR (toolbar), open_button, 1);
  gtk_widget_show (GTK_WIDGET (open_button));
  gtk_actionable_set_action_name (GTK_ACTIONABLE (open_button), "app.open");

  /* Repeat the same steps for the "undo" action */
  undo_button = gtk_tool_button_new_from_stock (GTK_STOCK_UNDO);
  gtk_tool_item_set_is_important (undo_button, TRUE);
  gtk_toolbar_insert (GTK_TOOLBAR (toolbar), undo_button, 2);
  gtk_widget_show (GTK_WIDGET (undo_button));
  /* In this case, we use "win.undo" to indicate that
   * the action controls only the window
   */
  gtk_actionable_set_action_name (GTK_ACTIONABLE (undo_button), "win.undo");

  /* Repeat the same steps for the "fullscreen" action */
  fullscreen_button = gtk_tool_button_new_from_stock (GTK_STOCK_FULLSCREEN);
  gtk_tool_item_set_is_important (fullscreen_button, TRUE);
  gtk_toolbar_insert (GTK_TOOLBAR (toolbar), fullscreen_button, 3);
  gtk_widget_show (GTK_WIDGET (fullscreen_button));
  gtk_actionable_set_action_name (GTK_ACTIONABLE (fullscreen_button), "win.fullscreen");

  /*Repeat the same steps for the "leavefullscreen" action */
  leavefullscreen_button = gtk_tool_button_new_from_stock (GTK_STOCK_LEAVE_FULLSCREEN);
  gtk_tool_item_set_is_important (leavefullscreen_button, TRUE);
  gtk_toolbar_insert (GTK_TOOLBAR (toolbar), leavefullscreen_button, 3);
  /* The only difference here is that we don't show the leavefullscreen button,
   * as it will later replace the fullscreen button.
   */
  gtk_actionable_set_action_name (GTK_ACTIONABLE (leavefullscreen_button), "win.leavefullscreen");

  /* Once we've created the bare-bones of the toolbar, we make
   * sure it has enough horizontal space.
   */
  gtk_widget_set_hexpand (toolbar, TRUE);
  gtk_widget_show (toolbar);

  /* Attach the toolbar to the grid and add it to the overall window */
  grid = gtk_grid_new ();
  gtk_grid_attach (GTK_GRID (grid), toolbar, 0, 0, 1, 1);
  gtk_container_add (GTK_CONTAINER (window), GTK_WIDGET (grid));
  gtk_widget_show (GTK_WIDGET (grid));

  /* Use the action names to create the actions that control the window, and
   * connect them to the appropriate callbackfunctions.
   */
  undo_action = g_simple_action_new ("undo", NULL);
  g_signal_connect (undo_action, "activate", G_CALLBACK (undo_callback),
                    GTK_WINDOW (window));
  g_action_map_add_action (G_ACTION_MAP (window), G_ACTION (undo_action));

  fullscreen_action = g_simple_action_new ("fullscreen", NULL);
  g_signal_connect (fullscreen_action, "activate", G_CALLBACK (fullscreen_callback),
                    GTK_WINDOW (window));
  g_action_map_add_action (G_ACTION_MAP (window), G_ACTION (fullscreen_action));

  leavefullscreen_action = g_simple_action_new ("leavefullscreen", NULL);
  g_signal_connect (leavefullscreen_action, "activate", G_CALLBACK (fullscreen_callback),
                    GTK_WINDOW (window));
  g_action_map_add_action (G_ACTION_MAP (window), G_ACTION (leavefullscreen_action));

  gtk_widget_show (window);
}



/* Callback function for the new action */
static void
new_callback (GSimpleAction *simple,
              GVariant      *parameter,
              gpointer       user_data)
{
  g_print ("You clicked \"New\".\n");
}



/* Callback function for the open action */
static void
open_callback (GSimpleAction *simple,
               GVariant      *parameter,
               gpointer       user_data)
{
  g_print ("You clicked \"Open\".\n");
}



/* In this function, we create the actions in which control the window, and
 * connect their signals to the appropriate callback function.
 */
static void
startup (GApplication *app,
         gpointer      user_data)
{
  GSimpleAction *new_action;
  GSimpleAction *open_action;

  new_action = g_simple_action_new ("new", NULL);
  g_signal_connect (new_action, "activate", G_CALLBACK (new_callback), app);
  g_action_map_add_action (G_ACTION_MAP (app), G_ACTION (new_action));

  open_action = g_simple_action_new ("open", NULL);
  g_signal_connect (open_action, "activate", G_CALLBACK (open_callback), app);
  g_action_map_add_action (G_ACTION_MAP (app), G_ACTION (open_action));
}



/* Startup function for the application */
int
main (int argc, char **argv)
{
  GtkApplication *app;
  int status;

  app = gtk_application_new ("org.gtk.example", G_APPLICATION_FLAGS_NONE);
  g_signal_connect (app, "activate", G_CALLBACK (activate), NULL);
  g_signal_connect (app, "startup", G_CALLBACK (startup), NULL);
  status = g_application_run (G_APPLICATION (app), argc, argv);
  g_object_unref (app);

  return status;
}
