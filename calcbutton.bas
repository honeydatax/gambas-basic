'FMain.form---------------------------------------
# Gambas Form File 3.0

{ Form Form
  MoveScaled(0,0,50,30)
  Background = &H0000FF&
  ToolTip = ("hello")
  { TextBox1 TextBox
    MoveScaled(1,1,47,5)
    Background = &H0000FF&
    Text = ("0")
  }
  { Button1 Button
    MoveScaled(15,8,6,5)
    Background = &H0000FF&
    Text = ("+")
  }
  { Button2 Button
    MoveScaled(23,8,6,5)
    Background = &H0000FF&
    Text = ("-")
  }
  { Button3 Button
    MoveScaled(32,8,6,5)
    Background = &H0000FF&
    Text = ("X")
  }
  { Button4 Button
    MoveScaled(41,8,6,5)
    Background = &H0000FF&
    Text = (":")
  }
  { TextBox2 TextBox
    MoveScaled(1,14,47,5)
    Background = &H0000FF&
    Text = ("0")
  }
  { TextBox3 TextBox
    MoveScaled(1,22,47,5)
    Background = &H0000FF&
    Text = ("0")
  }
  { Button5 Button
    MoveScaled(7,8,6,5)
    Background = &H0000FF&
    Text = ("copy")
  }
}


'FMain.class--------------------------------------
' Gambas class file

Public Sub maths(i As Integer)
  Dim a As Float
  Dim b As Float
  a = Val(TextBox1.Text)
  b = Val(TextBox2.Text)
  If i = 0 Then 
    a = a + b
  Endif
  If i = 1 Then 
    a = a - b
  Endif
  If i = 2 Then 
    a = a * b
  Endif
  If i = 3 Then 
    a = a / b
  Endif
  If i = 4 Then 
    a = Val(TextBox3.Text)
    TextBox1.Text = TextBox3.Text
  Endif

  TextBox3.Text = Trim(Str(a))
End


Public Sub _new()

End



Public Sub Form_Open()

  

End

Public Sub Button1_Click()

 maths(0) 

End

Public Sub Button2_Click()

 maths(1) 

End

Public Sub Button3_Click()

  maths(2)

End


Public Sub Button4_Click()

  maths(3)

End

Public Sub Button5_Click()

  maths(4)

End
