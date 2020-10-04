' Gambas module file

Public Sub iprint()
  Dim i As Integer
  Print Chr$(27) & "[0;37;44m ";
  For i = 0 To 16
    Print Int(Rnd() * 9);
  Next
  Print
End


Public Sub Main()
  Dim i As Integer
  For i = 0 To 16
   iprint() 
  Next
   
End
