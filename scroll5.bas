' Gambas module file

Public Sub Main()
Dim i As Integer
Dim n As Integer
Dim z As Integer
Dim msg As String
i = 80 \ 2
msg = "hello world"
msg = Space(i) & msg & Space(i)
n = Len(msg)
For z = i To 1 Step -1
  Print Chr$(27) & "[3;" & Trim(Str(i)) & "f"; Chr$(27) & "[0;37;44m "; Mid$(msg, n - i - z - 1, i - 1)
  Print Chr$(27) & "[3;1f"; Chr$(27) & "[0;37;44m "; Mid$(msg, z, i - 1)
  Sleep 1
Next

End
