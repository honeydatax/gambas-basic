' Gambas module file

Public lists1 As New Integer[]


Public Sub iprint()
Dim i As Integer
Dim c As Integer = 0
For i = 0 To lists1.Count - 1 
  c = c + lists1[i]
  Print Chr$(27) & "[0;37;44m "; lists1[i]; " = "; c
Next
End

Public Sub Main()
lists1.Add(8086)
 lists1.Add(80186)
 lists1.Add(80286)
 lists1.Add(80386)
 lists1.Add(80486)
iprint()
End
