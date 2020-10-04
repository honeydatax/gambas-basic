' Gambas module file

Public Sub pprint(f As Float)
  Dim s As String
  Dim i As Integer
  s = Trim(Str(f)) 
  If InStr(s, ".") > -1 Then
    s = s + "00"
    Else
      s = s + ".00"
  Endif
  i = InStr(s, ".") + 2
  s = Left(s, i)
  s = Space$(10) & s
  s = Right(s, 10)
 Print Chr$(27) & "[0;37;44m"; "$"; s
End


Public Sub Main()
  Dim i As Integer
  Randomize 1
  For i = 0 To 16
    pprint(Rnd() * 1000 - 500)
  Next
End
