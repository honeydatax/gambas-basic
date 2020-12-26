' Gambas module file

  Public filenames As String
  Public filepath As String
 Public sss As String
  Public s As String[] = New String[]
  Public ss As String
  Public n As Integer
  Public c As String
  Public ii As Integer
  Public i As Integer
  Public keycount As Integer
  Public varscount As Integer
  Public keywords As String[] = New String[]
  Public par As Integer[] = New String[]
  Public labelss As String[] = New String[]
  Public labeladdress As Integer[] = New Integer[]
  Public labelstate As Integer[] = New Integer[]
  Public labelindex As Integer
  Public vars As String[] = New String[]
  Public errorss As Integer
  Public errorssi As Integer
  Public parcount As Integer
  Public par1 As String
  Public vvv As String
  Public t1 As String
  Public tt1 As String
  Public t As String
  Public tt As String
  Public iii As Integer
  Public aa As Integer
  Public aaa As Integer
  Public bb As Integer
  Public bbb As Integer
  Public bbb1 As Integer
  Public bbb2 As Integer
  Public bbb3 As Integer
  Public bbb4 As Integer
  Public bbb5 As Integer
  Public bbb6 As Integer
  Public tc As String
  Public tc1 As String
  Public tc2 As String
  Public tc3 As String
  Public tc4 As String
  Public tc5 As String
  Public tc6 As String
  Public forvar As Integer[] = New Integer[]
  Public forfrom As Integer[] = New Integer[]
  Public forinto As Integer[] = New Integer[]
  Public forstep As Integer[] = New Integer[]
  Public foraddress As Integer[] = New Integer[]
  Public forcount As Integer
  Public varstype As Integer[] = New Integer[]
  Public line11 As Integer[] = New Integer[]
  Public labeldefined As Integer[] = New Integer[]
  Public debug As String
  Public rtxt As String[] = New String[]
  Public ts As Integer
  Public fi As Long
  Public fn As Float
Private Sub addkey(name As String, ppar As Integer)

    keywords.Add(name)
    par.Add(ppar)
    keycount = keycount + 1

End Sub

Private Function findvar(name As String) As Integer
  Dim aaaaaa As Integer
  aaa = -1
  If varscount > 0 Then 
    For aaaaaa = 0 To varscount - 1
      If vars[aaaaaa] = name Then
        aaa = aaaaaa
        Goto findvarexit
      End If
    Next
  End If 
  findvarexit:
  Return aaa
End Function

Private Function addvar(name As String, types As Integer, line1 As Integer) As Integer
  vars.Add(name)
  varstype.Add(types)
  line11.Add(line1)
  varscount = varscount + 1
  Return varscount
End Function

Private Sub addcode(name As String)

    t1 = t1 & name & Chr(13) & Chr(10)

End Sub

Private Sub addhead(name As String)

    tt1 = tt1 & name & Chr(13) & Chr(10)

End Sub
Private Sub addbody(name As String)

    t = t & name & Chr(13) & Chr(10)

End Sub

Private Sub addtail(name As String)

    tt = tt & name & Chr(13) & Chr(10)

End Sub

Private Function addlabel(name As String, state As Integer, address As Integer, definer As Integer) As Integer
  labelss.add(name)
  labeladdress.add(address)
  labelstate.Add(state)
  labeldefined.add(definer)
  labelindex = labelindex + 1
  Return labelindex
End Function

Private Function findlabel(name As String) As Integer
Dim aaaaaa As Integer
  aaa = -1
  If labelindex > 0 Then 
    For aaaaaa = 0 To labelindex - 1
      If labelss[aaaaaa] = name Then
        aaa = aaaaaa
        Goto findlabelexit
      End If
    Next
  End If 
  findlabelexit:
  Return aaa
End Function

Private Function findstate() As Integer
Dim aaaaaa As Integer
  aaa = -1
  If labelindex > 0 Then 
    For aaaaaa = 0 To labelindex - 1
      If labelstate[aaaaaa] = 0 Then
        aaa = aaaaaa
        Goto findstateexit
      End If
    Next
  End If 
  findstateexit:
  Return aaa
End Function

Private Function addfor(addresss As Integer, forvars As Integer, forfroms As Integer, forintos As Integer, forsteps As Integer) As Integer
  forvar.Add(forvars)
  foraddress.Add(addresss)
  forfrom.Add(forfroms)
  forinto.Add(forintos)
  forstep.Add(forsteps)
  forcount = forcount + 1
  Return forcount
End Function

Private Sub clearbody()
Dim ffile1 As File
    labelindex = 0
    varscount = 0
    forcount = 0
    errorss = 0


    t = t1
    tt = tt1

    ts = 1
   
c = ""

s.Clear()
ffile1 = Open filenames For Input
While Not ffile1.EndOfFile

  c = ffile1.ReadLine()
  c = Replace(c, Chr(13), "")
  c = Replace(c, Chr(10), "")
  c = Replace(c, "  ", "")
  c = Trim(c)
 If c <> "" And c <> Null Then s.Add(c)

  
  
Wend
  ffile1.Close()
    
        
  
      iii = 0
    ts = 0


End Sub


Private Sub startcode()




