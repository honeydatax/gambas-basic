' Gambas module file

Public Sub Main()
Dim i As Integer
Dim s As String
Dim s1 As New String[]
For i = 0 To 16
  s1.Add(String(10, "*") & Str(i) & String(10, "*"))
Next

For Each s In s1.Reverse()
  Print Chr$(27) & "[0;37;44m"; s
Next
  

exits:

End

