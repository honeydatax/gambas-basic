' Gambas module file

Public Sub Main()
  Dim i As Integer
  Dim f1 As File
  i = 0
  Do While i <> 1
    f1 = Open "/home/pi/state.log" For Append
    Print #f1, Date(); " "; Time()
    Close f1
    Print "*";
    Wait 60 * 15
  
  Loop
End
