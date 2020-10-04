' Gambas module file

Public Sub iprint(list1 As Integer[])
  Dim i As Integer 
  For Each i In list1
   Print Chr$(27) & "[0;37;44m "; i  
  Next
End 
Public Sub add_list(list1 As Integer[])
  Dim i As Integer
  For i = 0 To 16
    list1.Add(Int(Rnd * 50 + 1), i)
  Next
  list1.Sort(0)
End

Public Sub Main()
Dim l1 As New Integer[]
 l1.Clear()
 Randomize 1
 add_list(l1)
 iprint(l1)
End
