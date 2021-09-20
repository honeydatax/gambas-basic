'---------------------------------------------------
'FMain.form
# Gambas Form File 3.0

{ Form Form
  MoveScaled(0,0,64,64)
  Background = Color.DarkMagenta
  Foreground = Color.White
  { ImageView1 ImageView
    MoveScaled(1,1,63,61)
    Background = Color.DarkMagenta
    Foreground = Color.White
  }
  { Timer1 #Timer
    #MoveScaled(46,48)
    Delay = 300
  }
}
'---------------------------------------------------
'FMain.class
' Gambas class file

Const minx As Integer = 0
Const miny As Integer = 0
Const maxx As Integer = 25
Const maxy As Integer = 25
Const xxxm As Integer = 10
Const yyym As Integer = 10
Const xxxl As Integer = -10
Const yyyl As Integer = -10
Public x1 As Integer
Public y1 As Integer
Public x2 As Integer
Public y2 As Integer
Public xx As Integer
Public yy As Integer

Public Sub Timer1_Timer()
  
  
  x1 = x1 + xx
  y1 = y1 + yy
  If x1 > ImageView1.Image.W - maxx Then xx = xxxl
  If x1 < 0 Then xx = xxxm
  If y1 > ImageView1.Image.h - maxy Then yy = yyyl
  If y1 < 0 Then yy = yyym
  Paint.Begin(ImageView1.Image)
    Paint.FillRect(x2 - 1, y2 - 1, maxx + 1, maxy + 1, color.darkmagenta)
  Paint.End
  Draw.Begin(ImageView1.Image)
    Draw.Ellipse(x1, y1, maxx, maxy)
  Draw.End
  ImageView1.Refresh()
  x2 = x1
  y2 = y1
End

Public Sub Form_Open()
  ImageView1.Image = New Image(ImageView1.w - 75, ImageView1.h - 75, color.darkmagenta)
  xx = xxxm
  yy = yyym
  x1 = minx
  y1 = miny
  x2 = x1
  y2 = y1
  Me.Show()
  Timer1.Enabled = True
End


