'FMain.form------------------------------------------
# Gambas Form File 3.0

{ Form Form
  MoveScaled(0,0,50,50)
  { Menu3 Menu
    Text = ("menu")
    { Menu1 Menu
      Action = "Menus1()"
      Text = ("open")
    }
    { Menu2 Menu
      Action = "menus2"
      Text = ("save")
    }
  }
  { TextBox1 TextBox
    MoveScaled(1,0,49,4)
    Text = ("/home/pi/gambas/my.txt")
  }
  { TextArea1 TextArea
    MoveScaled(1,6,45,40)
  }
}

# Gambas Action File 3.0

{ Actions
  { Action Menus1()
    Text = "open"
    Shortcut = ""
  }
  { Action menus2
    Text = "save"
    Shortcut = ""
  }
}



'FMain.class------------------------------------------
' Gambas class file

Public Sub _new()

End

Public Sub Menus2()
Dim f1 As File
Dim s As String
f1 = Open TextBox1.Text For Output Create
  Print #f1, TextArea1.Text
Close #f1
FMain.Title = "save"
End


Public Sub Menus1()
Dim f1 As File
Dim s As String
Dim i As Integer
TextArea1.Text = ""
i = 0
f1 = Open TextBox1.Text For Input
While (Not (f1.EndOfFile))
  i = i + 1
  Input #f1, s
  TextArea1.Text = TextArea1.Text & s
Wend
Close #f1
FMain.Title = "lines " & Str(i)
End

Public Sub Form_Open()
End

Public Sub Form_Menu()

End

Public Sub Menu1_Click()
Menus1()
  

End

Public Sub Menu2_Click()
Menus2()
  

End
