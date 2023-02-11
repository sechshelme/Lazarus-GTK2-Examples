program project1;

uses
  sdl,
  glib2,
  gdk2,
  gtk2;

  procedure Run_SDL;
  var
    scr: PSDL_Surface;
    e: TSDL_Event;
    Quit: boolean = False;
    rect: TSDL_Rect;
  begin
    if SDL_Init(SDL_INIT_VIDEO) < 0 then begin
      Writeln('SDL could not initialize! SDL_Error: ', SDL_GetError);
    end;
    scr := SDL_SetVideoMode(640, 480, 8, SDL_SWSURFACE);
    SDL_WM_SetCaption('SDL-Fenster', nil);

    if scr = nil then begin
      WriteLn('could not initialize sdl2: ', SDL_GetError());
    end;

    while not quit do begin
      while SDL_PollEvent(@e) <> 0 do begin
        case e.type_ of
          SDL_KEYDOWN: begin
            case e.key.keysym.sym of
              SDLK_ESCAPE: begin
                quit := True;
              end;
            end;
          end;
          SDL_MOUSEBUTTONDOWN: begin
            rect.x := 0;
            rect.y := 0;
            rect.w := 200;
            rect.h := 200;
            SDL_FillRect(scr, @rect, Random($FFFFFF));
            WriteLn('click: ', e.button.button);
            SDL_Flip(scr);
          end;
          SDL_QUITEV: begin
            quit := True;
          end;
        end;
      end;
    end;

    SDL_Quit;
  end;

var    start_Games: boolean = False;



  function Run_GTK: integer;
  var
    window, vbox, Btn_RunGames, Btn_Quit: PGtkWidget;

  procedure press_Run(widget: PGtkWidget; event: PGdkEventButton; data: gpointer); cdecl;
  begin
    start_Games := True;
 //     gtk_main_quit;
    WriteLn('Starte Games');
    WriteLn('run: ', start_Games);
  end;

  begin
    Result := 0;
    start_Games:=False;

    gtk_init(@argc, @argv);
    window := gtk_window_new(GTK_WINDOW_TOPLEVEL);
    vbox := gtk_vbox_new(False, 0);
    gtk_container_add(GTK_CONTAINER(window), vbox);

    gtk_box_pack_start(GTK_BOX(vbox), gtk_label_new('Wähle eine Option'), False, False, 5);

    Btn_RunGames := gtk_button_new_with_label('Start Game');
    gtk_box_pack_start(GTK_BOX(vbox), Btn_RunGames, False, False, 0);


    g_signal_connect(Btn_RunGames, 'clicked', G_CALLBACK(@gtk_main_quit), nil);
    g_signal_connect(Btn_RunGames, 'clicked', G_CALLBACK(@press_Run), nil);


    Btn_Quit := gtk_button_new_with_label('Quit');
    gtk_box_pack_start(GTK_BOX(vbox), Btn_Quit, False, False, 0);
    g_signal_connect(Btn_Quit, 'clicked', G_CALLBACK(@gtk_main_quit), nil);


    g_signal_connect(window, 'destroy', G_CALLBACK(@gtk_main_quit), nil);

    gtk_widget_show_all(window);
    gtk_main;

    gtk_widget_destroy(window);
  //  ReadLn;
//   gtk_main_quit;

WriteLn('result: ', start_Games);
    if start_Games then begin
      Result := 1;
    end;
  end;



  function main(argc: integer; argv: PChar): integer;
  begin
    while Run_GTK = 1 do begin
      Run_SDL;
    end;
  end;

begin
  main(argc, @argv);
   //   ReadLn;

  //  Halt(main(argc, @argv));
end.
