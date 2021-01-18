'FMain.form-----------------------------------------
# Gambas Form File 3.0

{ Form Form
  MoveScaled(0,0,50,50)
  { TableView1 TableView
    MoveScaled(1,5,50,44)
    Background = &H0000FF&
    Foreground = &HFFFFFF&
  }
  { TextBox1 TextBox
    MoveScaled(2,1,15,3)
  }
}


'FMain.class--------------------------------------
' Gambas class file

Public ss As String[]
Public txt As TextBox
Public Sub _new()

End

Public Sub Form_Open()

Dim n As Integer
Dim nn As Integer
Dim start As Integer
txt = TextBox1
ss = New String[]
TableView1.Columns.Count = 26
TableView1.Rows.Count = 20
 For nn = 0 To 19
    For n = 0 To start + 25       
    TableView1[nn, n].Text = Chr(Asc("A") + n) & Str(nn)   
  Next
Next
End

Public Sub TableView1_Click()
TableView1.Edit(ss, True)
TableView1.EditWith(txt)
End
