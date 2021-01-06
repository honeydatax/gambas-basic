' Gambas module file

Public Sub Main()
  Dim n As Integer
  Dim starts As Integer 
  Dim endss As Integer
  Dim ssstring As String
  Dim ssstring1 As String
  Dim j As String
  j = "#!var"
  Print "enter start?"
  Input starts 
  Print "enter end?"
  Input endss
  Print j
  Print "var To include In you vars"
  Line Input ssstring
  ssstring = Replace(ssstring, "\\n", Chr(13))
  ssstring = Replace(ssstring, "\\r", Chr(10))
  For n = starts To endss
    ssstring1 = Replace(ssstring, j, Str(n))
    Print ssstring1
  Next 
End
