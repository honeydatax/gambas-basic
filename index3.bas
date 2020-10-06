' Gambas module file


Public Sub Main()
  Dim sss As String
  Dim ss As String[]
  Dim i As Integer
  Dim ii As Integer
  Dim s As String = "x86 80186 80286 80286 80386 80486"
  ss = Split(s, " ")
  i = ss.Count - 1
  For ii = 0 To i
    Print Chr$(27) & "[0;37;44m"; ii; " - "; ss[ii]
  Next
End
