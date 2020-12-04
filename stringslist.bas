' Gambas module file

Public lists1 As New String[]


Public Sub adds(s As String)
  lists1.Add(s)
End

Public Function getn() As String
   Return Str(Int(Rnd() * 50 + 1))
End



Public Sub iprint()
Dim i As Integer
For i = 0 To lists1.Count - 1 
  Print Chr$(27) & "[0;37;44m "; lists1[i]
Next
End

Public Sub Main()
 Dim i As Integer
 Randomize 1
 lists1.Clear()
   For i = 0 To 16
    adds(getn())
  Next
  iprint()
End
