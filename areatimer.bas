'FMain.form---------------------------------------

# Gambas Form File 3.0

{ Form Form
  MoveScaled(0,0,50,50)
  Background = &H0000FF&
  { DrawingArea1 DrawingArea
    MoveScaled(0,0,50,50)
    Background = &H0000FF&
    Foreground = &HFFFFFF&
    { Timer1 #Timer
      #MoveScaled(5,39)
      Enabled = True
    }
  }
}


'FMain.class---------------------------------------
' Gambas class file


Public yy As Integer

Public Sub Form_Enter()
End

Public Sub Form_Open()
  yy = 10
End

Public Sub DrawingArea1_Draw()
  Dim x As Integer
  Dim y As Integer
  

  Draw.Begin(DrawingArea1)
      Draw.FillRect(0, 0, Me.W, yy, Color.RGB(20, 20, 255))
    Draw.FillRect(0, yy, Me.W, Me.h - yy, Color.RGB(255, 255, 255))
Draw.End()
  

End

Public Sub Timer1_Timer()
  yy = yy + 10
  If yy > DrawingArea1.H - 12 Then yy = 10
  DrawingArea1.Refresh()

End
