'FMain.form---------------------------------------

# Gambas Form File 3.0

{ Form Form
  MoveScaled(0,0,50,50)
  { ColumnView1 ColumnView
    MoveScaled(2,1,47,48)
  }
}



'FMain.class--------------------------------------
' Gambas class file

Public bt As Button


Public Sub Form_Open()
Dim p1 As New Picture(4, 4)
Dim n As Integer
Dim nn As Integer
Dim start As Integer
start = Asc("A")
columnView1.Columns.Count = 26
For n = start To start + 26
   
   columnView1.Add(Chr$(n), Chr$(n))
  For nn = 0 To 20
       columnView1.Add(Chr$(n) & Str(nn), Chr$(n) & Str(nn), p1, Chr$(n))
  Next
Next
End
