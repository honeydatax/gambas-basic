' Gambas module file

Public Sub Main()
  Dim s As Socket
  Dim i As Integer
  Dim ss As String
  Dim sss As String
  s = New Socket
  i = 80
  ss = "localhost"
  If Args.Count > 1 Then ss = Args[1]
  If Args.Count > 2 Then 
    sss = Args[2]
    i = Val(sss)
  Endif
  s.Connect(ss, i)
  Print ss, i
  Do While (s.Status <> Net.Connected) And (s.Status > 0)
    Wait 0.1
  Loop
   
  sss = "GET / HTTP/1.0\n\n"   
  Print sss
  Write #s, sss, Len(sss)
  Do While Lof(s) = 0
    Wait 0.1
  Loop
  Read #s, sss, Lof(s)
  Print sss
  End
