' Gambas module file

Public Function finds(l1 As String[], s1 As String) As Integer
   Dim i As Integer
   i = -1
   i = l1.Find(s1)
  Return i  
End


Public Sub Main()
  Dim sss As String
  Dim ss As String[]
  Dim s As String = "x86 80186 80286 80286 80386 80486\n"
  ss = Split(s, " ")
  For Each sss In ss 
    Print Chr$(27) & "[0;37;44m"; sss 
  Next
  Print Chr$(27) & "[0;37;44m"; finds(ss, "80286")
End
