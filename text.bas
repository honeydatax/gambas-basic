' Gambas module file

Public Sub iprint(s As String, size As Integer)
  Print Chr$(27) & "[0;37;44m "; String$(size, s); ">"
End



Public Sub Main()
Dim i As Integer
 For i = 0 To 16
  iprint("-", i)
 Next
End