'keyword list 
    keycount = 0
    addkey("print", 2)
    addkey("set", 3)
    addkey("", 1)
    addkey("echo", 2)
    addkey("wait", 2)
    addkey("integer", 3)
    addkey("let", 3)
    addkey("add", 4)
    addkey("sub", 4)
    addkey("exit", 1)
    addkey("label", 2)
    addkey("goto", 2)
    addkey("return", 1)
    addkey("like", 4)
    addkey("diferent", 4)
    addkey("big", 4)
    addkey("less", 4)
    addkey("rem", 2)
    addkey("gosub", 2)
    addkey("memfill", 4)
    addkey("memcopy", 4)
    addkey("string", 3)
    addkey("strcat", 3)
    addkey("strcopy", 3)
    addkey("memmove", 4)
    addkey("input", 3)
    addkey("memback", 4)
    addkey("memford", 4)
    addkey("strfrom", 4)
    addkey("for", 5)
    addkey("next", 1)
    addkey("pointer", 3)
    addkey("copy", 4)
    addkey("str", 3)
    addkey("val", 3)
    addkey("getnumber", 2)
    addkey("printnumber", 2)
    addkey("machine", 2)
    addkey("reset", 2)
    addkey("mul", 4)
    addkey("div", 4)
    addkey("move", 3)
    addkey("alocate", 3)
    addkey("call", 6)
    addkey("file.creat", 2)
    addkey("file.open", 3)
    addkey("file.close", 2)
    addkey("file.read", 4)
    addkey("file.write", 4)
    addkey("string.len", 3)
    addkey("timer.sleep", 2)
    addkey("timer.rnd", 2)
    addkey("stack.push", 2)
    addkey("mem.peek", 3)
    addkey("mem.poke", 3)
    addkey("bits.and", 4)
    addkey("bits.not", 3)
    addkey("mem.reserve", 3)
    addkey("far.into", 4)
    addkey("far.from", 4)
    addkey("text", 3)
    addkey("string.comp", 4)
    addkey("string.lower", 2)
    addkey("string.high", 2)
    addkey(":", 2)
    addkey("string.findchr", 4)
    addkey(";", 2)
    addkey("string.findstr", 4)
    addkey("inkey", 2)
    addkey("const", 2)
    addkey("locate", 4)
    addkey("screen", 2)
    addkey("textout", 4)
    addkey("border", 2)
    addkey("float", 3)
    addkey("back", 2)
    addkey("hline", 5)
    addkey("doevents", 1)
    addkey("box", 6)
    addkey("file.chain", 2)
    addkey("file.exec", 2)
    addkey("timer.cicle", 3)


