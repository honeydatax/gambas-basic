' Gambas module file

Public Sub Main()
  Dim fs1 As File
  fs1 = Open "/home/pi/gambas/my.txt" For Write Create    
  Print #fs1, "hello world\n"
  Close #fs1
End


