'-----------------------------------------------
'Fmain.form
# Gambas Form File 3.0

{ Form Form
  MoveScaled(0,0,64,64)
  Background = Color.DarkMagenta
  Foreground = Color.White
  Text = ("picture build")
  { ImageView1 ImageView
    MoveScaled(0,0,16,12)
    Background = Color.DarkMagenta
    Foreground = Color.White
  }
  { ScrollBar1 ScrollBar
    MoveScaled(62,0,2,51)
    Background = Color.LightForeground
    Foreground = Color.LightForeground
  }
  { ScrollBar2 ScrollBar
    MoveScaled(1,51,60,2)
    Background = Color.LightGray
    Foreground = Color.LightForeground
  }
}
'-----------------------------------------------
'Fmain.class
' Gambas class file

Const Outputf As String = "out.png"
Public command As String
Public l As String[]
Public img As Image
Const runer As String = "curl "

Public Sub ImageView1_MouseUp()
  form_MouseUp()
End


Public Sub form_MouseUp()
  Dim f As File
  Dim s As String
  Dim ss As String
  Dim n As Integer
  Dim w As Float 
  Dim maxx As Integer
  l = New String[]
  
  inputBox("get url", "Url", command)
  s = ""
  Shell runer & command Wait To s
  f = Open User.Home & "/my.txt" For Create
    Print #f, s
  Close f
s = Replace(s, gb.cr, "")
s = Replace(s, Chr(12), "")
  l = Split(s, gb.Lf)
  s = ""
  For n = 0 To l.Count - 1
    ss = Trim(l[n])
    If ss <> "" Then s = s & ss & gb.Lf 
  Next
  
  ScrollBar1.MaxValue = 2000
  ScrollBar2.MaxValue = 600
  ImageView1.Image = New Image(ScrollBar2.MaxValue, ScrollBar1.MaxValue)
  ImageView1.Width = ScrollBar2.MaxValue
  ImageView1.Height = ScrollBar1.MaxValue
  Paint.Begin(ImageView1.Image)
  Paint.font = Font["free mono,12"]
  Paint.FillRect(0, 0, ScrollBar2.MaxValue, ScrollBar1.MaxValue, Color.DarkMagenta)
      Paint.DrawRichText(s, 0, 0, ScrollBar2.MaxValue, ScrollBar1.MaxValue, 4)
  Paint.End
  
  'debug
      
  
  
  
End
Public Sub Form_Open()
  command = "http://localhost:8080"
End


Public Sub ScrollBar1_Change()
  ImageView1.Y = - ScrollBar1.Value
End

Public Sub ScrollBar2_Change()
  ImageView1.X = - ScrollBar2.Value
End





