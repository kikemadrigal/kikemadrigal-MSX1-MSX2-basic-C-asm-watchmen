		 output level3.bin
	db   #fe
	dw   INICIO 
	dw   FINAL
	dw   INICIO 
	org  #d000 
INICIO: 
	db 226,226,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,226,226
	db 226,226,100,101,-1,-1,-1,-1,-1,226,-1,-1,-1,-1,-1,-1,-1,-1,-1,228,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,226,226
	db 226,226,132,133,-1,-1,-1,-1,-1,226,-1,-1,0,1,-1,-1,-1,-1,-1,228,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,226,226
	db 226,226,164,165,-1,-1,-1,-1,-1,226,-1,-1,32,33,-1,-1,-1,-1,-1,228,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,226,226
	db 226,226,224,224,224,192,193,224,224,224,224,224,224,224,224,224,-1,-1,224,224,224,224,224,224,192,193,224,224,224,224,226,226
	db 226,226,-1,-1,-1,192,193,-1,-1,-1,-1,-1,-1,-1,-1,226,-1,-1,-1,-1,-1,-1,-1,-1,192,193,-1,-1,-1,-1,226,226
	db 226,226,-1,-1,-1,192,193,-1,-1,-1,-1,-1,-1,-1,-1,226,-1,-1,-1,-1,-1,-1,-1,-1,192,193,-1,-1,-1,-1,226,226
	db 226,226,-1,-1,-1,192,193,-1,-1,-1,-1,-1,-1,-1,-1,226,-1,-1,-1,-1,-1,-1,-1,-1,192,193,-1,-1,-1,-1,226,226
	db 226,226,224,224,224,224,224,224,192,193,224,224,224,224,224,224,224,224,224,-1,-1,-1,-1,224,224,224,224,224,192,193,226,226
	db 226,226,-1,-1,-1,-1,-1,-1,192,193,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,192,193,226,226
	db 226,226,-1,-1,-1,-1,-1,-1,192,193,-1,-1,-1,198,198,198,198,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,192,193,226,226
	db 226,226,-1,-1,-1,2,1,-1,192,193,-1,-1,-1,198,-1,-1,198,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,192,193,226,226
	db 226,226,-1,-1,-1,32,33,-1,192,193,-1,-1,-1,198,-1,-1,198,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,192,193,226,226
	db 226,226,192,193,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,-1,-1,224,224,224,224,224,224,224,224,226,226
	db 226,226,192,193,-1,-1,-1,-1,-1,-1,-1,-1,-1,226,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,226,226
	db 226,226,192,193,-1,-1,-1,-1,-1,-1,-1,-1,-1,226,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,0,1,-1,-1,-1,-1,226,226
	db 226,226,192,193,-1,-1,-1,-1,-1,-1,-1,-1,-1,226,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,32,33,-1,-1,-1,-1,226,226
	db 226,226,224,224,224,192,193,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,192,193,226,226
	db 226,226,-1,-1,229,192,193,-1,-1,-1,-1,-1,-1,-1,-1,-1,228,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,192,193,226,226
	db 226,226,-1,-1,229,192,193,-1,-1,-1,-1,-1,-1,-1,-1,-1,228,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,226,226
	db 226,226,-1,-1,229,192,193,-1,-1,-1,-1,-1,-1,-1,-1,-1,228,-1,-1,-1,-1,-1,-1,0,2,-1,-1,-1,128,129,226,226
	db 226,226,-1,-1,229,192,193,-1,-1,-1,-1,-1,-1,-1,-1,-1,228,-1,-1,-1,-1,-1,-1,32,33,-1,-1,-1,160,161,226,226
	db 226,226,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,226,226
FINAL: 