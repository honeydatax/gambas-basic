' Gambas module file

Public Sub tleft(s As String, size As Integer)
  Dim s1 As String
  s1 = s
  s1 = s1 & Space$(Abs(size - Len(s1)))
  s1 = Left$(s1, size)
  Print Chr$(27) & "[0;37;44m "; s1; "|";
End



Public Sub Main()
Dim i As Integer
Dim ii As Integer
 For i = 0 To 16
   For ii = 0 To 4
     tleft(Str(i * 5 + ii), 8)
   Next
   Print
 Next
End