'code head
      t1 = ""
      addcode("")
      addcode(";end of body")
      addcode("exit:")
      addcode("  xor ax,ax")
      addcode("  int 0x21")
      addcode("  ret")
      addcode("L0print:")
      addcode("  mov ah,9")
      addcode("  int 0x21")
      addcode("  ret")
      addcode("print:")
      addcode("  mov ah,9")
      addcode("  int 0x21")
      addcode("  ret")
      addcode("inkey:")
      addcode("  mov ah,0x1")
      addcode("  int 0x16")
      addcode("  jnz waits")
      addcode("nwaits:")
      addcode("  xor ax,ax")
      addcode("  ret")
      addcode("waits:")
      addcode("  xor ax,ax")
      addcode("  int 0x16")
      addcode("  xor cl,cl")
      addcode("  mov ah,cl")
      addcode("  ret")
      addcode("memfill:")
      addcode("  cmp cx,0")
      addcode("  jz memfill3")
      addcode("memfill2:")
      addcode("cld")
      addcode("rep stosb")
      addcode("ret")
      addcode("  mov [di],al")
      addcode("  inc di")
      addcode("  dec cx")
      addcode("  cmp cx,0")
      addcode("  jnz memfill2")
      addcode("memfill3:")
      addcode("  ret")
      addcode("memcopy:")
      addcode("cmp cx,0")
      addcode("jnz memcopy2")
      addcode("ret")
      addcode("memcopy2:")
      addcode("cld")
      addcode("rep movsb")
      addcode("ret")
      addcode("  mov al,[si]")
      addcode("  mov [di],al")
      addcode("  inc si")
      addcode("  inc di")
      addcode("  dec cx")
      addcode("  cmp cx,0")
      addcode("  jnz memcopy2")
      addcode("  ret")
      addcode("strcat:")
      addcode("  mov ah,36")
      addcode("strcat2:")
      addcode("  mov al,[di]")
      addcode("  cmp al,ah")
      addcode("  jz strcat3")
      addcode("  inc di")
      addcode("  jmp strcat2")
      addcode("strcat3:")
      addcode("  mov al,[si]")
      addcode("  mov [di],al")
      addcode("  cmp al,ah")
      addcode("  jz strcat4")
      addcode("  inc si")
      addcode("  inc di")
      addcode("  jmp strcat3")
      addcode("strcat4:")
      addcode("  ret")
      addcode("memmove:")
      addcode("cmp cx,0")
      addcode("jnz memmove2")
      addcode("ret")
      addcode("memmove2:")
      addcode("std")
      addcode("rep movsb")
      addcode("cld")
      addcode("ret")
      addcode("  mov al,[si]")
      addcode("  mov [di],al")
      addcode("  dec si")
      addcode("  dec di")
      addcode("  dec cx")
      addcode("  cmp cx,0xffff")
      addcode("  jnz memmove2")
      addcode("  ret")
      addcode("str:")
      addcode("  mov ax,[si]")
      addcode("  mov bp,10000")
      addcode("  str16:")
      addcode("    xor dx,dx")
      addcode("    xor cx,cx")
      addcode("    mov bx,bp")
      addcode("    clc")
      addcode("    div bx")
      addcode("    mov si,dx")
      addcode("    mov ah,48")
      addcode("    clc")
      addcode("    add al,ah")
      addcode("    mov [di],al")
      addcode("    inc di")
      addcode("    mov ax,bp")
      addcode("    xor dx,dx")
      addcode("    xor cx,cx")
      addcode("    mov bx,10")
      addcode("    clc")
      addcode("    div bx")
      addcode("    mov bp,ax")
      addcode("    mov ax,si")
      addcode("    cmp bp,0")
      addcode("    jnz str16")
      addcode("ret")
      addcode("ret")
      addcode("val:")
      addcode("    mov cl,0")
      addcode("    mov dx,0")
      addcode("    mov bx,1")
      addcode("val2:")
      addcode("    mov al,[si]")
      addcode("    cmp al,48")
      addcode("    jb val3")
      addcode("    cmp al,57")
      addcode("    ja val3")
      addcode("    jmp val4")
      addcode("val3:")
      addcode("    cmp cl,0")
      addcode("    jz val40")
      addcode("    jmp val5")
      addcode("val4:")
      addcode("    cmp cl,4")
      addcode("    jz val55")
      addcode("    inc cl")
      addcode("    inc si")
      addcode("    jmp val2")
      addcode("val55:")
      addcode("    dec cl")
      addcode("val5:")
      addcode("    dec si")
      addcode("val6:")
      addcode("    push cx")
      addcode("    push dx")
      addcode("    xor ax,ax")
      addcode("    mov al,[si]")
      addcode("    clc")
      addcode("    sub al,48")
      addcode("    xor cx,cx")
      addcode("    xor dx,dx")
      addcode("    push bx")
      addcode("    imul bx")
      addcode("    xor cx,cx")
      addcode("    xor dx,dx")
      addcode("    pop bx")
      addcode("    push ax")
      addcode("    mov ax,10")
      addcode("    imul bx")
      addcode("    mov bx,ax")
      addcode("    pop ax")
      addcode("    pop dx")
      addcode("    pop cx")
      addcode("    clc")
      addcode("    add dx,ax")
      addcode("    dec si")
      addcode("    dec cl")
      addcode("    cmp cl,0")
      addcode("    jz val40")
      addcode("    jmp val6")
      addcode("val40:")
      addcode("    mov ax,dx")
      addcode("    mov [di],ax")
      addcode("ret")
      addcode("len:")
      addcode("  push bx")
      addcode("  push cx")
      addcode("  push dx")
      addcode("  push di")
      addcode("  push si")
      addcode("  mov ah,36")
      addcode("  mov cx,0")
      addcode("len2:")
      addcode("  mov al,[si]")
      addcode("  cmp al,ah")
      addcode("  jz len3")
      addcode("  inc si")
      addcode("  inc cx")
      addcode("  jmp len2")
      addcode("len3:")
      addcode("  mov ax,cx")
      addcode("  pop si")
      addcode("  pop di")
      addcode("  pop dx")
      addcode("  pop cx")
      addcode("  pop bx")
      addcode("ret")
      addcode("timer:")
      addcode("  push ebx")
      addcode("  push ds")
      addcode("  mov ax,0x40")
      addcode("  mov ds,ax")
      addcode("  mov bx,0x6c")
      addcode("  mov eax,[bx]")
      addcode("  pop ds")
      addcode("  pop ebx")
      addcode("ret")
      addcode("sleep:")
      addcode("  mov ecx,eax")
      addcode("  xor eax,eax")
      addcode("  cmp eax,ecx")
      addcode("  jz sleep6")
      addcode("  call timer")
      addcode("  clc")
      addcode("  add ecx,eax")
      addcode("  jo sleep8")
      addcode("  call timer")
      addcode("  cmp eax,ecx")
      addcode("  jz sleep6")
      addcode("  sleep1:")
      addcode("    call timer")
      addcode("    cmp eax,ecx")
      addcode("    jz sleep6")
      addcode("    jb sleep1")
      addcode("  jmp sleep6")
      addcode("  sleep8:")
      addcode("  sleep5:")
      addcode("    call timer")
      addcode("    cmp eax,ecx")
      addcode("    jz sleep6")
      addcode("    ja sleep5")
      addcode("  jmp sleep1")
      addcode("sleep6:")
      addcode("ret")
      addcode("farinto:")
      addcode("cmp cx,0")
      addcode("jnz farinto3")
      addcode("ret")
      addcode("farinto3:")
      addcode("  mov ax,cs")
      addcode("  mov bx,0x2000")
      addcode("  add ax,bx")
      addcode("  mov es,ax")
      addcode("farinto1:")
      addcode("  ds")
      addcode("  mov al,[si]")
      addcode("  es")
      addcode("  mov [di],al")
      addcode("  inc si")
      addcode("  inc di")
      addcode("  dec cx")
      addcode("  cmp cx,0")
      addcode("  jnz farinto1")
      addcode("  mov ax,cs")
      addcode("  mov es,ax")
      addcode("  ret")
      addcode("farfrom:")
      addcode("cmp cx,0")
      addcode("jnz farfrom3")
      addcode("ret")
      addcode("farfrom3:")
      addcode("  mov ax,cs")
      addcode("  mov bx,0x2000")
      addcode("  add ax,bx")
      addcode("  mov ds,ax")
      addcode("farfrom1:")
      addcode("  ds")
      addcode("  mov al,[si]")
      addcode("  es")
      addcode("  mov [di],al")
      addcode("  inc si")
      addcode("  inc di")
      addcode("  dec cx")
      addcode("  cmp cx,0")
      addcode("  jnz farfrom1")
      addcode("  mov ax,cs")
      addcode("  mov ds,ax")
      addcode("  ret")
      addcode("stringcomp:")
      addcode("  mov cx,0")
      addcode("COMPSTRING1:")
      addcode("  mov al,[si]")
      addcode("  mov ah,[di]")
      addcode("  cmp al,36")
      addcode("  jz COMPSTRING2")
      addcode("  cmp ah,36")
      addcode("  jz COMPSTRING2")
      addcode("  cmp al,ah")
      addcode("  jnz COMPSTRING2")
      addcode("  inc di")
      addcode("  inc si")
      addcode("  inc cx")
      addcode("  jnz COMPSTRING1")
      addcode("COMPSTRING2:")
      addcode("  cmp al,ah")
      addcode("  jz COMPSTRING3")
      addcode("  jb COMPSTRING4")
      addcode("  mov ax,1")
      addcode("  jmp COMPSTRING5")
      addcode("COMPSTRING3:")
      addcode("  mov ax,0")
      addcode("  jmp COMPSTRING5")
      addcode("COMPSTRING4:")
      addcode("  mov ax,2")
      addcode("COMPSTRING5:")
      addcode("  ret")
      addcode("LOWERSTRING:")
      addcode("  mov cx,0")
      addcode("LOWERSTRING1:")
      addcode("  mov al,[bx]")
      addcode("  cmp al,36")
      addcode("  jz LOWERSTRING2")
      addcode("  cmp al,65")
      addcode("  jb LOWERSTRING3")
      addcode("  cmp al,90")
      addcode("  ja LOWERSTRING3")
      addcode("  mov ah,32")
      addcode("  add al,ah")
      addcode("  mov [bx],al")
      addcode("LOWERSTRING3:")
      addcode("  inc bx")
      addcode("  inc cx")
      addcode("  cmp cx,0")
      addcode("  jnz LOWERSTRING1")
      addcode("LOWERSTRING2:")
      addcode("  ret")
      addcode("HIGHSTRING:")
      addcode("  mov cx,0")
      addcode("HIGHSTRING1:")
      addcode("  mov al,[bx]")
      addcode("  cmp al,36")
      addcode("  jz HIGHSTRING2")
      addcode("  cmp al,97")
      addcode("  jb HIGHSTRING3")
      addcode("  cmp al,122")
      addcode("  ja HIGHSTRING3")
      addcode("  mov ah,32")
      addcode("  sub al,ah")
      addcode("  mov [bx],al")
      addcode("HIGHSTRING3:")
      addcode("  inc bx")
      addcode("  inc cx")
      addcode("  cmp cx,0")
      addcode("  jnz HIGHSTRING1")
      addcode("HIGHSTRING2:")
      addcode("  ret")
      addcode("FINDCHAR:")
      addcode("  push bx")
      addcode("  push cx")
      addcode("  push dx")
      addcode("  mov cx,0")
      addcode("  mov ah,al")
      addcode("  FINDCHAR1:")
      addcode("    mov al,[bx]")
      addcode("    cmp al,36")
      addcode("    jz FINDCHAR2")
      addcode("    cmp al,ah")
      addcode("    jz FINDCHAR3")
      addcode("    inc bx")
      addcode("    inc cx")
      addcode("    cmp cx,0")
      addcode("    jnz FINDCHAR1")
      addcode("  FINDCHAR2:")
      addcode("  mov cx,0xffff")
      addcode("  FINDCHAR3:")
      addcode("  mov ax,cx")
      addcode("  pop dx")
      addcode("  pop cx")
      addcode("  pop bx")
      addcode("  ret")
      addcode("findstr:")
      addcode("  mov bp,dx")
      addcode("  mov si,dx")
      addcode("  xor ax,ax")
      addcode("          mov al,[si]")
      addcode("          mov di,ax")
      addcode("          mov si,bx")
      addcode("          mov bx,dx")
      addcode("          call len")
      addcode("          cmp ax,0")
      addcode("          JNZ FINDSTRING9")
      addcode("          mov ax,0xffff")
      addcode("          jmp  FINDSTRING8")
      addcode("          FINDSTRING9:")
      addcode("          mov bx,si")
      addcode("          FINDSTRING1:")
      addcode("                    mov ax,di")
      addcode("                     call FINDCHAR")
      addcode("                    cmp ax,0xffff")
      addcode("                    JZ FINDSTRING8")
      addcode("                    clc                 ")
      addcode("                    add bx,ax")
      addcode("                   mov dx,bp")
      addcode("                    call compstr")
      addcode("                    cmp al,0")
      addcode("                    JZ FINDSTRING10")
      addcode("                    inc bx         ")
      addcode("                    jmp FINDSTRING1")
      addcode("                    FINDSTRING10:")
      addcode("                    mov ax,bx")
      addcode("                    FINDSTRING8:")
      addcode("  ret")
      addcode("compstr:")
      addcode("          push bx                ")
      addcode("          push cx                ")
      addcode("          push dx                ")
      addcode("          push di                ")
      addcode("          push si                ")
      addcode("          mov cx,0                ")
      addcode("          mov si,bx")
      addcode("          mov di,dx")
      addcode("          compstr1:")
      addcode("                    mov al,[si]")
      addcode("                    mov ah,[di]")
      addcode("                    cmp al,36   ")
      addcode("                    JZ compstr2")
      addcode("                    cmp ah,36")
      addcode("                    JZ compstr3")
      addcode("                    cmp al,ah")
      addcode("                    JNZ compstr2")
      addcode("                    inc di")
      addcode("                    inc si                ")
      addcode("                    inc cx                ")
      addcode("                    cmp cx,0              ")
      addcode("                    JNZ compstr1")
      addcode("          compstr2:")
      addcode("          cmp al,ah")
      addcode("          JZ compstr3")
      addcode("          JB compstr4")
      addcode("          mov al,1   ")
      addcode("          jmp compstr5")
      addcode("          compstr3:")
      addcode("          mov al,0                ")
      addcode("          jmp compstr5")
      addcode("          compstr4:")
      addcode("          mov al,2 ")
      addcode("          compstr5:")
      addcode("                    pop si                ")
      addcode("                    pop di                ")
      addcode("                    pop dx                ")
      addcode("                    pop cx                ")
      addcode("                    pop bx       ")
      addcode("  ret")
      addcode("textout:")
      addcode("  mov di,bx")
      addcode("  mov ah,3")
      addcode("  int 0x10")
      addcode("  call len")
      addcode("  mov cx,ax")
      addcode("  mov bx,di")
      addcode("  mov bp,si")
      addcode("  mov al,1")
      addcode("  mov ah,0x13")
      addcode("  int 0x10")
      addcode("ret")
      addcode("STR32:")
      addcode("          push eax                ")
      addcode("          push ebx")
      addcode("          push ecx ")
      addcode("          push edx")
      addcode("          push edi")
      addcode("          push esi")
      addcode("          push ebp")
      addcode("          mov eax,[si]")
      addcode("          mov ebp,1000000000")
      addcode("          STR321:           ")
      addcode("                    xor edx,edx")
      addcode("                    xor ecx,ecx")
      addcode("                    mov ebx,ebp")
      addcode("                    clc        ")
      addcode("                    div ebx    ")
      addcode("                    mov esi,edx")
      addcode("                    mov ah,48")
      addcode("                    clc")
      addcode("                    add al,ah")
      addcode("                    mov [di],al")
      addcode("                    inc di     ")
      addcode("                    mov eax,ebp")
      addcode("                    xor edx,edx")
      addcode("                    xor ecx,ecx")
      addcode("                    mov ebx,10")
      addcode("                    clc       ")
      addcode("                    div ebx   ")
      addcode("                    mov ebp,eax")
      addcode("                    mov eax,esi")
      addcode("                    cmp ebp,0")
      addcode("                    JNZ STR321")
      addcode("          pop ebp")
      addcode("          pop esi")
      addcode("          pop edi")
      addcode("          pop edx")
      addcode("          pop ecx")
      addcode("          pop ebx")
      addcode("          pop eax")
      addcode("          RET   ")
      addcode("hline:")
      addcode("jmp hline64")
      addcode("hlinebp dd 0")
      addcode("hline64:")
      addcode("  mov bx,hlinebp")
      addcode("  mov [bx],bp")
      addcode("  push bp")
      addcode("  mov bp,sp")
      addcode("  sub sp,16")
      addcode("  mov ax,[bp+9]")
      addcode("  cmp ax,200")
      addcode("  jb hline11")
      addcode("  mov ax,199")
      addcode("  mov [bp+9],ax")
      addcode("hline11:")
      addcode("  cmp ax,0")
      addcode("  jge hline1")
      addcode("  mov ax,0")
      addcode("  mov [bp+9],ax")
      addcode("hline1:")
      addcode("  mov bx,320")
      addcode("  xor cx,cx")
      addcode("  xor dx,dx")
      addcode("  clc")
      addcode("  imul bx")
      addcode("  mov bx,[bp+11]")
      addcode("  clc")
      addcode("  add ax,bx")
      addcode("  mov [bp+0],ax")
      addcode("  mov ax,[bp+11]")
      addcode("  mov bx,[bp+7]")
      addcode("  cmp bx,ax")
      addcode("  ja hline2")
      addcode("  cmp ax,320")
      addcode("  jb hline3")
      addcode("  mov ax,319")
      addcode("  mov [bp+11],ax")
      addcode("hline3:")
      addcode("  cmp ax,0")
      addcode("  jge hline4")
      addcode("  mov ax,0")
      addcode("  mov [bp+11],ax")
      addcode("hline4:")
      addcode("  cmp bx,320")
      addcode("  jb hline5")
      addcode("  mov bx,319")
      addcode("  mov [bp+11],bx")
      addcode("hline5:")
      addcode("  cmp bx,0")
      addcode("  jge hline2")
      addcode("  mov bx,0")
      addcode("  mov [bp+11],bx")
      addcode("hline2:")
      addcode("  clc")
      addcode("  sub bx,ax")
      addcode("  mov cx,bx")
      addcode("  push es")
      addcode("  call setrefresh")
      addcode("  mov ax,[bp+0]")
      addcode("  mov di,ax")
      addcode("  mov al,[bp+5]")
      addcode("  call memfill")
      addcode("  pop es")
      addcode("hlineend:")
      addcode("  mov sp,bp")
      addcode("  pop bp")
      addcode("  mov bx,hlinebp")
      addcode("  mov bp,[bx]")
      addcode("ret")
      addcode("ret")
      addcode("box:")
      addcode("jmp box64")
      addcode("boxbp dd 0")
      addcode("box64:")
      addcode("  mov bx,boxbp")
      addcode("  mov [bx],bp")
      addcode("  push bp")
      addcode("  mov bp,sp")
      addcode("  sub sp,16")
      addcode("  mov ax,[bp+11]")
      addcode("  mov bx,[bp+7]")
      addcode("  add bx,ax")
      addcode("  mov [bp+7],bx")
      addcode("  mov ax,[bp+9]")
      addcode("  mov bx,[bp+13]")
      addcode("  add bx,ax")
      addcode("  mov [bp+13],bx")
      addcode("  mov ax,[bp+9]")
      addcode("  cmp ax,200")
      addcode("  jb box22")
      addcode("  mov ax,199")
      addcode("  mov [bp+9],ax")
      addcode("box22:")
      addcode("  cmp ax,0")
      addcode("  jge box1")
      addcode("  mov ax,0")
      addcode("  mov [bp+9],ax")
      addcode("box1:")
      addcode("  mov bx,320")
      addcode("  xor cx,cx")
      addcode("  xor dx,dx")
      addcode("  clc")
      addcode("  imul bx")
      addcode("  mov bx,[bp+11]")
      addcode("  clc")
      addcode("  add ax,bx")
      addcode("  mov [bp+0],ax")
      addcode("  mov ax,[bp+11]")
      addcode("  mov bx,[bp+7]")
      addcode("  cmp bx,ax")
      addcode("  ja box10")
      addcode("  jmp boxend")
      addcode("box10:")
      addcode("  cmp ax,320")
      addcode("  jb box3")
      addcode("  mov ax,319")
      addcode("  mov [bp+11],ax")
      addcode("box3:")
      addcode("  cmp ax,0")
      addcode("  jge box4")
      addcode("  mov ax,0")
      addcode("  mov [bp+11],ax")
      addcode("box4:")
      addcode("  cmp bx,320")
      addcode("  jb box5")
      addcode("  mov bx,319")
      addcode("  mov [bp+7],bx")
      addcode("box5:")
      addcode("  cmp bx,0")
      addcode("  jge box2")
      addcode("  mov bx,319")
      addcode("  mov [bp+7],bx")
      addcode("box2:")
      addcode("  clc")
      addcode("  sub bx,ax")
      addcode("  mov [bp-2],bx")
      addcode("  mov ax,[bp+13]")
      addcode("  mov bx,[bp+9]")
      addcode("  cmp ax,200")
      addcode("  jb box12")
      addcode("  mov ax,199")
      addcode("  mov [bp+13],ax")
      addcode("box12:")
      addcode("  cmp ax,0")
      addcode("  jge box11")
      addcode("  mov ax,0")
      addcode("  mov [bp+13],ax")
      addcode("box11:")
      addcode("  sub ax,bx")
      addcode("  mov [bp-4],ax")
      addcode("  cmp ax,0")
      addcode("  jnz box16")
      addcode("  jmp boxend")
      addcode("box16:")
      addcode("  mov bx,320")
      addcode("  mov ax,[bp-2]")
      addcode("  sub bx,ax")
      addcode("  mov [bp-6],bx")
      addcode("  push es")
      addcode("  call setrefresh")
      addcode("  mov ax,[bp+0]")
      addcode("  mov di,ax")
      addcode("  mov si,[bp-4]")
      addcode("box20:")
      addcode("  mov cx,[bp-2]")
      addcode("  mov al,[bp+5]")
      addcode("  call memfill")
      addcode("  mov ax,[bp-6]")
      addcode("  add di,ax")
      addcode("  dec si")
      addcode("  cmp si,0")
      addcode("  jnz box20")
      addcode("  pop es")
      addcode("boxend:")
      addcode("  mov sp,bp")
      addcode("  pop bp")
      addcode("  mov bx,boxbp")
      addcode("  mov bp,[bx]")
      addcode("ret")
      addcode("setrefresh:")
      addcode("mov bx,cs")
      addcode("mov ax,0x3000")
      addcode("add ax,bx")
      addcode("mov es,ax")
      addcode("ret")
      addcode("setvideo:")
      addcode("push es")
      addcode("push ds")
      addcode("call setrefresh")
      addcode("mov ax,es")
      addcode("mov ds,ax")
      addcode("mov ax,0xa000")
      addcode("mov es,ax")
      addcode("mov si,0")
      addcode("mov di,0")
      addcode("mov cx,65001")
      addcode("call memcopy")
      addcode("pop ds")
      addcode("pop es")
      addcode("ret")
      addcode("chain:")
      addcode("  mov bx,0x100")
      addcode("  mov dx,bx")
      addcode("  mov cx,65050")
      addcode("  mov bx,65298")
      addcode("  mov ax,[bx]")
      addcode("  mov bx,ax")
      addcode("  mov ah,0x3f")
      addcode("  int 0x21")
      addcode("  mov bx,65298")
      addcode("  mov ax,[bx]")
      addcode("  mov bx,ax")
      addcode("  mov al,2")
      addcode("  mov ah,0x3e")
      addcode("  int 0x21")
      addcode("  ret")
      addcode("")
      addcode("cicle:")
      addcode("  cmp dx,0")
      addcode("  jz cicle2")
      addcode("  cmp ax,0")
      addcode("  jz cicle2")
      addcode("  mov cx,dx")
      addcode("  cicle1:")
      addcode("    dec cx")
      addcode("    jnz cicle1")
      addcode("  dec ax")
      addcode("  jnz cicle")
      addcode("cicle2:")
      addcode("ret")
      addcode("section .data")
      addcode("L4 db 0,0,0,0,0")
      addcode("L18 dw 0,0")
      addcode("L20 dw 0,0,0,0,0,0,0,0")
      addcode("L21 dw 0,0,0,0")
      addcode("L6 db 'press a key to go on, esc key to exit scroll',13,10,'$'")
      addcode("L16 db '..........................................',13,10,'$'")
      addcode("L17 db '00000 $.........................',13,10,'$'")
      addcode("L22 db '0000000000000000000$............',13,10,'$'")
      addcode(";start tail")
      addcode("")

