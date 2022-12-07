		 output o-coord.bin
	db   #fe
	dw   INICIO 
	dw   FINAL
	dw   INICIO 
	org  #d000 
entity_type_object_money equ	#16 
entity_type_object_divan equ	#32
INICIO: 
    ; World 0
    ;---------------------------
    ; coordinate_object 0
    db 1*8
    db 3*8
    db entity_type_object_money

    ; coordinate_object 1
    db 14*8
    db 3*8
    db entity_type_object_money
    
    ; coordinate_object 2
    db 1*8
    db 9*8
    db entity_type_object_money

    ;coordinate_object 3
    db 14*8
    db 15*8
    db entity_type_object_divan
    
    ;coordinate_object 4
    db 1*8
    db 27*8
    db entity_type_object_divan
    
    

    ; World 1
    ;---------------------------
     ; coordinate_object 0
    db 28*8
    db 1*8
    db entity_type_object_money
    
    ; coordinate_object 1
    db 15*8
    db 5*8
    db entity_type_object_money
    
    ; coordinate_object 2
    db 2*8
    db 10*8
    db entity_type_object_money
    
    ; coordinate_object 3
    db 15*8
    db 1*8
    db entity_type_object_divan
      
    ; coordinate__object 4
    db 1*8
    db 27*8
    db entity_type_object_divan


    ; World 2
    ;---------------------------

   ;coordinate_object 0
    db 26*8
    db 2*8
    db entity_type_object_money
    
    ;coordinate_object 1
    db 1*8
    db 6*8
    db entity_type_object_money
    
     ;coordinate_object 2
    db 21*8
    db 6*8
    db entity_type_object_money
    
    ;coordinate_object 3
    db  16*8
    db  2*8
    db  entity_type_object_divan
      
    ;coordinate_object 4
    db 3*8
    db 27*8
    db entity_type_object_divan


    ; World 3
    ;---------------------------
    
    ;coordinate_object 0
    db 11*8
    db 2*8
    db entity_type_object_money
    
    ;coordinate_object 1
    db 1*8
    db 6*8
    db entity_type_object_money
    
     ;coordinate_object 2
    db 28*8
    db 15*8
    db entity_type_object_money
    
    ;coordinate_enemy 3
    db 2*8
    db 26*8
    db entity_type_object_divan

    ;coordinate_enemy 4
    db 14*8
    db 11*8
    db entity_type_object_divan
    
FINAL: 

