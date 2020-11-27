'FMain.form-------------------------------------------

# Gambas Form File 3.0

{ Form Form
  MoveScaled(0,0,50,50)
  Background = &H0000FF&
  { Label1 Label
    MoveScaled(1,1,48,6)
    Text = (" -----")
  }
  { Timer1 #Timer
    #MoveScaled(2,10)
    Enabled = True
  }
}

'FMain.class-------------------------------------------

' Gambas class file

Public Sub gettimer()
  Dim a As String 
  Dim b As String
  Label1.Text = CStr(Now) 
  
End



Public Sub _new()

End

Public Sub Form_Open()

End

Public Sub Timer1_Timer()

 gettimer() 

End

Public Sub Label1_Enter()

  gettimer()

End
