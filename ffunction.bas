' Gambas module file

Public Function mul(a As Float, b As Float) As Float
  Return a * b 
End

Public Sub nprint(a As Integer, b As Integer)
  Print Chr$(27) & "[0;37;44m "; a; "X"; b; "="; mul(a, b)   
  
End


Public Sub Main()
 Dim i As Integer
 For i = 0 To 16
   nprint(8, i)
 Next
End
