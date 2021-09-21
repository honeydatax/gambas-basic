'-----------------------------------------------
'FMain.form
# Gambas Form File 3.0

{ Form Form
  MoveScaled(0,0,64,64)
  Background = Color.DarkMagenta
  { Menu3 Menu
    Text = ("list")
    { Menu4 Menu
      Text = ("list")
    }
  }
  { Menu1 Menu
    Text = ("add item")
    { Menu2 Menu
      Text = ("add item")
    }
  }
  { Menu5 Menu
    Text = ("edit")
    { Menu6 Menu
      Text = ("edit")
    }
  }
  { ListBox1 ListBox
    MoveScaled(1,1,62,62)
    Background = Color.DarkMagenta
    Foreground = Color.ButtonBackground
  }
  { TextArea1 TextArea
    MoveScaled(1,0,61,60)
    Visible = False
    Background = Color.DarkMagenta
    Foreground = Color.White
  }
}
'-----------------------------------------------
'FMain.class
' Gambas class file

'Gambas class file
Public p As Process
Public mm As Integer 
Public z As String[]
Public cc As String
Const sh As String = "reports.txt"
Public g As Integer
Const prg As String = "sqlite3"
Const editors As String = "mousepad"

Public Sub Form_Open()
  loads()
End

Public Sub ListBox1_Click()
  
  Dim t As File
  Dim b As File
  Dim commands As String
  Dim command As String
  Dim zz As String
  Dim a As String
  zz = z[ListBox1.Index]
 
  If InStr(zz, "|") > 0 Then zz = Replace(z[ListBox1.Index], "|", gb.Lf)
  
  zz = zz & gb.Lf & ";" & gb.Lf & ".quit"
  TextArea1.text = ""
  TextArea1.Visible = True
  ListBox1.Visible = False
  g = 1
  p = Shell prg For Read Write As "p"
  Print #p, zz

'Finally
'Catch
End

Public Sub Menu2_Click()
  TextArea1.Text = ""
  TextArea1.Visible = True
  ListBox1.Visible = False
  g = 0  
End

Public Sub Menu4_Click()
  Dim b As File
  Dim commands As String
  Dim command As String
  Dim zz As String
  TextArea1.Visible = False
  ListBox1.Visible = True
  
  command = cc
  If g = 1 Then Goto escape5
  zz = Replace(TextArea1.Text, gb.Lf, "|")
  b = Open command For Append
    Print #b, zz
  Close #b
    ListBox1.Add(zz)
    z.Add(zz)
    escape5:
    TextArea1.text = ""
End

Public Sub p_read()
  Dim a As String
  a = Read #Last, -256
  TextArea1.Text = TextArea1.Text & a & gb.Lf
End

Public Sub Menu6_Click()
  Shell editors & " " & cc Wait
  loads
End

Public Sub loads()
  Dim a As String
  Dim b As File
  Dim c As String
  Dim d As String
  Dim e As String[]
  Dim command As String
  mm = 0
  ListBox1.Clear()
  TextArea1.Visible = False
  ListBox1.Visible = True
  command = "/home/pi/sqlmenu/sqlmenu/menu.list"
  command = Args[1]

  cc = command
 g = 0 
  z = New String[]
  b = Open command For Input
  Do
    Line Input #b, a
      ListBox1.Add(a)
      z.Add(a)
  Loop Until Eof(b)
  Close #b  
  
  
End



