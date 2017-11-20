.586
.MODEL FLAT
 INCLUDE io.h
.STACK 4096
.DATA
  outt byte "enter the grade",0
  outres byte "the sum",0
  outress byte "the average",0
  string byte 40 DUP (?)
  strin byte 40 DUP (?)
  num1 dword ?
  num2 dword ?
  num3 dword ?
  num4 dword ?
.CODE
  MainProc PROC
   input outt,string,40
   atod string
   mov num1,eax

   input outt,string,40
   atod string
   mov num2,eax

   input outt,string,40
   atod string
   mov num3,eax

   input outt,string,40
   atod string
   mov num4,eax

   mov eax,num1
   add eax,num2

   add eax,num3

   add eax,num4
   mov num1,eax
   dtoa string,num1
   output outres,string

   mov edx,0
   mov eax,num1
   mov ecx,4
   div ecx
   dtoa string,eax
   output outress,string



  mov eax,0
  ret
  MainProc ENDP
END