		 output level0.bin
	db   #fe
	dw   INICIO 
	dw   FINAL
	dw   INICIO 
	org  #d000 
INICIO: 
	db -1,-1,-1,5,6,-1,-1,-1,-1,-1,-1,-1,-1,-1,8,9,-1,-1,5,6,-1,-1,-1,-1,-1,8,9,-1,-1,-1,-1,-1
	db -1,-1,-1,37,38,-1,-1,-1,-1,-1,-1,-1,-1,-1,40,41,-1,-1,37,38,-1,-1,-1,-1,-1,40,41,-1,-1,-1,-1,-1
	db -1,-1,-1,37,38,-1,-1,-1,70,-1,39,-1,-1,-1,-1,-1,-1,-1,37,38,-1,-1,39,-1,-1,-1,-1,-1,-1,100,101,-1
	db -1,-1,-1,37,38,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,37,38,-1,-1,-1,-1,0,1,-1,-1,-1,132,133,-1
	db -1,-1,-1,37,38,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,-1,37,38,-1,-1,-1,-1,32,33,71,72,-1,164,165,-1
	db 224,224,224,224,192,193,224,224,224,224,224,224,224,224,224,224,224,224,224,224,192,193,224,224,224,224,224,224,224,224,224,224
	db -1,-1,-1,-1,192,193,-1,-1,5,6,-1,-1,8,9,-1,-1,-1,-1,-1,-1,192,193,-1,-1,5,6,-1,-1,-1,-1,-1,-1
	db -1,-1,-1,-1,192,193,-1,-1,37,38,-1,-1,-1,12,13,14,15,16,-1,-1,192,193,-1,-1,37,38,-1,-1,-1,-1,-1,-1
	db -1,72,-1,-1,192,193,-1,-1,37,38,-1,42,43,44,45,46,68,69,-1,-1,192,193,-1,-1,37,38,-1,-1,-1,-1,-1,-1
	db -1,-1,-1,-1,192,193,-1,-1,37,38,-1,74,75,76,77,78,79,80,81,-1,192,193,-1,-1,37,38,-1,-1,-1,-1,-1,-1
	db -1,-1,-1,-1,192,193,-1,-1,37,38,-1,-1,-1,-1,-1,110,111,112,-1,-1,192,193,-1,-1,37,38,-1,-1,-1,-1,-1,-1
	db 224,224,224,224,224,224,224,224,224,192,193,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224
	db -1,-1,-1,5,6,-1,-1,8,9,192,193,-1,-1,-1,-1,-1,-1,-1,5,6,-1,-1,-1,-1,-1,-1,8,9,-1,-1,-1,-1
	db -1,-1,-1,37,38,-1,-1,40,41,192,193,-1,-1,31,31,31,31,31,37,38,68,17,18,19,20,21,40,41,-1,-1,72,-1
	db -1,-1,-1,37,38,-1,-1,-1,-1,192,193,-1,198,198,198,198,198,198,37,38,-1,49,50,51,52,53,-1,-1,-1,-1,-1,-1
	db 128,129,-1,37,38,-1,0,1,-1,192,193,-1,198,-1,-1,-1,-1,198,37,38,-1,-1,-1,-1,-1,-1,-1,-1,0,1,-1,-1
	db 160,161,-1,37,38,-1,32,33,-1,192,193,-1,198,-1,-1,-1,-1,198,37,38,-1,113,-1,-1,268,-1,270,-1,32,33,-1,-1
	db 224,224,224,224,192,193,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,192,193,224,224,224,224,224,224,224,224,224
	db -1,-1,-1,-1,192,193,-1,-1,8,9,-1,-1,-1,5,6,-1,-1,8,9,-1,-1,192,193,-1,-1,-1,-1,5,6,-1,-1,-1
	db 68,69,-1,-1,192,193,-1,-1,40,41,-1,-1,-1,37,38,-1,-1,40,41,-1,-1,192,193,-1,-1,-1,-1,37,38,-1,39,-1
	db -1,-1,-1,-1,192,193,-1,-1,-1,-1,0,1,-1,37,38,-1,68,69,-1,-1,-1,192,193,-1,-1,72,-1,37,38,-1,-1,-1
	db -1,-1,-1,-1,192,193,-1,-1,-1,-1,32,33,-1,37,38,-1,-1,-1,-1,-1,-1,192,193,-1,-1,-1,-1,37,38,-1,-1,-1
	db 224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224,224
FINAL: 