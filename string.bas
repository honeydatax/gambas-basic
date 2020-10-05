' Gambas module file

Public Sub Main()
Dim i As Integer
For i = 1 To 16 
  Print Chr$(27) & "[0;37;44m"; String(10, "_"); 
  If i < 10 Then Print Chr$(27) & "[0;37;44m"; "0"; 
  Print Chr$(27) & "[0;37;44m"; i; String(10, "_")
Next

End
