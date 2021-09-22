' Gambas module file

Public Sub Main()
Dim $bPlay As Boolean
Dim $hAudio As MediaControl
Dim $hConv As MediaControl
Dim $hPlayer As MediaPipeline
Dim $hOutput As MediaControl
Dim $hFilter As MediaControl
Dim $hEncoder As MediaControl
Dim f As Integer
Dim v As Float
Dim t As Float
f = 1500
v = 10
t = 2
If Args[1] <> "" Then  
  f = Val(Trim(Args[1]))
Endif
If Args[2] <> "" Then  
  t = Val(Trim(Args[2]))
Endif
If Args[3] <> "" Then  
  v = Val(Trim(Args[3]))
Endif
  $hPlayer = New MediaPipeline As "Pipeline"
  $hAudio = New MediaControl($hPlayer, "audiotestsrc")
  $hAudio["is-live"] = True
  f = (Log(f) - Log(20)) / (Log(20000) - Log(20)) * 1000
  $hAudio["freq"] = (Exp(Log(20) + (Log(20000) - Log(20)) * f / 1000))
  $hAudio["volume"] = v
  $hAudio["wave"] = 0
  $hConv = New MediaControl($hPlayer, "audioconvert")
  $hOutput = New MediaControl($hPlayer, "autoaudiosink")
  $hFilter = New MediaControl($hPlayer, "audio/x-raw,channels=2,rate=48000")
  Media.Link($hAudio, $hFilter, $hConv, $hOutput)
  $hPlayer.Play
  Sleep t
  $hPlayer.Stop
End
