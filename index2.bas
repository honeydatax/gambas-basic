' Gambas module file


Public Sub Main()
  Dim sss As String
  Dim ss As String[]
  Dim i As Integer
  Dim s As String = "x86 80186 80286 80286 80386 80486"
  ss = Split(s, " ")
  i = ss.Count - 1
  For Each sss In ss.Reverse()
    Print Chr$(27) & "[0;37;44m"; i; " - "; sss
    Dec i
  Next
End

