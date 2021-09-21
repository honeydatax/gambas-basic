'-------------------------------------------------
'FMain.form
# Gambas Form File 3.0

{ Form Form
  MoveScaled(0,0,64,64)
  Background = Color.DarkMagenta
  Foreground = Color.White
  Text = (" ")
  { TextArea1 TextArea
    MoveScaled(1,1,61,61)
    Background = Color.DarkMagenta
    Foreground = Color.White
  }
}
'-------------------------------------------------
'FMain.class
' Gambas class file

Public Sub form_Close()
  Dim f As File
  Dim command As String
  Dim msg As Integer
  msg = Message.Question("want to save " & Args[1], "ok", "no")
  If msg <> 1 Then Goto escape2
  command = Args[1]
  f = Open command For Output
    Print #f, TextArea1.Text
  Close #f
  TextArea1.Text = ""
  escape2:
End


Public Sub Form_Open()
  Dim a As File
  Dim command As String
  Dim lline As String
  Dim txt As String
  
  command = Args[1]
  Print command
  a = Open command For Input
    Do
      Line Input #a, lline
      txt = txt & lline & gb.Cr
    Loop Until Eof(a) 
   Close a
  TextArea1.Text = txt
  txt = ""
End
