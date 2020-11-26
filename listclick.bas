'Fmain.form----------------------------------------
# Gambas Form File 3.0

{ Form Form
  MoveScaled(0,0,50,30)
  Background = &H0000FF&
  ToolTip = ("hello")
  { TextBox1 TextBox
    MoveScaled(1,1,47,5)
    Background = &H0000FF&
    Text = ("title")
  }
  { Button1 Button
    MoveScaled(1,8,18,5)
    Background = &H0000FF&
    Text = ("ok")
  }
  { ListBox1 ListBox
    MoveScaled(0,14,50,14)
    Background = &H0000FF&
  }
}



'Fmain.class---------------------------------------
' Gambas class file

Public Sub ttitle(s As String)
  ListBox1.Add(s)
  FMain.Title = s
End


Public Sub _new()

End


Public Sub Button1_Click()
  ttitle(TextBox1.Text)
End

Public Sub ListBox1_Click()

  If ListBox1.Count > 0 Then ListBox1.Remove(ListBox1.Index)

End

Public Sub ListBox1_Select()

  

End


Public Sub Form_Enter()

  ListBox1.Font.Size = 20

End
