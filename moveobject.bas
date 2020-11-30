'FMain.form---------------------------------------
# Gambas Form File 3.0

{ Form Form
  MoveScaled(0,0,50,50)
  Background = &H0000FF&
  Foreground = &HFFFFFF&
  { TextBox1 TextBox
    MoveScaled(18,21,7,7)
    Background = &H007FFF&
    Foreground = &H000000&
    Text = ("keys")
  }
}


'FMain.class---------------------------------------

' Gambas class file

Public Sub _new()

End

Public Sub Form_Open()

End

Public Sub Form_KeyRelease()

  

End

Public Sub Form_KeyPress()

  TextBox1.Text = Str(Key.Code)
If (Key.Code = 65363) Then TextBox1.X = TextBox1.X + 10
If (Key.Code = 65361) Then TextBox1.X = TextBox1.X - 10
If (Key.Code = 65362) Then TextBox1.Y = TextBox1.Y - 10
If (Key.Code = 65364) Then TextBox1.Y = TextBox1.Y + 10
End