'add head
      tt1 = ""
      addhead("section .text")
      addhead("org 0x100")
      addhead("main:")
      addhead("jmp mains")
      addhead("db 'build in index developer tools.... '")
      addhead("mains:")
      addhead("    ;start stack 64k")
      addhead("  mov ax,cs")
      addhead("  mov cx,0x1000")
      addhead("  add ax,cx")
      addhead("  mov ss,ax")
      addhead("  mov ax,0xffff")
      addhead("  mov sp,ax")
      addhead("  xor ax,ax")
      addhead("  push ax")
      addhead("    ;end stack 64k")
      addhead("    ;start alocate")
      addhead("  mov bx,L18")
      addhead("  mov ax,endf")
      addhead("  mov cx,8")
      addhead("  add ax,cx")
      addhead("  mov [bx],ax")
      addhead("    ;end alocate")
      addhead("    ;start randomize")
      addhead("  call timer")
      addhead("  mov bx,L20")
      addhead("  xor cx,cx")
      addhead("  mov cl,al")
      addhead("  mov ax,257")
      addhead("  add ax,cx")
      addhead("  mov [bx],ax")
      addhead("    ;end randomize")
      addhead("")
      addhead(";body start")

End Sub



    Private Sub MMain()
    Dim files1 As File
    
      
     
      Dim separete As String[] = New String[]
      Print 

    clearbody()
    
    If ts = 0 Then
               
      
      For Each ss In s
        separete = Split(ss, ",")
        errorss = 1
        If separete.length > 0 Then 
          par1 = LCase(Trim(separete[0]))
