' Gambas module file

Public Sub iprint()
  Print Chr$(27) & "[0;37;44m "; Str(Int(Rnd() * 50 + 1))
End

Public Sub Main()
 Dim i As Integer
 Randomize 1
   For i = 0 To 16
    iprint()
  Next
End
