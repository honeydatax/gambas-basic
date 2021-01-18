'FMain.form----------------------------------------


# Gambas Form File 3.0

{ Form Form
  MoveScaled(0,0,50,50)
  { ToolPanel1 ToolPanel
    MoveScaled(1,1,48,48)
    Background = &H0000FF&
    Foreground = &HFFFFFF&
    Animated = True
    Index = 0
    Text = ("tool")
    { TextBox1 TextBox
      MoveScaled(1,2,45,6)
      Background = &H0000FF&
      Foreground = &HFFFFFF&
      Text = ("new")
    }
    { Button1 Button
      MoveScaled(2,10,15,6)
      Background = &H0000FF&
      Foreground = &HFFFFFF&
      Text = ("new")
    }
    Index = 0
  }
}




'FMain.class--------------------------------------
' Gambas class file

Public bt As Button

Public Sub Button1_Click()

If ToolPanel1.Count < 5 Then 
  ToolPanel1.Count = ToolPanel1.Count + 1
  ToolPanel1[ToolPanel1.Count - 1].Text = TextBox1.text
  bt = New Button(ToolPanel1[ToolPanel1.Count - 1]) As "Button2"
  bt.Visible = True
  bt.x = 10
  bt.y = 10
  bt.w = 50
  bt.h = 20
  bt.text = "erase"
  bt.Background = Color.Blue
End If
Form.Refresh()
End

Public Sub Button2_Click()
ToolPanel1.Children[0].Delete
ToolPanel1[ToolPanel1.Index].Delete

End

