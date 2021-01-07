'class1.class----------------------------------
' Gambas class file

Export

Public s As String

Public Sub report()
  
  Print s
  
End

'MMain.modele-----------------------------------
' Gambas module file

Public Sub Main()
Dim c1 As Class1
c1 = New Class1
c1.s = "hello world"
c1.report()
End
