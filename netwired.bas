'FMain.form--------------------------------------------

# Gambas Form File 3.0

{ Form Form
  MoveScaled(0,0,50,50)
  Background = &H0000FF&
  Foreground = &HFFFFFF&
  { DrawingArea1 DrawingArea
    MoveScaled(1,1,48,47)
  }
}


'FMain.class--------------------------------------------
' Gambas class file

Public Sub _new()

End

Public Sub Form_Open()

End

Public Sub DrawingArea1_Draw()
Dim halfw As Integer
Dim halfy As Integer
Dim halfw5 As Integer
Dim halfy5 As Integer
Dim n As Integer
halfw = DrawingArea1.W \ 2
halfy = DrawingArea1.H \ 2
halfw5 = DrawingArea1.W \ 8
halfy5 = DrawingArea1.H \ 8

  Draw.Begin(DrawingArea1)
  'Goto escape
  For n = 0 To DrawingArea1.W Step 30
    Draw.Line(n, 0, halfw, halfy)
    Draw.Line(n, DrawingArea1.h, halfw, halfy)
  Next
  For n = 0 To DrawingArea1.H Step 30
    Draw.Line(0, n, halfw, halfy)
    Draw.Line(DrawingArea1.w, n, halfw, halfy)
  Next
  For n = 0 To DrawingArea1.H Step 30
    Draw.Line(0, n, halfw, halfy)
    Draw.Line(DrawingArea1.w, n, halfw, halfy)
  Next
  escape:
    For n = 1 To 8 
      Draw.Rect(halfw - halfw5 * n, halfy - halfy5 * n, halfw5 * n * 2, halfy5 * n * 2)
    Next
  Draw.End
End
