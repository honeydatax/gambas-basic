' Gambas module file


Public Sub Main()
  Dim sss As String
  Dim i As Integer
  sss = "#word00 #word01 #word02 \n #word03 #word01 #word04\n"
  Print sss
  sss = Replace$(sss, "#word00", "hello")
  sss = Replace$(sss, "#word01", ",")
  sss = Replace$(sss, "#word02", "world")
  sss = Replace$(sss, "#word03", "hi")
  sss = Replace$(sss, "#word04", "there")
  Print sss
End
