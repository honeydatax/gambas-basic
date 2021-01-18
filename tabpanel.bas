'FMain.form---------------------------------------
# Gambas Form File 3.0

{ Form Form
  MoveScaled(0,0,50,50)
  { TabPanel1 TabPanel
    MoveScaled(1,1,48,42)
    Background = &H0000FF&
    Foreground = &HFFFFFF&
    Index = 0
    Text = ("TabPanel1")
    { Button1 Button
      MoveScaled(2,2,15,5)
      Background = &H0000FF&
      Foreground = &HFFFFFF&
      Text = ("Button1")
    }
    { TextBox1 TextBox
      MoveScaled(2,9,43,6)
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
If TabPanel1.Count < 5 Then
  TabPanel1.Count = TabPanel1.Count + 1
  TabPanel1[TabPanel1.Count - 1].Text = TextBox1.text
  bt = New Button(TabPanel1[TabPanel1.Count - 1]) As "Button2"
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

Public Sub Form_Open()

  TabPanel1.Count = 1
TabPanel1.Refresh()
End

Public Sub Button2_Click()
Dim d As TabPanel
TabPanel1.Children[0].Delete
TabPanel1[TabPanel1.Index].Delete

End
