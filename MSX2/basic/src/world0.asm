        output "world0.bin"

    db   #fe               ; ID archivo binario, siempre hay que poner el mismo 0FEh
    dw   INICIO            ; dirección de inicio
    dw   FINAL - 1         ; dirección final
    dw   INICIO             ; dircción del programa de ejecución (para cuando pongas r en bload"nombre_programa", r)

    org #c000 ; o 57344, org se utiliza para decirle al z80 en que posición de memoria RAM empieza nuestro programa en ensamblador

INICIO:
    ret ; el ret es necesario para que vuelva al basic
       
Level0:
    db 100,101,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1
    db 132,133,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1
    db 164,165,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,4,-1
    db 224,224,224,224,224,224,224,224,224,224,192,193,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,225
    db -1,-1,-1,-1,-1,-1,-1,-1,-1,-1,192,193,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1
    db -1,-1,-1,-1,-1,-1,-1,-1,-1,-1,192,193,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1
    db -1,-1,-1,-1,-1,-1,-1,-1,-1,-1,192,193,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1
    db -1,-1,-1,-1,-1,-1,-1,-1,-1,-1,192,193,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,128,129
    db 4,-1,-1,-1,-1,-1,-1,-1,-1,-1,192,193,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,160,161
    db 225,225,225,225,225,225,192,193,225,225,225,225,225,225,225,225,225,225,225,225,225,192,193,225,225,225,225,225,225,225,225,225
    db -1,-1,-1,-1,-1,-1,192,193,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,192,193,-1,-1,-1,-1,-1,-1,-1,-1,-1
    db -1,-1,-1,-1,-1,-1,192,193,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,192,193,-1,-1,-1,-1,-1,-1,-1,-1,-1
    db -1,-1,-1,-1,-1,-1,192,193,-1,-1,-1,-1,104,104,104,104,-1,-1,-1,-1,-1,192,193,-1,-1,-1,-1,-1,-1,-1,-1,-1
    db -1,-1,-1,-1,-1,-1,192,193,-1,-1,-1,-1,104,71,71,104,-1,-1,-1,-1,-1,192,193,-1,-1,-1,-1,-1,-1,-1,-1,-1
    db -1,-1,-1,-1,-1,-1,192,193,-1,-1,-1,-1,104,37,37,104,-1,-1,-1,-1,-1,192,193,-1,-1,-1,-1,-1,-1,-1,4,-1
    db 224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,225

level1:
    db 225,225,225,225,225,225,225,225,225,225,225,225,225,225,225,225,225,225,225,225,225,225,225,225,225,225,225,225,225,225,225,225
    db 226,227,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,226,226
    db 226,227,100,101,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,226,226
    db 226,227,132,133,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,226,226
    db 226,227,164,165,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,4,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,226,226
    db 224,224,224,224,224,224,224,224,224,224,192,193,-1,-1,-1,-1,192,193,224,224,224,224,224,224,-1,-1,-1,192,193,224,224,224
    db 226,227,-1,-1,-1,-1,-1,-1,-1,-1,192,193,-1,-1,-1,-1,192,193,-1,-1,-1,-1,-1,-1,-1,-1,-1,192,193,-1,226,227
    db 226,227,-1,-1,-1,-1,-1,-1,-1,-1,192,193,104,104,104,104,192,193,-1,-1,-1,-1,-1,-1,-1,-1,-1,192,193,-1,226,227
    db 226,227,-1,-1,-1,-1,-1,-1,-1,-1,192,193,104,37,37,104,192,193,-1,-1,-1,-1,-1,-1,-1,-1,-1,192,193,-1,226,227
    db 226,227,4,-1,-1,-1,-1,-1,-1,-1,192,193,104,37,37,104,192,193,-1,-1,-1,-1,-1,-1,-1,-1,-1,192,193,-1,226,227
    db 225,225,225,225,225,225,225,225,225,225,225,225,225,225,225,225,225,225,225,225,225,225,225,225,192,193,225,225,225,225,225,225
    db 226,227,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,192,193,-1,-1,-1,-1,226,227
    db 226,227,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,192,193,-1,-1,-1,-1,226,227
    db 226,227,128,129,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,192,193,-1,-1,-1,-1,226,227
    db 226,227,160,161,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,192,193,-1,-1,-1,4,226,227
    db 224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224

level2:
    db 224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224
    db 224,224,-1,-1,-1,-1,-1,-1,224,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,224,-1,-1,-1,-1,-1,100,101,224
    db 224,-1,-1,-1,-1,-1,-1,-1,224,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,224,-1,-1,-1,-1,-1,132,133,224
    db 224,-1,-1,224,224,-1,-1,-1,224,4,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,224,-1,-1,-1,-1,-1,164,165,224
    db 224,-1,-1,-1,224,-1,-1,-1,224,224,224,224,224,224,224,224,224,-1,-1,-1,-1,-1,-1,224,-1,-1,-1,192,193,224,224,224
    db 224,224,-1,-1,224,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,224,-1,-1,-1,-1,-1,224,-1,-1,-1,192,193,-1,-1,224
    db 224,-1,-1,-1,224,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,224,-1,-1,-1,-1,224,-1,-1,-1,192,193,-1,-1,224
    db 224,-1,-1,224,224,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,224,224,224,192,193,224,-1,-1,-1,192,193,-1,-1,224
    db 224,-1,-1,-1,224,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,192,193,-1,-1,-1,-1,192,193,-1,-1,224
    db 224,224,-1,-1,224,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,192,193,-1,-1,128,129,192,193,-1,-1,224
    db 224,-1,-1,-1,224,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,192,193,-1,-1,160,161,192,193,-1,-1,224
    db 224,-1,-1,224,224,224,192,193,224,-1,-1,224,224,224,224,224,224,224,224,224,224,224,224,192,193,224,224,224,224,224,224,224
    db 224,-1,-1,-1,-1,-1,192,193,224,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,192,193,-1,-1,-1,-1,-1,-1,224
    db 224,-1,-1,-1,-1,-1,192,193,224,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,192,193,-1,-1,-1,-1,-1,-1,224
    db 224,4,-1,-1,-1,-1,192,193,224,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,192,193,-1,-1,-1,-1,-1,-1,224
    db 224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224
