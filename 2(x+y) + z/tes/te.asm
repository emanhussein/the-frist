.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA
  n1 DWORD ?
  n2 DWORD ?
  n3 DWORD ?
  m1 BYTE "inter frist num",0
  m2 BYTE "inter sec num",0
  m3 BYTE "inter third num",0
  m4 BYTE " the res",0
  string BYTE 40 DUP(?)
  res BYTE 11 DUP (?)
  .CODE
     MainProc PROC
	    input m1,string,40
		atod string
		mov n1,eax

		input m2,string,40
		atod string
		mov n2,eax

		input m3,string,40
		atod string
		mov n3,eax
		mov eax,n2
		add eax,n1
		imul eax,2
		add eax,n3
	   dtoa res,eax
       output m4,res
	   mov eax,0
	   ret

	MainProc ENDP
END		