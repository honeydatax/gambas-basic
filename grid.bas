'FMain.form-----------------------------------------
# Gambas Form File 3.0

{ Form Form
  MoveScaled(0,0,50,50)
  { GridView1 GridView
    MoveScaled(1,1,49,49)
  }
}


'FMain.class----------------------------------------
' Gambas class file

Public Sub _new()

End

Public Sub Form_Open()
Dim n As Integer
Dim ss As String[]
Dim nn As Integer
Dim start As Integer
GridView1.Columns.Count = 26
GridView1.Rows.Count = 20
ss = New String[]
 For nn = 0 To 19
    For n = 0 To start + 25       
    GridView1[nn, n].Text = Chr(Asc("A") + n) & Str(nn)   
  Next
Next
End


