'FMain.form----------------------------------------
# Gambas Form File 3.0

{ Form Form
  MoveScaled(0,0,50,50)
  Background = &H0000FF&
  { DrawingArea1 DrawingArea
    MoveScaled(2,1,46,45)
    Background = &H0000FF&
    Foreground = &H000000&
  }
}



'FMain.class----------------------------------------
' Gambas class file


Public pic As New Picture
Public pics As Integer = 0
Public xx As Integer
Public yy As Integer
Public xxx As Integer
Public yyy As Integer

Public Sub _new()

End

Public Sub Form_Open()
End

Public Sub Form_Menu()
End


Public Sub DrawingArea1_MouseDown()
  xx = xxx
  yy = yyy
  xxx = Mouse.X
  yyy = Mouse.Y
  pics = 1
  DrawingArea1.Refresh()
End


Public Sub DrawingArea1_Draw()
If pics <> 0 Then
  Draw.Begin(DrawingArea1)
  Draw.Foreground = Color.White
  Draw.Line(xx, yy, xxx, yyy)    
  Draw.End
End If

End
