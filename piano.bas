'FMain.form--------------------------------------

# Gambas Form File 3.0

{ Form Form
  MoveScaled(0,0,50,50)
  Background = &H0000FF&
  { Frame1 Frame
    MoveScaled(1,1,43,8)
    Text = ("acordes")
    { RadioButton1 RadioButton
      MoveScaled(2,3,4,3)
      Text = ("0")
    }
    { RadioButton2 RadioButton
      MoveScaled(7,3,4,3)
      Text = ("1")
    }
    { RadioButton3 RadioButton
      MoveScaled(12,3,4,3)
      Text = ("2")
    }
    { RadioButton4 RadioButton
      MoveScaled(17,3,4,3)
      Text = ("3")
    }
    { RadioButton5 RadioButton
      MoveScaled(22,3,4,3)
      Text = ("4")
    }
    { RadioButton6 RadioButton
      MoveScaled(27,3,4,3)
      Text = ("5")
    }
    { RadioButton7 RadioButton
      MoveScaled(32,3,4,3)
      Text = ("6")
    }
    { RadioButton8 RadioButton
      MoveScaled(36,3,4,3)
      Text = ("7")
    }
  }
  { Slider1 Slider
    MoveScaled(2,12,39,5)
    Background = &H0000FF&
    MinValue = 200
    MaxValue = 1000
    PageStep = 100
    Value = 500
  }
  { Button1 Button
    MoveScaled(2,24,4,8)
    Background = &H0000FF&
    Text = ("0")
  }
  { Button2 Button
    MoveScaled(8,24,4,8)
    Background = &H0000FF&
    Text = ("1")
  }
  { Button3 Button
    MoveScaled(14,24,4,8)
    Background = &H0000FF&
    Text = ("2")
  }
  { Button4 Button
    MoveScaled(20,24,4,8)
    Background = &H0000FF&
    Text = ("3")
  }
  { Button5 Button
    MoveScaled(26,24,4,8)
    Background = &H0000FF&
    Text = ("4")
  }
  { Button6 Button
    MoveScaled(32,24,4,8)
    Background = &H0000FF&
    Text = ("5")
  }
  { Button7 Button
    MoveScaled(38,24,4,8)
    Background = &H0000FF&
    Text = ("6")
  }
  { Button8 Button
    MoveScaled(44,24,4,8)
    Background = &H0000FF&
    Text = ("7")
  }
}


'FMain.class--------------------------------------
' Gambas class file

Public acord As Integer = 500
Public note As Integer = 10

Public Sub playser()
  Dim s As String
  s = "beep -f " & Str(acord + note) & " -l " & Str(Slider1.Value)
  FMain.Title = s
  Shell s
End




Public Sub _new()

End

Public Sub Form_Open()

End

Public Sub RadioButton1_Click()
acord = 400
  

End

Public Sub RadioButton2_Click()
acord = 500
  

End

Public Sub RadioButton3_Click()

  acord = 600

End

Public Sub RadioButton4_Click()

  acord = 700

End

Public Sub RadioButton5_Click()

  acord = 800

End

Public Sub RadioButton6_Click()

  acord = 900

End

Public Sub RadioButton7_Click()

  acord = 1000

End

Public Sub RadioButton8_Click()

  acord = 1100

End

Public Sub Button1_Click()

 note = 10
 playser() 

End

Public Sub Button2_Click()

  note = 20
 playser() 


End

Public Sub Button3_Click()

  note = 30
 playser() 


End

Public Sub Button4_Click()

  note = 40
 playser() 


End

Public Sub Button5_Click()

  note = 50
 playser() 


End



Public Sub Button6_Click()

  note = 60
 playser() 


End




Public Sub Button7_Click()

  note = 70
 playser() 


End

Public Sub Button8_Click()

  note = 80
 playser() 


End
