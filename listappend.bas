' Gambas module file

Public lists1 As New String[]

Public Sub report(s As String)
  Print Chr$(27) & "[0;37;44m "; String(10, "-")
  Print Chr$(27) & "[0;37;44m "; s
  
End



Public Sub iprint()
Dim i As Integer
For i = 0 To lists1.Count - 1 
  Print Chr$(27) & "[0;37;44m "; lists1[i]
Next
End

Public Sub Main()
Dim s As String
s = "8086,80186,80286,80386,80486"
lists1.Clear()
lists1 = Split(s, ",")
lists1.Add(String(10, "-"), 3)
iprint()
End
