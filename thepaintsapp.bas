'FMain.form----------------------------------------
# Gambas Form File 3.0

{ Form Form
  MoveScaled(0,0,50,50)
  Background = &H0000FF&
  Foreground = &H000000&
  { DrawingArea1 DrawingArea
    MoveScaled(1,1,48,48)
  }
}



'FMain.class----------------------------------------
' Gambas class file


Public xx As Integer = 0
Public yy As Integer = 0
Public xxx As Integer = 0
Public yyy As Integer = 0
Public picture1 As Picture


Public Sub _new()

End

Public Sub Form_Open()
picture1 = New Picture(DrawingArea1.W, DrawingArea1.H)
  Paint.Begin(picture1)
  Paint.FillRect(0, 0, DrawingArea1.W, DrawingArea1.H, Color.Blue)
  Paint.End
End

Public Sub DrawingArea1_Draw()
  Draw.Begin(DrawingArea1)
  Draw.picture(picture1, 0, 0)
  Draw.End
End

Public Sub DrawingArea1_MouseDown()
  xxx = Mouse.X
  yyy = Mouse.Y
  Draw.Begin(picture1)
  Draw.Line(xx, yy, xxx, yyy)
  Draw.End
  DrawingArea1.Refresh()
  xx = xxx
  yy = yyy

End

Public Sub Form_Close()
Dim picture2 As SvgImage
picture2 = New SvgImage(DrawingArea1.W, DrawingArea1.H)
  Draw.Begin(picture2)
  Draw.picture(picture1, 0, 0)
  Draw.End
picture2.Save("/home/pi/gambas/my.svg")
End
