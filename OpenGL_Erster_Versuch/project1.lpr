program project1;

uses
  CRT,
  SDL,
  GL,
  GLU;

var
  screen: PSDL_Surface;
const
  r = 0.5;

begin
  SDL_INIT(SDL_INIT_VIDEO);

  screen := SDL_SETVIDEOMODE(640, 480, 0, SDL_OPENGL);
  if screen = nil then begin
    HALT;
  end;

  //  glCLEARCOLOR(0.0, 0.0, 1.0, 0.0);
  glVIEWPORT(0, 0, 640, 480);
  //  glMATRIXMODE(GL_PROJECTION);
  //  glLOADIDENTITY;
  //  gluPERSPECTIVE(45.0, 640.0 / 480.0, 1.0, 3.0);
  //  glMATRIXMODE(GL_MODELVIEW);
  //  glLOADIDENTITY;
  //  glCLEAR(GL_COLOR_BUFFER_BIT);
  glENABLE(GL_CULL_FACE);
  //  glTRANSLATEf(0.0, 0.0, -2.0);


  repeat
    SDL_DELAY(50);

    glROTATEf(5, 0.0, 0.0, 1.0);
    glCLEAR(GL_COLOR_BUFFER_BIT);

    glBegin(GL_QUADS);
    glColor3f(1.0, 0.0, 0.0);
    glVertex2f(r, r);
    glColor3f(1.0, 1.0, 0.0);
    glVertex2f(-r, r);
    glColor3f(1.0, 0.0, 1.0);
    glVertex2f(-r, -r);
    glColor3f(0.0, 1.0, 0.0);
    glVertex2f(r, -r);
    glEnd;

    SDL_GL_SWAPBUFFERS;
  until keypressed;

  SDL_QUIT;
end.
