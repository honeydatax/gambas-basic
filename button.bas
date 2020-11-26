'FMain.form----------------------------------------
# Gambas Form File 3.0

{ Form Form
  MoveScaled(0,0,50,50)
  Background = &H0000FF&
  ToolTip = ("hello")
  { TextBox1 TextBox
    MoveScaled(1,1,47,5)
    Background = &H0000FF&
    Text = ("title")
  }
  { Button1 Button
    MoveScaled(1,8,18,5)
    Text = ("ok")
  }
}



'FMain.class---------------------------------------
' Gambas class file

Public Sub ttitle(s As String)
  FMain.Title = s
End


Public Sub _new()

End


Public Sub Button1_Click()
  ttitle(TextBox1.Text)
End
