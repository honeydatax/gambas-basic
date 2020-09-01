Public Sub Main()
  Dim sss As String
  Dim ss As String[]
  Dim s As String = "x86 80186 80286 80286 80386 80486\n"
  ss = Split(s, " ")
  For Each sss In ss 
    Print sss 
  Next
End
