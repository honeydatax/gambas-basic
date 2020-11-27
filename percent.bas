'FMain.form-----------------------------------
# Gambas Form File 3.0

{ Form Form
  MoveScaled(0,0,50,50)
  Background = &H0000FF&
  Foreground = &H0A0A0A&
  Tracking = True
  Drop = True
  Expand = True
  Mask = True
  Persistent = True
  Utility = True
  Sticky = True
  SkipTaskbar = True
  { Timer1 #Timer
    #MoveScaled(3,9)
    Enabled = True
  }
  { ProgressBar1 ProgressBar
    MoveScaled(1,2,47,5)
    #Translate = False
    Background = &H007FFF&
    Foreground = &HF4F4F4&
    Drop = True
    Expand = True
    Ignore = True
  }
}



'FMain.class-----------------------------------
' Gambas class file


Public yy As Integer

Public Sub refress()
  Dim s As String
  If yy > 100 Then yy = 10
  ProgressBar1.Value = yy / 100
  ProgressBar1.Refresh()
  ProgressBar1.Show()
   s = CStr(yy)
   s = s & " %  "
  FMain.Title = s
  
  
End


Public Sub Form_Enter()
  yy = 10
  refress()

End

Public Sub Form_Open()
  yy = 10
  refress()
End


Public Sub Timer1_Timer()
  yy = yy + 10
  refress()

End
