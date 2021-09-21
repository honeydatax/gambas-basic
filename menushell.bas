'-----------------------------------------------
'Fmain.form
# Gambas Form File 3.0

{ Form Form
  MoveScaled(0,0,64,64)
  Background = Color.DarkMagenta
  { Menu1 Menu
    Text = ("add item")
    { Menu2 Menu
      Text = ("add item")
    }
  }
  { Menu3 Menu
    Text = ("edit")
    { Menu4 Menu
      Text = ("edit")
    }
  }
  { ListBox1 ListBox
    MoveScaled(1,1,62,62)
    Background = Color.DarkMagenta
    Foreground = Color.ButtonBackground
  }
}
'-----------------------------------------------
'Fmain.class
' Gambas class file

'Gambas class file
Public z As String[]
Public cc As String
Const prg As String = "mousepad"


Public Sub Form_Open()
  Dim a As String
  Dim b As File
  Dim c As String
  Dim d As String
  Dim e As String[]
  Dim command As String
  command = "/home/pi/menu/menu/menu.list"
  command = Args[1]
  cc = command
  ListBox1.Clear
  z = New String[]
  b = Open command For Input
  Do
    Line Input #b, a
    e = Split(a, "|")
    If InStr(a, "|") > 0 Then
      ListBox1.Add(e[0])
      z.Add(e[1])
    End If
  Loop Until Eof(b)
  Close #b
End

Public Sub ListBox1_Click()
  Print z.Count
  Print ListBox1.Count
  Shell (z[ListBox1.Index] & " 2> /dev/null")
Finally
Catch
End

Public Sub Menu2_Click()
  Dim b As File
  Dim commands As String
  Dim command As String
  Dim zz As String[]
  command = cc
  commands = InputBox("command to run?", "label|command")
  b = Open command For Append
    Print #b, commands
  Close #b
  If InStr(commands, "|") > 0 Then
    zz = Split(commands, "|")
    ListBox1.Add(zz[0])
    z.Add(zz[1])
  Endif
    
End

Public Sub Menu4_Click()
Shell prg & " " & cc Wait
Form_Open()  

End

