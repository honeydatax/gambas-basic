'-------------------------------------------------
'FMain.form 
# Gambas Form File 3.0

{ Form Form
  MoveScaled(0,0,64,64)
  Background = Color.DarkMagenta
  Foreground = Color.White
  { ImageView1 ImageView
    MoveScaled(1,1,62,60)
  }
}
'-------------------------------------------------
'FMain.class

' Gambas class file

Public xx As Integer
Public yy As Integer
Public maxx As Integer
Public Maxy As Integer
Const n1 As Integer = 12
Const up As Integer = 65362
Const down As Integer = 65364
Const lefts As Integer = 65361
Const rigths As Integer = 65363
  
Public Sub form_KeyPress()
Dim kc As Integer
kc = Key.Code 
  Paint.Begin(ImageView1.Image)
    Paint.FillRect(xx * 12, yy * 12, 12, 12, color.darkmagenta)
  If Kc = up Then yy = yy - 1
  If Kc = down Then yy = yy + 1
  If kc = lefts Then xx = xx - 1
  If kc = rigths Then xx = xx + 1
  If xx > maxx - 1 Then xx = maxx - 1
  If yy > maxy - 1 Then yy = maxy - 1
  If xx < 0 Then xx = 0
  If yy < 0 Then yy = 0
     Paint.FillRect(xx * 12, yy * 12, 12, 12, color.darkmagenta)
    ImageView1.Foreground = Color.White
    Paint.DrawText("X", xx * 12, yy * 12, 12, 12, 4)
  Paint.End
 ImageView1.Refresh()
End

Public Sub Form_Open()
Dim n As Integer
Dim nn As Integer
  ImageView1.Image = New Image(ImageView1.W - 50, ImageView1.h - 50, color.darkmagenta)
  maxx = (ImageView1.W - 50 - 13) / 12
  maxy = (ImageView1.h - 50 - 13) / 12
  Paint.Begin(ImageView1.Image)
  For n = 0 To n1
     xx = Int(Rnd() * maxx)
     yy = Int(Rnd() * maxy)
     Paint.DrawText("*", xx * 12, yy * 12, 12, 12, 4)
  Next
    xx = maxx / 2
    yy = maxy / 2
    Paint.FillRect(xx * 12, yy * 12, 12, 12, color.darkmagenta)
    Paint.DrawText("X", xx * 12, yy * 12, 12, 12, 4)
  Paint.End
End