'key print,var
          If par1 = keywords[0] Then
            errorssi = 0
            If par[0] = separete.length Then

              tc = UCase(Trim(separete[1]))

              bbb = findvar(tc)
              If bbb <> -1 And tc <> "" Then


                If varstype[bbb] < 10 Then   


                  addtail("  mov dx,L" & (Trim(Str(line11[bbb] + 9000))))
                  addtail("  call print")
                  errorssi = -1
                  errorss = 0

                
                Else
                  iii = 1 + iii
                  Goto errorhandler
                End If
              End If
            End If 
            Goto allkey
          End If 

'key set ,constant,text
          If par1 = keywords[1] Then 
            errorssi = 1

            If par[1] = separete.length Then
              tc = UCase(Trim(separete[1]))
              If findvar(tc) = -1 And tc <> "" And (Asc(tc) > (Asc("A") - 1)) And (Asc(tc) < (Asc("Z") + 1)) Then 
                addvar(tc, 0, iii)              
                addbody("L" & Trim(Str(iii + 9000)) & " db '" & separete[2] & "',13,10,'$'")
              Else
                  iii = 1 + iii
                Goto errorhandler
              End If 
              errorssi = -1
              errorss = 0
            End If
            Goto allkey
          End If

'key no line
          If par1 = keywords[2] Then 
            errorssi = 2
            If par[2] = separete.length Then
              errorssi = -1
              errorss = 0
            End If
            Goto allkey
          End If

