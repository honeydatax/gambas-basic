' Gambas module file

Public Sub center(s As String, size As Integer)
 Print Chr$(27) & "[0;37;44m "; Space(size \ 2 - Len(s) \ 2); s 
  
  
End



Public Sub Main()
 Dim i As Integer
 For i = 0 To 16
   center(String$(i * 2, "*"), 80)
 Next
End
