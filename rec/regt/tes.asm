.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA
    x DWORD ?
	y DWORD ?
	m1 BYTE"inter length",0
	m2 BYTE"inter width",0
	m3 BYTE"the result",0
	string BYTE 40 DUP(?) 
	res BYTE 11 DUP(?)
.CODE
   MainProc PROC
        input m1,string,40
		atod string
		mov x,eax
		input m2,string,40
		atod string
		mov y,eax

		imul eax,2
		mov y,eax
		mov eax,x
		imul eax,2
		add eax,y
		dtoa res,eax
		output m3,res
	     mov eax,0
	      ret

		

   MainProc ENDP
   END

