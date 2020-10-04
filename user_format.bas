' Gambas module file

Public Sub pprint(f As Float)
  Dim s As String
  Dim i As Integer
  s = Trim(Str(f))
  If InStr(s, ".") > -1 Then
     s = s & "00"
    Else
     s = s & "00" 
  Endif    
  i = InStr(s, ".") + 2
  If f > 0 Then Print Chr$(27) & "[0;37;44m "; "+";
  Print Chr$(27) & "[0;37;44m "; Left(s, i)
End




Public Sub Main()
  Dim f As Float
  Dim i As Integer
   Randomize 1
   For i = 0 To 16
     pprint(Rnd() * 1000 - 500.00)
   Next
   
End
