' Gambas module file

Public Sub Main()
Dim i As Integer
i = 0
Do
  Print Chr$(27) & "[3;1f"; Chr$(27) & "[0;37;44m"; Date(); "  "; Time(); Space(10)  
  Sleep 1
   
Loop

exits:

End

