		 output g-coord.bin
	db   #fe
	dw   INICIO 
	dw   FINAL
	dw   INICIO 
	org  #d000 
INICIO: 
    ;world 0
	db 1*8,19*8   ;Player initial position x, y
    db 29*8,2*8   ;door position x, y
    db 0,15*8     ;Phone position x, y 
    ;world 1
    db  4*8,20*8
    db 2*8,4*8
    db 28*8,10*8   
    ;wordl 2
    db 3*8,20*8   ;Player initial position
    db 4*8,15*8   ;door position
    db 27*8,11*8  ;Phone position
    ;World3
    db 2*8,20*8   ;Player initial position
    db 1*8,1*8    ;door position
    db 25*8,16*8  ;Phone position
    ;World4
    db 20*8,19*8  ;Player initial position
    db 1*8,1*8    ;door position
    db 29*8,20*8  ;Phone position

FINAL: 
