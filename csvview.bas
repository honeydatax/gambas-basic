'-------------------------------------------------
'FMain.form

# Gambas Form File 3.0

{ Form Form
  MoveScaled(0,0,64,64)
  Background = Color.DarkMagenta
  Foreground = Color.White
  { GridView1 GridView
    MoveScaled(1,0,61,60)
    Background = Color.DarkMagenta
    Foreground = Color.White
  }
}
'-------------------------------------------------
'FMain.form
' Gambas class file


Public Sub Form_Open()
  Dim f As File
  Dim command As String
  Dim s As String
  Dim ss As String[]
  Dim n As Integer
  Dim b As Integer
  Dim counter As Integer
  b = 0
  command = Args[1]
  ss = New String[]
  f = Open command For Input
  Do
    Line Input #f, s
    ss = Split(s, ",")
    If b = 0 Then GridView1.Columns.Count = ss.Count
    GridView1.rows.Count = counter + 1
    b = 1
    For n = 0 To ss.Count - 1
      GridView1[counter, n].Text = ss[n]
    Next
    counter = counter + 1
  Loop Until Eof(f)
  Close #f

End
