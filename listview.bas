'FMain.form-----------------------------------------
# Gambas Form File 3.0

{ Form Form
  MoveScaled(0,0,50,50)
  { ListView1 ListView
    MoveScaled(1,1,38,47)
  }
}


'FMain.class---------------------------------------
' Gambas class file

Public Sub _new()

End

Public Sub Form_Open()
Dim p1 As New Picture(4, 4)
Dim n As Integer
Dim nn As Integer
Dim start As Integer
start = Asc("A")
For n = start To start + 23
   ListView1.Add(Chr$(n), Chr$(n))
  For nn = 0 To 20
       ListView1.Add(Chr$(n) & Str(nn), Chr$(n) & Str(nn), p1, Chr$(n))
  Next
Next
End

Public Sub ListView1_Click()

  

End
