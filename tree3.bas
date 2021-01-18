'FMain.form----------------------------------------
# Gambas Form File 3.0

{ Form Form
  MoveScaled(0,0,50,50)
  Background = &H0000FF&
  Foreground = &HFFFFFF&
  { Panel1 Panel
    MoveScaled(1,3,49,30)
    { Panel2 Panel
      MoveScaled(-1,1,49,43)
      { TreeView1 TreeView
        MoveScaled(1,3,48,42)
        Background = &H0000FF&
        Foreground = &HFFFFFF&
      }
    }
  }
}

'FMain.class---------------------------------------
' Gambas class file

Public idx As Integer

Public Sub _new()

End

Public Sub Form_Open()
Dim i As Integer
Dim p1 As New Picture(3, 3)
Dim root As String = "CPUS"
Dim ARM As String = "ARM"
Dim x86 As String = "x86"
Dim x8086 As String = "8086"
Dim x80186 As String = "80186"
Dim x80286 As String = "80286"
Dim x80386 As String = "80386"
Dim x80486 As String = "80486"
idx = 0
TreeView1.Add(root, root)
TreeView1.Add(ARM, ARM, p1, root)
TreeView1.Add(x86, x86, p1, root)
TreeView1.Add(x8086, x8086, p1, x86)
TreeView1.Add(x80186, x80186, p1, x86)
TreeView1.Add(x80286, x80286, p1, x86)
TreeView1.Add(x80386, x80386, p1, x86)
TreeView1.Add(x80486, x80486, p1, x86)
For i = 1 To 8
  TreeView1.Add(ARM & Str(i), ARM & " " & Str(i), p1, ARM)
Next
Form.Refresh()
End

Public Sub TreeView1_Click()
End

Public Sub TreeView1_Select()
End

Public Sub Button1_Click()

End
