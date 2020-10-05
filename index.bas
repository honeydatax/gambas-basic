' Gambas module file


Public Sub Main()
  Dim sss As String
  Dim ss As String[]
  Dim i As Integer
  Dim s As String = "x86 80186 80286 80286 80386 80486\n"
  ss = Split(s, " ")
  For Each sss In ss 
    Print Chr$(27) & "[0;37;44m"; i; " - "; sss
    
        
    Inc i
  Next
End
