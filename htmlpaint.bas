'--------------------------------------------------
'FMain.form
# Gambas Form File 3.0

{ Form Form
  MoveScaled(0,0,64,64)
  Background = Color.DarkMagenta
  Foreground = Color.White
  Text = ("html view")
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
'--------------------------------------------------
'FMain.form
' Gambas class file

Const Outputf As String = "out.png"
Public command As String
Public l As String[]
Public img As Image
Const runer As String = "img2pdf out.png -o out.pdf --pagesize 210mmx297mm"
Const nbb As String = "<\\B>"
Const nb As String = "<\\b>"
Const ni As String = "<\\i>"
Const nii As String = "<\\I>"
Const p As String = "<p>"
Const pp As String = "<P>"
Const np As String = "<\\p>"
Const npp As String = "<\\P>"
Const nli As String = "<\\li>"
Const nlo As String = "<\\lo>"
Const br As String = "<br>"
Const brbr As String = "<BR>"
Const li As String = "<li>"
Const lo As String = "<lo>"
Const jj As String = "\""

Public Sub Form_Open()
  command = "http://localhost:8080"  
End

Public Sub ImageView1_MouseUp()
    Form_MouseUp()
End

Public Sub Form_MouseUp()
  Dim f As File
  Dim ss As String
  Dim s As String
  Dim xxx As Float
  Dim yyy As Float
  Dim n As Integer
  Dim nn As Integer
  Dim w As Float 
  Dim maxx As Integer
  Dim bolds As Integer
  Dim italics As Integer
  Dim leters As Integer
  Dim sss As String[]
  sss = New String[]
  l = New String[]
  Print jj
  
  command = inputbox("url", "url", command)
  Shell "curl " & command Wait To s  
  s = Replace(s, gb.cr, "")
  s = Replace(s, gb.Lf, "")
  s = Replace(s, "<", gb.Lf & "<")
  s = Replace(s, ">", ">" & gb.Lf)
  l = Split(s, gb.Lf)
  For n = 0 To l.Count - 1
      s = l[n]
      If (Len(s) + 2) * 16 > maxx Then maxx = (Len(s) + 2) * 16 
  Next
  

  xxx = 15
  yyy = 15
  leters = 12
  ScrollBar1.MaxValue = (l.Count + 2) * 16
  ScrollBar2.MaxValue = maxx + 16
  ImageView1.Image = New Image(ScrollBar2.MaxValue, ScrollBar1.MaxValue)
  ImageView1.Width = ScrollBar2.MaxValue
  ImageView1.Height = ScrollBar1.MaxValue
  Paint.Begin(ImageView1.Image)
  Paint.FillRect(0, 0, ScrollBar2.MaxValue, ScrollBar1.MaxValue, Color.DarkMagenta)
  For n = 0 To l.Count - 1
    If Asc(l[n]) = Asc("<") Then
      If len(l[n]) > 3 Then
        ss = Mid(l[n], 1, 3)
        If ss = "<a " Then
          sss = Split(l[n], "=")
          ss = ""
          If sss.count - 2 < 1 Then ss = sss[1]
          For nn = 0 To sss.count - 2
            If InStr(sss[nn], "href=") Then 
              ss = sss[nn + 1]
            End If
          Next
         
          If Trim(ss) <> "" Then 
            sss = Split(ss, jj)  
            If sss.Count > 1 Then 
              
              Paint.font = Font["free mono," & Trim(Str(leters))]
              Paint.Color(Color.White)
              If Trim(sss[1]) <> "" Then Paint.DrawText(sss[1], xxx, yyy, Len(sss[1]) * (leters + 2), leters + 4, 4)
              xxx = Len(sss[1]) * (leters + 2)
              Paint.Color(Color.Black)
            End If
          Endif 
        Endif 
      Endif
      If l[n] = "<b>" Or l[n] = "<B>" Then bolds = 1
      If l[n] = nb Or l[n] = nbb Then bolds = 0
      If l[n] = "<i>" Or l[n] = "<I>" Then italics = 1
      If l[n] = ni Or l[n] = nii Then italics = 0
      If l[n] = br Or l[n] = brbr Or l[n] = p Or l[n] = pp Or l[n] = np Or l[n] = npp Or l[n] = lo Or l[n] = li Or l[n] = nli Or l[n] = nlo Then 
        xxx = 15
        yyy = yyy + leters + 4
      Endif
    Else
      Paint.font = Font["free mono," & Trim(Str(leters))]
      If Trim(l[n]) <> "" Then Paint.DrawText(l[n], xxx, yyy, Len(l[n]) * (leters + 2), leters + 4, 0)
      xxx = Len(l[n]) * (leters + 2)
    End If 
  Next
  Paint.End
  
  'debug
    
    
End


Public Sub ScrollBar1_Change()
  ImageView1.Y = - ScrollBar1.Value
End

Public Sub ScrollBar2_Change()
  ImageView1.X = - ScrollBar2.Value
End