'key echo,text
          If par1 = keywords[3] Then
            errorssi = 3
            If par[3] = separete.length Then

                  addtail("  mov dx,L" & (Trim(Str(iii + 9000))))
                  addtail("  call print")
                  addbody("L" & Trim(Str(iii + 9000)) & " db '" & separete[1] & "',13,10,'$'")

            Else
              iii = 1 + iii
              Goto errorhandler

            End If 
            errorssi = -1
            errorss = 0

            Goto allkey
          End If 

'key wait,var to put key code
          If par1 = keywords[4] Then
            errorssi = 4
            If par[4] = separete.length Then

              tc = UCase(Trim(separete[1]))

              bbb = findvar(tc)
              If bbb <> -1 And tc <> "" Then


                If varstype[bbb] < 10 Then   


                  addtail("  mov bx,L" & (Trim(Str(line11[bbb] + 9000))))
                  addtail("  call waits")
              errorssi = -1
              errorss = 0

                 
                Else
                  iii = 1 + iii
                  Goto errorhandler
                End If
              End If
            End If 
            Goto allkey
          End If 

'key integer ,var,number value
          If par1 = keywords[5] Then 
            errorssi = 5

            If par[5] = separete.length Then
              tc = UCase(Trim(separete[1]))
              If findvar(tc) = -1 And tc <> "" And (Asc(tc) > (Asc("A") - 1)) And (Asc(tc) < (Asc("Z") + 1)) Then 
                addvar(tc, 6, iii)
                n = Val(Trim(separete[2]))
                addbody("L" & Trim(Str(iii + 9000)) & " dw " & Str(n))
              Else
                  iii = 1 + iii
                Goto errorhandler
              End If 
              errorssi = -1
              errorss = 0
            End If
            Goto allkey
          End If


