' Gambas module file

Public Sub Main()
Dim i As Integer
Dim n As Integer
Dim z As Integer
Dim msg As String
i = 80
msg = "hello world"
msg = Space(i) & msg & Space(i)
n = Len(msg)
For z = 1 To n - i
  Print Chr$(27) & "[0;37;44m "; Mid$(msg, z, i - 1)
  
  Sleep 1
Next

End
