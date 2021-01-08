' Gambas module file

Public Sub Main()
  Dim s As Socket
  Dim ii As Integer
  Dim i As Integer
  Dim ss As String
  Dim sss As String
  Dim ssss As String
  s = New Socket
  i = 80
  ss = "127.0.0.1"
  If Args.Count > 1 Then ss = Args[1]
  If Args.Count > 2 Then 
    sss = Args[2]
    i = Val(sss)
  Endif
  ss = Replace(ss, "localhost", "127.0.0.1")
  ss = Replace(ss, "LOCALHOST", "127.0.0.1")
  ss = Replace(ss, "HTTP:", "")
  ss = Replace(ss, "http:", "")
  ss = Replace(ss, "//", "")
  ssss = ""
  ii = InStr(ss, "/")
  If ii > 0 Then
    ssss = Mid(ss, ii + 1)
    ss = Mid(ss, 1, ii - 1)
  Endif
  ss = Replace(ss, "/", "")
  s.Connect(ss, i)
  Do While (s.Status <> 7) And (s.Status > 0)
    Wait 0.1
  Loop
  sss = "GET /" & ssss & " HTTP/1.0\n\n"   
  If s.Status <> 7 Then 
    Print "error"
    Quit
  Endif
  Write #s, sss, Len(sss)
  Do While Lof(s) = 0
    Wait 0.1
  Loop
  Read #s, sss, Lof(s)
  Close s
  ii = InStr(sss, gb.CrLf & gb.Crlf)
  If ii > 0 Then
    sss = Mid(sss, ii + 4)
  Endif
  Print sss
  End
