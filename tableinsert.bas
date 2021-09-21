'--------------------------------------------------
'FMain.form
# Gambas Form File 3.0

{ Form Form
  MoveScaled(0,0,64,64)
  Background = Color.DarkMagenta
  Foreground = Color.White
  { Menu2 Menu
    Text = ("add cell")
    { Menu1 Menu
      Text = ("add")
    }
  }
  { TableView1 TableView
    MoveScaled(2,1,61,60)
    Background = Color.DarkMagenta
    Foreground = Color.White
  }
}
'--------------------------------------------------
'FMain.class
' Gambas class file

Public ff As String

Public Sub TableView1_Click()
Dim ss As String[]
Dim s As String[]
s = New String[]
ss = New String[]
TableView1.Edit

End
Public Sub TableView1_Save(Row As Integer, Column As Integer, Value As String)
Dim ss As String[]
Dim s As String[]
s = New String[]
ss = New String[]
TableView1[Row, Column].Text = Value
End 


Public Sub Form_Open()
  Dim d As Integer
  Dim counter As Integer
  Dim f As File
  Dim s As String
  Dim command As String
  Dim ss As String[]
  Dim b As Integer
  Dim i As Integer
  ss = New String[]
  b = 0
  'command = "/home/pi/cvs/cvsfile/my.cvs"
  command = Trim(Args[1])
  If Trim(command) = "" Then System()
  If Not Exist(command) Then Goto escape
  ff = command
  f = Open command For Input
  Do
    Line Input #f, s
    ss = Split(s, "|")
    If b = 0 Then 
      d = Val(InputBox("many colums?", "colums", Trim(Str(ss.count))))
      If d < 1 Then d = 1
      TableView1.Columns.Count = d
    End If 
    b = 1
    TableView1.Rows.Count = counter + 1
    For i = 0 To ss.Count - 1
      If ss.Count > d Then TableView1.Columns.Count = ss.count - 1
      TableView1[counter, i].Text = ss[i]
    Next
  counter = counter + 1
  Loop Until Eof(f)
  Close #f
  escape:

End
Public Sub form_Close()
  Dim x As Integer
  Dim y As Integer
  Dim s As String
  Dim ss As String
  Dim msg As Integer
  Dim f As File
  If Trim(ff) = "" Then Goto escapes2
  msg = Message.Question("save it?", "ok", "no")
  If msg <> 1 Then Goto escapes2
  f = Open ff For Output  
  
  For y = 0 To TableView1.Rows.Count - 1
    s = ""
    For x = 0 To TableView1.Columns.Count - 1
      If x > 0 Then s = s & "|"
      s = s & TableView1[y, x].Text
    Next
    Print #f, s
  Next
Close #f
escapes2:  
End

Public Sub Menu1_Click()

    TableView1.Rows.Count = TableView1.Rows.Count + 1

End


