[Tutorial](https://lazyfoo.net/SDL_tutorials/)

Folgendes muss installiert werden:
```
sudo apt install libsdl1.2-dev 
sudo apt install libsdl-image1.2-dev
sudo apt install libsdl-ttf2.0-dev
sudo apt install libsdl-mixer1.2-dev 
sudo apt install libsmpeg-dev 
```
# Wichtig !!
Unter Linux kann es zu folgendem Fehler kommen und einem den ganzen Fenstermanger runterreisen.

```
An unhandled exception occurred at $00007F07F96764DB:
EInvalidOp: Invalid floating point operation
```
Abhilfe schaft folgendes:
```pascal
uses
  math, ...
...
begin
  SetExceptionMask([exDenormalized, exInvalidOp, exOverflow, exPrecision, exUnderflow, exZeroDivide]);
  ...
end.
```

# Sourcen
## GTK 3
(https://gitlab.gnome.org/GNOME/gtk/-/tree/gtk-3-24)
## GTK 4
(https://gitlab.gnome.org/GNOME/gtk)





 
