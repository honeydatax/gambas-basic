' Gambas module file

Public Sub Main()
  Dim i As Integer
  
  i = 0
  Shell "ifconfig"
  Shell "/bin/sh -c 'python -m SimpleHTTPServer 8080' &"
  Do While i <> 1
    Print "keep alive"
    Wait 20
  Loop
End