'key let,var,value number
          If par1 = keywords[6] Then
            errorssi = 6
            If par[6] = separete.length Then

              tc = UCase(Trim(separete[1]))

              bbb = findvar(tc)
              If bbb <> -1 And tc <> "" Then


                If varstype[bbb] = 6 Then   

                  n = Val(Trim(separete[2]))
                  addtail("  mov bx,L" & (Trim(Str(line11[bbb] + 9000))))
                  addtail("  mov ax," & Str(n))
                  addtail("  mov [bx],ax")
                  errorssi = -1
                  errorss = 0

                Else

                  If varstype[bbb] = 12 Then   
                    fn = Val(Trim(separete[2]))
                    fn = fn * 100
                    fi = fn
                    addtail("  mov bx,L" & (Trim(Str(line11[bbb] + 9000))))
                    addtail("  mov eax," & Str(fi))
                    addtail("  mov [bx],eax")
                    errorssi = -1
                    errorss = 0

                  Else

                    If varstype[bbb] < 5 Then
                      addvar(tc, 0, iii)
                      addbody("L" & Trim(Str(iii + 9000)) + " db '" + separete(2) + "',13,10,'$'")
                      addtail("  mov di,L" & (Trim(Str(line11(bbb) + 9000))))
                      addtail("  mov al,36")
                      addtail("  mov [di],al")
                      addtail("  mov si,L" & (Trim(Str(iii + 9000))))
                      addtail("  call strcat")
                      errorssi = -1
                      errorss = 0
                    Else


                      iii = 1 + iii
                    
                      Goto errorhandler
                    End If
                  End If
                End If
              End If
            End If 
            Goto allkey
          End If 


