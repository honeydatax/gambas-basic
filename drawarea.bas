'FMain.form ---------------------------------------
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



'FMain.class ---------------------------------------
' Gambas class file


Public Sub Form_Enter()
End

Public Sub Form_Open()
End

Public Sub DrawingArea1_Draw()
  Dim x As Integer
  Dim y As Integer
  

  Draw.Begin(DrawingArea1)
  For x = 0 To Me.W Step 30
    Draw.Line(x, 0, x, Me.H)
  Next
  For y = 0 To Me.h Step 30
    Draw.Line(0, y, Me.W, y)
  Next
Draw.End()
  

End
