'FMain.form-----------------------------------------
# Gambas Form File 3.0

{ Form Form
  MoveScaled(0,0,50,50)
  Background = &H0000FF&
  ToolTip = ("hello")
}


'FMain.class------------------------------------------
' Gambas class file

Public Sub msgb(s As String)
  Message(s, "ok")
  
  
End


Public Sub _new()

End

Public Sub Form_Open()
  msgb("open")
End

Public Sub Form_Close()
  msgb("colse")
  

End

Public Sub Form_DblClick()
  msgb("colse")
End


Public Sub Form_Enter()

  msgb("enter")

End

Public Sub Form_KeyPress()

  msgb("key")

End
