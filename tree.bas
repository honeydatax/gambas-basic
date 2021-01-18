"FMain.form----------------------------------------
# Gambas Form File 3.0

{ Form Form
  MoveScaled(0,0,50,50)
  Background = &H0000FF&
  Foreground = &HFFFFFF&
  { Panel1 Panel'FMain.
    MoveScaled(1,3,49,30)
    { Panel2 Panel
      MoveScaled(-1,1,49,43)
      { TreeView1 TreeView
        MoveScaled(0,0,48,42)
        Background = &H0000FF&
        Foreground = &HFFFFFF&
      }
    }
  }
}



'FMain.class-------------------------------------
' Gambas class file

Public idx As Integer

Public Sub _new()

End

Public Sub Form_Open()
idx = 1
TreeView1.Add("root", "ROOT")
End

Public Sub TreeView1_Click()
End

Public Sub TreeView1_Select()
Dim p1 As New Picture(3, 3)
Dim stringf As String
stringf = TreeView1.Key
idx = idx + 1
TreeView1.Add("node" & Trim(Str(idx)), "node " & Trim(Str(idx)), p1, stringf)
End