'#-----------------------------------------------------
''code
'line count
          allkey:
          iii = iii + 1


        End If
        If errorssi <> -1 Then Goto errorhandler
        If errorss <> 0 Then 
          errorssi = 2  
          Goto errorhandler
        End If          




      Next       

' next out of for
        If forcount <> 0 Then 
          errorssi = 30  
          Goto errorhandler
        End If          



'error on label
    bbb = findstate()
    If bbb <> -1 Then 
      errorssi = 11
      iii = labeladdress(bbb)
      Goto errorhandler
    End If
'general error
      vvv = tt & t & Chr(13) & Chr(10) & "endf db '$'" & Chr(13) & Chr(10)
  files1 = Open filepath & "out.asm" For Output Create
  Print #files1, vvv
files1.Close()
      Shell "bash -c 'timeout 59s nasm -o " & filepath & "out.com " & filepath & "out.asm'"
      Print Chr(13) & Chr(10) & Chr(13) & Chr(10) 
    
      
      Print Chr(13) & Chr(10) & ":FINISH" & Chr(13) & Chr(10) & "if sucess the exe name will be out.com and asm name will be out.asm"
      
    
      Goto escapehandler
      errorhandler:
        Print "error on line " & Str(iii) & " keyword :" & keywords[errorssi] 
           escapehandler:

    Else
        Print "error file "
    End If        
          
          
End Sub
Public Sub Main()
'filenames = Application.Args
filepath = "/home/pi/disk1/gambas/"
filenames = filepath & Args[1]
Print "start compile..." & filenames
startcode()
  MMain()
End
