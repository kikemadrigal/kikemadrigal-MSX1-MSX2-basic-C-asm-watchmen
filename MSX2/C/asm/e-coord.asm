		 output e-coord.bin
	db   #fe
	dw   INICIO 
	dw   FINAL
	dw   INICIO 
	org  #d000 
entity_type_enemy1 equ	2 
entity_type_enemy2 equ	4 
INICIO: 
    ;world 0
    ; Enemy1 [x,y,type], enemy2 [x,y,type], enemy3 [x,y,type]
	;db 112,24,2,32,72,2,48,120,2
    db 14*8, 3*8, entity_type_enemy1,4*8, 9*8, entity_type_enemy1, 6*8, 15*8, entity_type_enemy1
    ;world 1
    ;db 32,8,2,40,40,2,120,100,2
    db 4*8, 1*8, entity_type_enemy1, 5*8, 5*8, entity_type_enemy1, 15*8, 10*8, entity_type_enemy1
    ;world 2
    ;db 184,16,2,224,48,2,184,128,2
    db  23*8,2*8, entity_type_enemy1, 28*8,6*8,entity_type_enemy1,23*8, 16*8, entity_type_enemy1
    ;world 3
    ;db 184,16,2,80,48,2,80,120,2
    db  23*8,2*8, entity_type_enemy1,10*8, 6*8, entity_type_enemy1, 10*8, 15*8, entity_type_enemy1
FINAL: 
