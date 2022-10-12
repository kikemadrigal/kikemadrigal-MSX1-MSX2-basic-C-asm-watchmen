    output "sprites.bin"

    db   #fe               ; ID archivo binario, siempre hay que poner el mismo 0FEh
    dw   INICIO            ; dirección de inicio
    dw   FINAL - 1         ; dirección final
    dw   INICIO             ; dircción del programa de ejecución (para cuando pongas r en bload"nombre_programa", r)

    org #7800 ; o 57344, org se utiliza para decirle al z80 en que posición de memoria RAM empieza nuestro programa en ensamblador

INICIO:
    ret ; el ret es necesario para que vuelva al basic

SPRITE_DATA:
    ; 0-
    db 15,15,127,7,4,4,31,31
    db 31,31,3,15,6,24,7,15
    db 240,240,254,248,20,230,238,236
    db 236,192,224,240,120,248,28,60
    ; 1-
    db 15,15,127,7,4,4,31,31
    db 31,31,3,15,6,24,7,15
    db 240,240,254,248,20,230,238,236
    db 236,192,224,240,120,248,192,192
    ; 2-
    db 15,15,127,31,40,103,119,55
    db 55,3,7,15,30,31,56,60
    db 240,240,254,224,32,32,248,248
    db 248,248,192,240,96,24,224,240
    ; 3-
    db 15,15,127,31,40,103,119,55
    db 55,3,7,15,30,31,3,3
    db 240,240,254,224,32,32,248,248
    db 248,248,192,240,96,24,224,240
    ; 4-
    db 15,15,127,7,7,15,15,15
    db 3,11,15,15,7,7,3,7
    db 240,240,254,224,224,240,240,240
    db 192,208,240,240,224,224,192,224
    ; 5-
    db 15,15,127,7,7,15,7,7
    db 3,3,7,15,7,7,3,3
    db 240,240,254,224,224,240,224,224
    db 192,192,224,240,224,224,192,192
    ; 6-
    db 15,15,127,7,4,4,31,31
    db 15,23,11,7,1,0,0,0
    db 240,240,254,192,112,240,240,240
    db 224,192,224,240,248,248,28,60
    ; 7-
    db 15,15,127,3,14,15,15,15
    db 7,3,7,15,31,31,56,60
    db 240,240,254,224,32,32,248,248
    db 240,232,208,224,128,0,0,0
    ; 8-
    db 3,7,7,7,63,127,115,121
    db 120,127,63,62,6,12,8,12
    db 192,224,160,224,32,224,128,240
    db 16,240,224,64,64,96,48,0
    ; 9-
    db 0,3,7,7,7,63,127,123
    db 121,120,127,63,62,6,2,3
    db 0,192,224,160,224,32,224,224
    db 224,48,240,224,64,64,64,96
    ; 10-
    db 3,7,5,7,4,7,1,15
    db 8,15,7,2,2,6,12,0
    db 192,224,224,224,252,254,206,158
    db 30,254,252,124,96,48,16,48
    ; 11-
    db 0,3,7,5,7,4,7,7
    db 7,12,15,7,2,2,2,6
    db 0,192,224,224,224,252,254,222
    db 158,30,254,252,124,96,64,192
    ; 12-
    db 2,28,122,120,126,62,56,38
    db 16,44,39,48,24,31,12,7
    db 128,24,190,30,174,172,26,182
    db 10,26,228,8,52,236,24,240

        


FINAL: