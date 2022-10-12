  
        output "world0.bin"

    db   #fe               ; ID archivo binario, siempre hay que poner el mismo -1FEh
    dw   INICIO            ; dirección de inicio
    dw   FINAL - 1         ; dirección final
    dw   INICIO             ; dircción del programa de ejecución (para cuando pongas r en bload"nombre_programa", r)

    org #d000 ; o 57344, org se utiliza para decirle al z80 en que posición de memoria RAM empieza nuestro programa en ensamblador

INICIO:
    ret ; el ret es necesario para que vuelva al basic
level0:
    ;200 tiles de ancho x 23 de alto, dejamos 3 tiles en la parte de debajo para el marcador





    db -1,-1,-1,5,6,-1,-1,-1,-1,-1,-1,-1,-1,-1,8,9,-1,-1,5,6,-1,-1,-1,-1,-1,8,9,-1,-1,-1,-1,-1
    db -1,-1,-1,37,38,-1,-1,-1,-1,-1,-1,-1,-1,-1,40,41,-1,-1,37,38,-1,-1,-1,-1,-1,40,41,-1,-1,-1,-1,-1
    db -1,-1,-1,37,38,-1,-1,-1,70,-1,39,-1,-1,-1,-1,-1,-1,-1,37,38,-1,-1,39,-1,-1,-1,-1,-1,-1,100,101,-1
    db -1,-1,-1,37,38,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,37,38,-1,-1,-1,-1,0,1,-1,-1,-1,132,133,-1
    db -1,-1,-1,37,38,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,37,38,-1,-1,-1,-1,32,33,71,72,-1,164,165,-1
    db 224,224,224,224,192,193,224,224,224,224,224,224,224,224,224,224,224,224,224,224,192,193,224,224,224,224,224,224,224,224,224,224
    db -1,-1,-1,-1,192,193,-1,-1,5,6,-1,-1,8,9,-1,-1,-1,-1,-1,-1,192,193,-1,-1,5,6,-1,-1,-1,-1,-1,-1
    db -1,-1,-1,-1,192,193,-1,-1,37,38,-1,10,11,12,13,14,15,16,-1,-1,192,193,-1,-1,37,38,-1,-1,-1,-1,-1,-1
    db -1,72,-1,-1,192,193,-1,-1,37,38,-1,42,43,44,45,46,47,48,70,-1,192,193,-1,-1,37,38,-1,-1,-1,-1,-1,-1
    db -1,-1,-1,-1,192,193,-1,-1,37,38,-1,74,75,76,77,78,79,80,81,-1,192,193,-1,-1,37,38,-1,-1,-1,-1,-1,-1
    db -1,-1,-1,-1,192,193,-1,-1,37,38,-1,-1,-1,108,109,110,111,112,-1,-1,192,193,-1,-1,37,38,-1,-1,-1,-1,-1,-1
    db 224,224,224,224,224,224,224,224,224,224,224,192,193,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224
    db -1,-1,-1,5,6,-1,-1,8,9,-1,-1,192,193,-1,-1,-1,-1,-1,5,6,-1,-1,-1,-1,-1,-1,8,9,-1,-1,-1,-1
    db -1,-1,-1,37,38,-1,-1,40,41,-1,-1,192,193,31,31,31,31,31,37,38,68,17,18,19,20,21,40,41,-1,-1,72,-1
    db -1,-1,-1,37,38,-1,-1,-1,-1,-1,-1,192,193,31,31,70,31,31,37,38,-1,49,50,51,52,53,-1,-1,-1,-1,-1,-1
    db 128,129,-1,37,38,-1,0,1,-1,-1,-1,192,193,31,-1,-1,-1,31,37,38,-1,-1,82,83,84,85,-1,-1,0,1,-1,-1
    db 160,161,-1,37,38,-1,32,33,-1,-1,-1,192,193,31,-1,-1,-1,31,37,38,-1,113,114,115,116,117,-1,-1,32,33,-1,-1
    db 224,224,224,224,192,193,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,192,193,224,224,224,224,224,224,224,224,224
    db -1,-1,-1,-1,192,193,-1,-1,8,9,-1,-1,-1,5,6,-1,-1,8,9,-1,-1,192,193,-1,-1,-1,-1,5,6,-1,-1,-1
    db 68,69,-1,-1,192,193,-1,-1,40,41,-1,-1,-1,37,38,-1,-1,40,41,-1,-1,192,193,-1,-1,-1,-1,37,38,-1,39,-1
    db -1,-1,-1,-1,192,193,-1,-1,-1,-1,0,1,-1,37,38,-1,68,69,-1,-1,-1,192,193,-1,-1,72,-1,37,38,-1,-1,-1
    db -1,-1,-1,-1,192,193,-1,-1,-1,-1,32,33,-1,37,38,-1,-1,-1,-1,-1,-1,192,193,-1,-1,-1,-1,37,38,-1,-1,-1
    db 224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224

FINAL: