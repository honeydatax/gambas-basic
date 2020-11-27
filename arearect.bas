'FMain.form-------------------------------------
# Gambas Form File 3.0

{ Form Form
  MoveScaled(0,0,50,50)
  Background = &H0000FF&
  { DrawingArea1 DrawingArea
    MoveScaled(0,0,50,50)
    Background = &H0000FF&
    Foreground = &HFFFFFF&
  }
}


'FMain.class-------------------------------------
' Gambas class file


Public Sub Form_Enter()
End

Public Sub Form_Open()
End

Public Sub DrawingArea1_Draw()
  Dim x As Integer
  Dim y As Integer
  

  Draw.Begin(DrawingArea1)
  For x = 0 To Me.W / 2 Step 30
    Draw.FillRect(x, x, 150, 150, Color.RGB(x, x, x))
  Next
Draw.End()
  

End
