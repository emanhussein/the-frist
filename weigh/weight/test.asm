.586
.MODEL FLAT
 INCLUDE io.h
.STACK 4096
.DATA
    m1 byte "enter the grade1",0
    m2 byte "enter the weight1",0
    m3 byte "enter the grade1",0
    m4 byte "enter the weight1",0
    m5 byte "enter the grade1",0
    m6 byte "enter the weight1",0
	m7 byte "enter the grade1",0
    m8 byte "enter the weight1",0
    outres byte "the sum",0
	outress byte "the sum",0
    outresss byte "the average",0
     string byte 40 DUP (?)
     strin byte 40 DUP (?)
	 stri byte 40 DUP (?)
    n1 dword ?
    g1 dword ?
    n2 dword ?
    g2 dword ?
	n3 dword ?
    g3 dword ?
    n4 dword ?
    g4 dword ?
.CODE
  MainProc PROC
	input m1,string,40
   atod string
   mov n1,eax

   input m2,string,40
   atod string
   mov g1,eax

   input m3,string,40
   atod string
   mov n2,eax

   input m4,string,40
   atod string
   mov g2,eax

   input m5,string,40
   atod string
   mov n3,eax

   input m6,string,40
   atod string
   mov g3,eax

   input m7,string,40
   atod string
   mov n4,eax

   input m8,string,40
   atod string
   mov g4,eax

   mov eax,n1
   imul eax,g1
   mov n1,eax

    mov eax,n2
   imul eax,g2
   mov n2,eax

    mov eax,n3
    imul eax,g3
   mov n3,eax

    mov eax,n4
   imul eax,g4
   mov n4,eax

   mov eax,n1
   add eax,n2
   add eax,n3
   add eax,n4
   mov n1,eax
   dtoa string,n1
   output outres,string
   mov edx,0
   mov eax,g1
   add eax,g2
   add eax,g3
   add eax,g4
   mov g1,eax
    dtoa string,g1
   output outress,string
     mov edx,0
   mov eax,n1
   mov ecx,g1
   div ecx
   dtoa string,eax
   output outresss,string
     mov eax,0
  ret
  MainProc ENDP
END