level3:
    db -1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1
    db 100,101,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1
    db 132,133,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1
    db 164,165,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,4,-1,-1
    db 224,224,224,224,224,224,224,192,193,224,224,224,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,224,224,224,224,224,192,193
    db -1,-1,-1,-1,-1,-1,-1,192,193,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,224,-1,-1,-1,-1,192,193
    db -1,-1,-1,-1,-1,-1,-1,192,193,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,224,224,224,224,-1,-1,-1,-1,192,193
    db -1,4,-1,-1,-1,-1,-1,192,193,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,224,-1,-1,-1,-1,-1,-1,-1,192,193
    db 224,224,224,224,224,224,224,192,193,-1,-1,-1,-1,-1,-1,-1,224,224,224,224,224,224,224,-1,-1,-1,-1,192,193,225,225,225
    db -1,-1,-1,-1,-1,-1,-1,192,193,-1,-1,-1,-1,-1,-1,-1,224,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,192,193,-1,-1,224
    db -1,-1,-1,-1,-1,-1,-1,224,224,224,224,192,193,224,224,224,224,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,192,193,-1,-1,224
    db -1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,192,193,-1,-1,-1,-1,-1,-1,168,169,-1,-1,-1,-1,-1,-1,192,193,-1,-1,224
    db -1,-1,-1,-1,-1,4,-1,-1,-1,-1,-1,192,193,-1,-1,-1,-1,-1,-1,200,201,-1,-1,-1,-1,-1,-1,192,193,-1,-1,224
    db -1,-1,-1,-1,-1,225,225,225,225,225,225,192,193,-1,-1,-1,-1,-1,-1,232,233,-1,128,129,-1,-1,-1,192,193,-1,-1,224
    db -1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,192,193,-1,-1,-1,-1,-1,-1,-1,-1,-1,160,161,-1,-1,-1,192,193,-1,-1,224
    db 224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224



level4:
    db 226,226,226,226,226,226,226,226,226,226,226,226,226,226,226,226,226,226,226,226,226,226,226,226,226,226,226,226,226,226,226,226
    db 226,100,101,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,226
    db 226,132,133,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,226
    db 226,164,165,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,4,-1,226
    db 224,224,224,224,224,224,192,193,224,224,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,224,224,192,193,224,224,224,224,224
    db 226,-1,-1,-1,-1,-1,192,193,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,192,193,-1,-1,-1,-1,226
    db 226,-1,-1,-1,-1,-1,192,193,-1,-1,224,224,224,224,224,-1,-1,-1,-1,224,224,224,224,-1,-1,192,193,-1,-1,-1,-1,226
    db 226,-1,-1,-1,-1,-1,192,193,-1,-1,-1,-1,-1,-1,224,-1,-1,-1,-1,224,-1,-1,-1,-1,-1,192,193,-1,-1,-1,-1,226
    db 226,-1,-1,-1,-1,-1,192,193,-1,-1,-1,-1,-1,-1,224,-1,-1,4,-1,224,-1,-1,-1,-1,-1,192,193,-1,-1,-1,-1,226
    db 226,128,129,-1,-1,-1,192,193,-1,-1,-1,-1,-1,-1,224,-1,-1,224,224,224,-1,-1,-1,-1,-1,192,193,-1,-1,-1,-1,226
    db 226,160,161,-1,-1,-1,192,193,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,192,193,-1,-1,-1,-1,226
    db 224,224,224,224,224,224,192,193,224,224,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,224,224,192,193,224,224,224,224,224
    db 226,-1,-1,-1,-1,-1,192,193,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,192,193,-1,-1,-1,-1,226
    db 226,-1,-1,-1,-1,-1,192,193,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,192,193,-1,-1,-1,-1,226
    db 226,-1,4,-1,-1,-1,192,193,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,192,193,-1,-1,-1,-1,226
    db 226,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224



level5:  
    db 226,226,100,101,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,128,129,226,226
    db 226,226,132,133,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,160,161,226,226
    db 226,226,164,165,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,192,193,224,224,224,224,226,226
    db 226,226,224,224,224,224,224,224,192,193,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,192,193,-1,-1,-1,-1,226,226
    db 226,226,-1,-1,-1,-1,-1,-1,192,193,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,192,193,4,-1,-1,-1,226,226
    db 226,226,-1,-1,-1,-1,-1,-1,224,224,224,224,224,224,224,224,192,193,224,224,224,224,224,224,224,224,224,-1,-1,-1,226,226
    db 226,226,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,192,193,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,226,226
    db 226,226,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,192,193,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,226,226
    db 226,226,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,192,193,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,226,226
    db 226,226,-1,4,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,192,193,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,226,226
    db 226,226,224,224,224,224,224,-1,-1,-1,-1,-1,224,224,224,224,192,193,224,224,224,224,-1,-1,-1,224,224,224,224,224,226,226
    db 226,226,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,192,193,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,226,226
    db 226,226,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,192,193,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,226,226
    db 226,226,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,192,193,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,226,226
    db 226,226,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,192,193,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,4,226,226
    db 226,226,226,226,226,226,226,226,226,226,226,226,226,226,226,226,226,226,226,226,226,226,226,226,226,226,226,226,226,226,226,226


FINAL: