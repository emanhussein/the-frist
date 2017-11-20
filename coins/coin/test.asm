.586
.MODEL FLAT
INCLUDE io.h
.STACK 4096
.DATA
  pennies DWORD ?
  nickels DWORD ?
  dimes DWORD ?
  quarters DWORD ?
  m1 BYTE "inter num pennies",0
  m2 BYTE "inter num  nickels",0
  m3 BYTE "inter num dimes",0
  m4 BYTE "inter num  quarters",0
  m5 BYTE " the res",0
  string BYTE 40 DUP(?)
  res BYTE 11 DUP (?)
   .CODE
     MainProc PROC
	    input m1,string,40
		atod string
		mov pennies,eax

		input m2,string,40
		atod string
		mov nickels,eax

		input m3,string,40
		atod string
		mov dimes,eax

		input m4,string,40
		atod string
		mov quarters,eax

		mov eax,quarters
		mul eax,0.25
		mov quarters,eax

		mov eax,dimes
		mul eax,0 .10
		mov dimes,eax

		mov eax,nickels
		mul eax,0.05
		mov nickels,eax

		mov eax,pennies
		mul eax,0.01
		mov pennies,eax

		mov eax,quarters
		add eax,dimes
		add eax,nickels
		add eax,pennies
	   dtoa res,eax
       output m4,res
	   mov eax,0
	   ret

	MainProc ENDP
END	