' Gambas module file

Public lists1 As New Integer[]
Public lists2 As New Integer[]

Public Sub reverselis()
  Dim i As Integer
  For i = 0 To lists1.Count - 1
   lists2.add(lists1[lists1.Count - i - 1])
  Next  
  
End


Public Sub iprint()
Dim i As Integer
Dim c As Integer = 0
For i = 0 To lists1.Count - 1 
  Print Chr$(27) & "[0;37;44m "; lists2[i]
Next
End

Public Sub Main()
lists1.Add(8086)
 lists1.Add(80186)
 lists1.Add(80286)
 lists1.Add(80386)
 lists1.Add(80486)
reverselis()

iprint()
End
