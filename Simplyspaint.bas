'-------------------------------------------------
'FMain.form
# Gambas Form File 3.0

{ Form Form
  MoveScaled(0,0,64,64)
  Background = Color.DarkMagenta
  Foreground = Color.White
  { Menu2 Menu
    Text = ("menu")
    { Menu1 Menu
      Text = ("color")
    }
    { Menu3 Menu
      Text = ("rectangle")
    }
    { Menu4 Menu
      Text = ("fill rect")
    }
    { Menu5 Menu
      Text = ("circle")
    }
    { Menu6 Menu
      Text = ("line")
    }
    { Menu8 Menu
      Text = ("point")
    }
    { Menu7 Menu
      Text = ("save")
    }
  }
  { ImageView1 ImageView
    MoveScaled(1,1,60,55)
    Mouse = Mouse.Cross
  }
  { ColorChooser1 ColorChooser
    MoveScaled(1,6,51,33)
    Visible = False
  }
}
'-------------------------------------------------
'FMain.form
' Gambas class file

Public xx As Integer
Public yy As Integer
Public colors As Integer
Public funct As Integer
Public s As String

Public Sub ImageView1_MouseDown()
  xx = Mouse.x
  yy = Mouse.y
End

Public Sub ImageView1_Mouseup()
Dim m As Mouse
Dim x As Integer
Dim y As Integer
paint.Begin(ImageView1.Image)
  Paint.Color(colors)
  x = Mouse.X
  y = Mouse.y
If funct = 0 Then Paint.FillRect(xx, yy, x - xx, y - yy, colors) 
Paint.End
Draw.Begin(ImageView1.Image)
  Draw.Foreground = colors
If funct = 1 Then 
  Draw.Rect(xx, yy, x - xx, y - yy)
End If
If funct = 2 Then 
  Draw.Ellipse(xx, yy, x - xx, y - yy)
End If
If funct = 3 Then 
  Draw.Line(xx, yy, x, y)
End If
If funct = 4 Then 
  Draw.Line(x, y, x + 1, y + 1)
End If

Draw.End

ImageView1.Refresh()
End

Public Sub Form_Open()
ImageView1.Image = New Image(ImageView1.Width, ImageView1.Height, color.darkmagenta)
paint.Begin(ImageView1.Image)
  Paint.FillRect(0, 0, ImageView1.Width, ImageView1.Height, Color.DarkMagenta)
  Paint.Color(Color.Black)
Paint.End  
funct = 1
ImageView1.Mouse = 3
s = "my.png"
End

Public Sub Menu1_Click()

  ColorChooser1.Visible = Not ColorChooser1.Visible

End

Public Sub ColorChooser1_Change()

  colors = ColorChooser1.Value

End

Public Sub Menu3_Click()

  funct = 1
  

End

Public Sub Menu4_Click()

  funct = 0

End

Public Sub Menu5_Click()

  funct = 2

End

Public Sub Menu6_Click()

  funct = 3

End

Public Sub Menu7_Click()
  
  s = InputBox("write image", "write image", s)
   ImageView1.Image.Save(user.Home & "/" & s)  

End

Public Sub Menu8_Click()

  funct = 4

End
