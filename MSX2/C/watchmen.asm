;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.0.0 #11528 (MINGW64)
;--------------------------------------------------------
	.module watchmen
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _HMMM
	.globl _HMMC
	.globl _BoxFill
	.globl _getBuffer
	.globl _Read
	.globl _Close
	.globl _Open
	.globl _sys_entity_get_max_shot
	.globl _sys_entity_get_array_structs_objects
	.globl _sys_entity_get_array_structs_shots
	.globl _sys_entity_get_array_structs_enemies
	.globl _sys_entity_create_object
	.globl _sys_entity_create_shot
	.globl _sys_entity_create_enemy1
	.globl _Reg7Patch
	.globl _free
	.globl _rand
	.globl _PT3Init
	.globl _SC5SpriteColors
	.globl _SetSpritePattern
	.globl _PutSprite
	.globl _SpriteReset
	.globl _SpriteOn
	.globl _SpriteOff
	.globl _SpriteSmall
	.globl _Sprite16
	.globl _fcb_read
	.globl _fcb_close
	.globl _fcb_open
	.globl _InitPSG
	.globl _PSGwrite
	.globl _PSGRead
	.globl _MMalloc
	.globl _Itoa
	.globl _KillKeyBuffer
	.globl _WaitKey
	.globl _PutText
	.globl _ShowDisplay
	.globl _SetColors
	.globl _JoystickRead
	.globl _RealTimer
	.globl _SetRealTimer
	.globl _Screen
	.globl _Cls
	.globl _KeySound
	.globl _fileNameSong
	.globl _fileNameSongEffects
	.globl _resultado
	.globl _array_shots
	.globl _array_objects
	.globl _array_enemies
	.globl _collision_divan
	.globl _destiny_y_phone
	.globl _destiny_x_phone
	.globl _destiny_y_door
	.globl _destiny_x_door
	.globl _memory_space
	.globl _secunds
	.globl _minutes
	.globl _hours
	.globl _count_down
	.globl _time
	.globl _created_enemy2
	.globl _world_money
	.globl _enabled_world_change
	.globl _world_change
	.globl _actual_world
	.globl _player
	.globl _game_over
	.globl _TFileMusic
	.globl _songBuffer
	.globl _TFileEffects
	.globl _songEffectsBuffer
	.globl _sys_ai_contador
	.globl _array_jump
	.globl _contador_jump
	.globl _tile_pie
	.globl _tile_abajo
	.globl _tile_arriba
	.globl _tile_izquierda
	.globl _tile_derecha
	.globl _buffer
	.globl _num_objects
	.globl _num_shots
	.globl _num_enemies
	.globl _array_structs_objects
	.globl _array_structs_shots
	.globl _array_structs_enemies
	.globl _shot_template
	.globl _enemy1_template
	.globl _object_template
	.globl _player_template
	.globl _InitFX
	.globl _PlayFX
	.globl _UpdateFX
	.globl _TestFX
	.globl _FreeFX
	.globl _sys_entities_init
	.globl _sys_entity_create_player
	.globl _sys_entity_erase_enemy
	.globl _sys_entity_erase_all_enemies
	.globl _sys_entity_erase_shot
	.globl _sys_entity_erase_object
	.globl _sys_entity_erase_all_objects
	.globl _sys_entity_get_num_enemies
	.globl _sys_entity_get_num_shots
	.globl _sys_entity_get_num_objects
	.globl _sys_entity_get_max_enemies
	.globl _sys_entity_get_max_objects
	.globl _sys_anim_init
	.globl _sys_anim_update
	.globl _load_file_into_buffer_with_structure
	.globl _load_file_into_buffer
	.globl _enter_name_and_extension_in_structure
	.globl _sys_collider_init
	.globl _sys_collider_get_column_entity
	.globl _sys_collider_get_file_entity
	.globl _sys_collider_get_tile_array
	.globl _sys_collider_get_tile_right_array
	.globl _sys_collider_get_tile_left_array
	.globl _sys_collider_get_tile_up_array
	.globl _sys_collider_get_tile_down_array
	.globl _get_tile_down_left_array
	.globl _get_tile_down_right_array
	.globl _sys_collider_entity1_collider_entity
	.globl _sys_collider_entity1_collider_shot
	.globl _sys_physics_update
	.globl _sys_check_tiled_enviroment
	.globl _sys_physics_check_keyboard
	.globl _entity_jump
	.globl _sys_render_init
	.globl _sys_render_update
	.globl _sys_render_update_player
	.globl _sys_render_update_enemy1
	.globl _sys_render_update_enemy2
	.globl _sys_render_update_shot
	.globl _sys_render_update_object_money
	.globl _sys_render_update_object_divan1
	.globl _sys_ai_init
	.globl _sys_ai_update
	.globl _sys_ai_update_enemy_behavior_1
	.globl _sys_ai_update_enemy_behavior_2
	.globl _sys_ai_update_enemy_boss1
	.globl _man_game_init
	.globl _man_game_play
	.globl _player_die
	.globl _sys_entity_get_num_moneys
	.globl _man_game_update
	.globl _man_game_pintarMapa
	.globl _man_game_copy_sprites_definition_to_VRAM
	.globl _man_game_copy_color_sprite_to_VRAM
	.globl _wait
	.globl _man_game_cargar_buffer_musica
	.globl _man_game_reproducir_musica_y_efectos
	.globl _man_game_cargar_buffer_efectos_sonido
	.globl _man_game_reproducir_efecto_sonido
	.globl _debug
	.globl _pintar_HUD
	.globl _show_menu_screen
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_afbdata:
	.ds 2
_afx:
	.ds 6
_noises:
	.ds 2
_array_structs_enemies::
	.ds 84
_array_structs_shots::
	.ds 21
_array_structs_objects::
	.ds 105
_num_enemies::
	.ds 1
_num_shots::
	.ds 1
_num_objects::
	.ds 1
_buffer::
	.ds 27142
_tile_derecha::
	.ds 2
_tile_izquierda::
	.ds 2
_tile_arriba::
	.ds 2
_tile_abajo::
	.ds 2
_tile_pie::
	.ds 2
_contador_jump::
	.ds 1
_array_jump::
	.ds 5
_sys_ai_contador::
	.ds 2
_songEffectsBuffer::
	.ds 1207
_TFileEffects::
	.ds 37
_songBuffer::
	.ds 264
_TFileMusic::
	.ds 37
_game_over::
	.ds 1
_player::
	.ds 2
_actual_world::
	.ds 1
_world_change::
	.ds 1
_enabled_world_change::
	.ds 1
_world_money::
	.ds 1
_created_enemy2::
	.ds 1
_time::
	.ds 2
_count_down::
	.ds 2
_hours::
	.ds 2
_minutes::
	.ds 2
_secunds::
	.ds 2
_memory_space::
	.ds 2
_destiny_x_door::
	.ds 2
_destiny_y_door::
	.ds 2
_destiny_x_phone::
	.ds 2
_destiny_y_phone::
	.ds 2
_collision_divan::
	.ds 1
_array_enemies::
	.ds 2
_array_objects::
	.ds 2
_array_shots::
	.ds 2
_resultado::
	.ds 2
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
_fileNameSongEffects::
	.ds 12
_fileNameSong::
	.ds 10
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area _DABS (ABS)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area _HOME
	.area _GSINIT
	.area _GSFINAL
	.area _GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
;src/man/../../fusion-c/header/ayfx_player.h:79: void InitFX(void) 
;	---------------------------------
; Function InitFX
; ---------------------------------
_InitFX::
;src/man/../../fusion-c/header/ayfx_player.h:83: InitPSG();/* Inicializa el PSG a sus valores por defecto */
	call	_InitPSG
;src/man/../../fusion-c/header/ayfx_player.h:84: for(i=0; i<3; i++) {
	ld	bc, #_afx+0
	ld	e, #0x00
00102$:
;src/man/../../fusion-c/header/ayfx_player.h:85: afx[i].position = 0;
	ld	l, e
	ld	h, #0x00
	add	hl, hl
	add	hl, bc
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
;src/man/../../fusion-c/header/ayfx_player.h:84: for(i=0; i<3; i++) {
	inc	e
	ld	a, e
	sub	a, #0x03
	jr	C,00102$
;src/man/../../fusion-c/header/ayfx_player.h:87: }
	ret
_Done_Version:
	.ascii "Made with FUSION-C 1.2 (ebsoft)"
	.db 0x00
;src/man/../../fusion-c/header/ayfx_player.h:90: static void setnoises(void) 
;	---------------------------------
; Function setnoises
; ---------------------------------
_setnoises:
	call	___sdcc_enter_ix
	push	af
	push	af
	dec	sp
;src/man/../../fusion-c/header/ayfx_player.h:96: noises = MMalloc((int)afbdata[0]+1);
	ld	hl, (_afbdata)
	ld	c, (hl)
	ld	b, #0x00
	inc	bc
	push	bc
	call	_MMalloc
	pop	af
	ld	(_noises), hl
;src/man/../../fusion-c/header/ayfx_player.h:97: for(nfx=1;nfx<=afbdata[0];nfx++) {
	ld	c, #0x01
00115$:
	ld	hl, (_afbdata)
	ld	a, (hl)
	sub	a, c
	jp	C, 00117$
;src/man/../../fusion-c/header/ayfx_player.h:98: noises[nfx]=FALSE;
	ld	hl, (_noises)
	ld	b, #0x00
	add	hl, bc
	ld	(hl), #0x00
;src/man/../../fusion-c/header/ayfx_player.h:99: highbyte = ((int)(afbdata[(nfx*2)] & 0xFF)) << 8;
	ld	l, c
	ld	h, #0x00
	add	hl, hl
	ld	-4 (ix), l
	ld	-3 (ix), h
	ld	iy, #_afbdata
	ld	a, 0 (iy)
	add	a, -4 (ix)
	ld	l, a
	ld	a, 1 (iy)
	adc	a, -3 (ix)
	ld	h, a
	ld	e, (hl)
	ld	-1 (ix), e
	ld	-2 (ix), #0x00
;src/man/../../fusion-c/header/ayfx_player.h:100: position = (int)((afbdata[(nfx*2)-1]) | highbyte)+(nfx*2);
	ld	e, -4 (ix)
	ld	d, -3 (ix)
	dec	de
	ld	a, 0 (iy)
	add	a, e
	ld	e, a
	ld	a, 1 (iy)
	adc	a, d
	ld	d, a
	ld	a, (de)
	ld	e, a
	ld	d, #0x00
	ld	a, e
	or	a, -2 (ix)
	ld	e, a
	ld	a, d
	or	a, -1 (ix)
	ld	d, a
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	add	hl, de
	ex	de,hl
;src/man/../../fusion-c/header/ayfx_player.h:101: exit=FALSE;
	ld	b, #0x00
;src/man/../../fusion-c/header/ayfx_player.h:102: while(exit==FALSE) {
00110$:
	ld	a, b
	or	a, a
	jp	NZ, 00116$
;src/man/../../fusion-c/header/ayfx_player.h:103: if(afbdata[position] == 0xD0 && afbdata[position+1] == 0x20) {
	ld	iy, #_afbdata
	ld	a, 0 (iy)
	add	a, e
	ld	-2 (ix), a
	ld	a, 1 (iy)
	adc	a, d
	ld	-1 (ix), a
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	a, (hl)
	ld	-5 (ix), a
	sub	a, #0xd0
	jr	NZ,00102$
	ld	hl, #0x0001
	add	hl, de
	ld	-4 (ix), l
	ld	-3 (ix), h
	ld	a, 0 (iy)
	add	a, -4 (ix)
	ld	-2 (ix), a
	ld	a, 1 (iy)
	adc	a, -3 (ix)
	ld	-1 (ix), a
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	a, (hl)
	sub	a, #0x20
	jr	NZ,00102$
;src/man/../../fusion-c/header/ayfx_player.h:104: exit = TRUE;
	ld	b, #0x01
;src/man/../../fusion-c/header/ayfx_player.h:105: continue;
	jr	00110$
00102$:
;src/man/../../fusion-c/header/ayfx_player.h:107: flagbyte = afbdata[position];
	ld	l, -5 (ix)
;src/man/../../fusion-c/header/ayfx_player.h:108: if((flagbyte>>7)==0) {
	ld	a, l
	rlca
	jr	C,00105$
;src/man/../../fusion-c/header/ayfx_player.h:109: noises[nfx]=TRUE;
	ld	iy, #_noises
	ld	a, 0 (iy)
	add	a, c
	ld	-2 (ix), a
	ld	a, 1 (iy)
	adc	a, #0x00
	ld	-1 (ix), a
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	(hl), #0x01
;src/man/../../fusion-c/header/ayfx_player.h:110: exit=TRUE;
	ld	b, #0x01
;src/man/../../fusion-c/header/ayfx_player.h:111: continue;
	jr	00110$
00105$:
;src/man/../../fusion-c/header/ayfx_player.h:113: if((flagbyte & MASK_CHANGE_TONE) == MASK_CHANGE_TONE) {
	ld	a, l
	and	a, #0x20
	ld	-2 (ix), a
	ld	-1 (ix), #0x00
	ld	a, -2 (ix)
	sub	a, #0x20
	or	a, -1 (ix)
	jr	NZ,00107$
;src/man/../../fusion-c/header/ayfx_player.h:114: position = position + 2;
	inc	de
	inc	de
00107$:
;src/man/../../fusion-c/header/ayfx_player.h:116: if((flagbyte & MASK_CHANGE_NOISE) == MASK_CHANGE_NOISE) {
	ld	a, l
	and	a, #0x40
	ld	l, a
	ld	h, #0x00
	ld	a, l
	sub	a, #0x40
	or	a, h
	jr	NZ,00109$
;src/man/../../fusion-c/header/ayfx_player.h:117: position++;
	inc	de
00109$:
;src/man/../../fusion-c/header/ayfx_player.h:119: position++;
	inc	de
	jp	00110$
00116$:
;src/man/../../fusion-c/header/ayfx_player.h:97: for(nfx=1;nfx<=afbdata[0];nfx++) {
	inc	c
	jp	00115$
00117$:
;src/man/../../fusion-c/header/ayfx_player.h:122: }
	ld	sp, ix
	pop	ix
	ret
;src/man/../../fusion-c/header/ayfx_player.h:127: char PlayFX(unsigned char nfx)  /* Numero a sfx */
;	---------------------------------
; Function PlayFX
; ---------------------------------
_PlayFX::
	call	___sdcc_enter_ix
	push	af
;src/man/../../fusion-c/header/ayfx_player.h:131: if(nfx<=afbdata[0]) {
	ld	hl, (_afbdata)
	ld	a, (hl)
	sub	a, 4 (ix)
	jr	C,00110$
;src/man/../../fusion-c/header/ayfx_player.h:132: highbyte = ((int)(afbdata[(nfx*2)] & 0xFF)) << 8;
	ld	l, 4 (ix)
	ld	h, #0x00
	add	hl, hl
	ld	c, l
	ld	b, h
	ld	hl, (_afbdata)
	add	hl, bc
	ld	e, (hl)
	xor	a, a
	ld	-1 (ix), e
	ld	-2 (ix), #0x00
;src/man/../../fusion-c/header/ayfx_player.h:133: position = (int)((afbdata[(nfx*2)-1]) | highbyte)+(nfx*2);
	ld	e, c
	ld	d, b
	dec	de
	ld	iy, #_afbdata
	ld	a, 0 (iy)
	add	a, e
	ld	e, a
	ld	a, 1 (iy)
	adc	a, d
	ld	d, a
	ld	a, (de)
	ld	e, a
	ld	d, #0x00
	ld	a, e
	or	a, -2 (ix)
	ld	l, a
	ld	a, d
	or	a, -1 (ix)
	ld	h, a
	add	hl, bc
	ld	c, l
	ld	b, h
;src/man/../../fusion-c/header/ayfx_player.h:134: if(noises[nfx]==TRUE) {
	ld	iy, #_noises
	ld	a, 0 (iy)
	add	a, 4 (ix)
	ld	e, a
	ld	a, 1 (iy)
	adc	a, #0x00
	ld	d, a
	ld	a, (de)
	dec	a
	jr	NZ,00102$
;src/man/../../fusion-c/header/ayfx_player.h:135: afx[0].position=position;
	ld	(_afx), bc
;src/man/../../fusion-c/header/ayfx_player.h:136: return(0);
	ld	l, #0x00
	jr	00111$
00102$:
;src/man/../../fusion-c/header/ayfx_player.h:138: if (afx[1].position==0) {
	ld	hl, (#(_afx + 0x0002) + 0)
	ld	a, h
	or	a, l
	jr	NZ,00107$
;src/man/../../fusion-c/header/ayfx_player.h:139: afx[1].position=position;
	ld	((_afx + 0x0002)), bc
	jr	00110$
00107$:
;src/man/../../fusion-c/header/ayfx_player.h:140: } else if (afx[2].position==0) {
	ld	hl, (#(_afx + 0x0004) + 0)
	ld	a, h
	or	a, l
	jr	NZ,00104$
;src/man/../../fusion-c/header/ayfx_player.h:141: afx[2].position=position;
	ld	((_afx + 0x0004)), bc
	jr	00110$
00104$:
;src/man/../../fusion-c/header/ayfx_player.h:143: afx[0].position=position;
	ld	(_afx), bc
00110$:
;src/man/../../fusion-c/header/ayfx_player.h:146: return(0);
	ld	l, #0x00
00111$:
;src/man/../../fusion-c/header/ayfx_player.h:147: }
	pop	af
	pop	ix
	ret
;src/man/../../fusion-c/header/ayfx_player.h:149: char Reg7Patch(char content)
;	---------------------------------
; Function Reg7Patch
; ---------------------------------
_Reg7Patch::
;src/man/../../fusion-c/header/ayfx_player.h:154: varf=(content | 0b10000000);
	ld	iy, #2
	add	iy, sp
	ld	a, 0 (iy)
	set	7, a
;src/man/../../fusion-c/header/ayfx_player.h:155: content=(varf & 0b10111111);
	and	a, #0xbf
	ld	0 (iy), a
;src/man/../../fusion-c/header/ayfx_player.h:157: return(content);
	ld	l, 0 (iy)
;src/man/../../fusion-c/header/ayfx_player.h:159: }
	ret
;src/man/../../fusion-c/header/ayfx_player.h:161: static char playsnd(unsigned char i) 
;	---------------------------------
; Function playsnd
; ---------------------------------
_playsnd:
	call	___sdcc_enter_ix
	ld	hl, #-11
	add	hl, sp
	ld	sp, hl
;src/man/../../fusion-c/header/ayfx_player.h:165: reg7=0;
	xor	a, a
	ld	-8 (ix), a
;src/man/../../fusion-c/header/ayfx_player.h:167: if(afbdata[afx[i].position] == 0xD0 && afbdata[afx[i].position+1] == 0x20) {
	ld	bc, #_afx+0
	ld	l, 4 (ix)
	ld	h, #0x00
	add	hl, hl
	add	hl, bc
	ld	-7 (ix), l
	ld	-6 (ix), h
	ld	a, (hl)
	ld	-3 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-2 (ix), a
	ld	iy, #_afbdata
	ld	a, 0 (iy)
	add	a, -3 (ix)
	ld	l, a
	ld	a, 1 (iy)
	adc	a, -2 (ix)
	ld	h, a
	ld	a, (hl)
	ld	-1 (ix), a
	sub	a, #0xd0
	jr	NZ,00102$
	ld	c, -3 (ix)
	ld	b, -2 (ix)
	inc	bc
	ld	hl, (_afbdata)
	add	hl, bc
	ld	a, (hl)
	sub	a, #0x20
	jr	NZ,00102$
;src/man/../../fusion-c/header/ayfx_player.h:168: afx[i].position=0;
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
;src/man/../../fusion-c/header/ayfx_player.h:169: return (FALSE); /* Fin de SFX, mutar canal */
	ld	l, #0x00
	jp	00116$
00102$:
;src/man/../../fusion-c/header/ayfx_player.h:171: flagbyte = afbdata[afx[i].position];
	ld	a, -1 (ix)
;src/man/../../fusion-c/header/ayfx_player.h:173: volume = flagbyte & MASK_VOLUME;
	ld	-3 (ix), a
	and	a, #0x0f
	ld	c, a
;src/man/../../fusion-c/header/ayfx_player.h:174: PSGwrite(VOLUME_REG_0+i,(PSGRead(VOLUME_REG_0+i) & !MASK_NEW_VOL) | volume);
	ld	a, 4 (ix)
	add	a, #0x08
	ld	b, a
	push	bc
	push	bc
	inc	sp
	call	_PSGRead
	inc	sp
	pop	bc
	ld	a, c
	push	af
	inc	sp
	push	bc
	inc	sp
	call	_PSGwrite
	pop	af
;src/man/../../fusion-c/header/ayfx_player.h:176: if((flagbyte & MASK_CHANGE_TONE) == MASK_CHANGE_TONE) {
	ld	a, -3 (ix)
	ld	-11 (ix), a
	xor	a, a
	ld	-10 (ix), a
	ld	a, -11 (ix)
	and	a, #0x20
	ld	c, a
	ld	b, #0x00
	ld	a, c
	sub	a, #0x20
	or	a, b
	jp	NZ,00105$
;src/man/../../fusion-c/header/ayfx_player.h:177: afx[i].position++;
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	a, (hl)
	ld	-5 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-4 (ix), a
	ld	a, -5 (ix)
	add	a, #0x01
	ld	-2 (ix), a
	ld	a, -4 (ix)
	adc	a, #0x00
	ld	-1 (ix), a
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	a, -2 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -1 (ix)
	ld	(hl), a
;src/man/../../fusion-c/header/ayfx_player.h:178: PSGwrite((TONE_REG_0)+(i*2), afbdata[afx[i].position]);
	ld	iy, #_afbdata
	ld	a, 0 (iy)
	add	a, -2 (ix)
	ld	l, a
	ld	a, 1 (iy)
	adc	a, -1 (ix)
	ld	h, a
	ld	b, (hl)
	ld	a, 4 (ix)
	add	a, a
	ld	-9 (ix), a
	push	bc
	inc	sp
	ld	a, -9 (ix)
	push	af
	inc	sp
	call	_PSGwrite
	pop	af
;src/man/../../fusion-c/header/ayfx_player.h:179: afx[i].position++;
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	a, (hl)
	ld	-5 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-4 (ix), a
	ld	a, -5 (ix)
	add	a, #0x01
	ld	-2 (ix), a
	ld	a, -4 (ix)
	adc	a, #0x00
	ld	-1 (ix), a
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	a, -2 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -1 (ix)
	ld	(hl), a
;src/man/../../fusion-c/header/ayfx_player.h:180: PSGwrite((TONE_REG_1)+(i*2), afbdata[afx[i].position]);
	ld	iy, #_afbdata
	ld	a, 0 (iy)
	add	a, -2 (ix)
	ld	l, a
	ld	a, 1 (iy)
	adc	a, -1 (ix)
	ld	h, a
	ld	b, (hl)
	ld	a, -9 (ix)
	inc	a
	push	bc
	inc	sp
	push	af
	inc	sp
	call	_PSGwrite
	pop	af
00105$:
;src/man/../../fusion-c/header/ayfx_player.h:183: if((flagbyte & MASK_CHANGE_NOISE) == MASK_CHANGE_NOISE) {
	ld	a, -11 (ix)
	and	a, #0x40
	ld	c, a
	ld	b, #0x00
	ld	a, c
	sub	a, #0x40
	or	a, b
	jr	NZ,00107$
;src/man/../../fusion-c/header/ayfx_player.h:184: afx[i].position++;
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	inc	bc
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
;src/man/../../fusion-c/header/ayfx_player.h:185: PSGwrite(NOISE_REG, afbdata[afx[i].position]);
	ld	hl, (_afbdata)
	add	hl, bc
	ld	d, (hl)
	ld	e,#0x06
	push	de
	call	_PSGwrite
	pop	af
00107$:
;src/man/../../fusion-c/header/ayfx_player.h:188: disable_tn = (flagbyte & MASK_DISABLE_TONE) >> 3;
	ld	a, -11 (ix)
	and	a, #0x10
	ld	-2 (ix), a
	ld	-1 (ix), #0x00
	ld	a, -2 (ix)
	ld	-2 (ix), a
	ld	a, -1 (ix)
	ld	-1 (ix), a
	ld	b, #0x03
00176$:
	sra	-1 (ix)
	rr	-2 (ix)
	djnz	00176$
	ld	a, -2 (ix)
	ld	-1 (ix), a
;src/man/../../fusion-c/header/ayfx_player.h:189: switch (i)
	ld	a, 4 (ix)
	or	a, a
	ld	a, #0x01
	jr	Z,00178$
	xor	a, a
00178$:
	ld	-5 (ix), a
	ld	a, 4 (ix)
	dec	a
	ld	a, #0x01
	jr	Z,00180$
	xor	a, a
00180$:
	ld	-4 (ix), a
	ld	a, 4 (ix)
	sub	a, #0x02
	ld	a, #0x01
	jr	Z,00182$
	xor	a, a
00182$:
	ld	-2 (ix), a
;src/man/../../fusion-c/header/ayfx_player.h:192: reg7=(PSGRead(MIXER_REG) & DISABLE_TONE_A) | (disable_tn << i);
	ld	b, 4 (ix)
	ld	c, -1 (ix)
	inc	b
	jr	00184$
00183$:
	sla	c
00184$:
	djnz	00183$
;src/man/../../fusion-c/header/ayfx_player.h:189: switch (i)
	ld	a, -5 (ix)
	or	a, a
	jr	NZ,00108$
	ld	a, -4 (ix)
	or	a, a
	jr	NZ,00109$
	ld	a, -2 (ix)
	or	a, a
	jr	NZ,00110$
	jr	00111$
;src/man/../../fusion-c/header/ayfx_player.h:191: case 0:
00108$:
;src/man/../../fusion-c/header/ayfx_player.h:192: reg7=(PSGRead(MIXER_REG) & DISABLE_TONE_A) | (disable_tn << i);
	push	bc
	ld	a, #0x07
	push	af
	inc	sp
	call	_PSGRead
	inc	sp
	ld	a, l
	pop	bc
	res	0, a
	or	a, c
	ld	-8 (ix), a
;src/man/../../fusion-c/header/ayfx_player.h:194: break;
	jr	00111$
;src/man/../../fusion-c/header/ayfx_player.h:196: case 1:
00109$:
;src/man/../../fusion-c/header/ayfx_player.h:197: reg7=(PSGRead(MIXER_REG) & DISABLE_TONE_B) | (disable_tn << i);
	push	bc
	ld	a, #0x07
	push	af
	inc	sp
	call	_PSGRead
	inc	sp
	ld	a, l
	pop	bc
	res	1, a
	or	a, c
	ld	-8 (ix), a
;src/man/../../fusion-c/header/ayfx_player.h:199: break;
	jr	00111$
;src/man/../../fusion-c/header/ayfx_player.h:201: case 2:
00110$:
;src/man/../../fusion-c/header/ayfx_player.h:202: reg7=(PSGRead(MIXER_REG) & DISABLE_TONE_C) | (disable_tn << i);
	push	bc
	ld	a, #0x07
	push	af
	inc	sp
	call	_PSGRead
	inc	sp
	ld	a, l
	pop	bc
	res	2, a
	or	a, c
	ld	-8 (ix), a
;src/man/../../fusion-c/header/ayfx_player.h:205: }
00111$:
;src/man/../../fusion-c/header/ayfx_player.h:207: PSGwrite(MIXER_REG,Reg7Patch(reg7));
	ld	a, -8 (ix)
	push	af
	inc	sp
	call	_Reg7Patch
	inc	sp
	ld	d, l
	ld	e,#0x07
	push	de
	call	_PSGwrite
	pop	af
;src/man/../../fusion-c/header/ayfx_player.h:218: disable_tn = flagbyte >> 7;
	ld	a, -3 (ix)
	rlca
	and	a, #0x01
	ld	c, a
;src/man/../../fusion-c/header/ayfx_player.h:222: reg7=(PSGRead(MIXER_REG) & DISABLE_NOISE_A) | (disable_tn << (i+3));
	ld	a, 4 (ix)
	ld	-1 (ix), a
	ld	-3 (ix), c
	inc	-1 (ix)
	inc	-1 (ix)
	inc	-1 (ix)
	ld	b, -1 (ix)
	ld	a, -3 (ix)
	ld	-1 (ix), a
	inc	b
	jr	00186$
00185$:
	sla	-1 (ix)
00186$:
	djnz	00185$
;src/man/../../fusion-c/header/ayfx_player.h:219: switch (i)
	ld	a, -5 (ix)
	or	a, a
	jr	NZ,00112$
	ld	a, -4 (ix)
	or	a, a
	jr	NZ,00113$
	ld	a, -2 (ix)
	or	a, a
	jr	NZ,00114$
	jr	00115$
;src/man/../../fusion-c/header/ayfx_player.h:221: case 0:
00112$:
;src/man/../../fusion-c/header/ayfx_player.h:222: reg7=(PSGRead(MIXER_REG) & DISABLE_NOISE_A) | (disable_tn << (i+3));
	ld	a, #0x07
	push	af
	inc	sp
	call	_PSGRead
	inc	sp
	ld	-2 (ix), l
	ld	a, l
	and	a, #0xf7
	ld	-2 (ix), a
	or	a, -1 (ix)
	ld	-8 (ix), a
;src/man/../../fusion-c/header/ayfx_player.h:224: break;
	jr	00115$
;src/man/../../fusion-c/header/ayfx_player.h:226: case 1:
00113$:
;src/man/../../fusion-c/header/ayfx_player.h:227: reg7=(PSGRead(MIXER_REG) & DISABLE_NOISE_B) | (disable_tn << (i+3));
	ld	a, #0x07
	push	af
	inc	sp
	call	_PSGRead
	inc	sp
	ld	a, l
	res	4, a
	or	a, -1 (ix)
	ld	-8 (ix), a
;src/man/../../fusion-c/header/ayfx_player.h:229: break;
	jr	00115$
;src/man/../../fusion-c/header/ayfx_player.h:231: case 2:
00114$:
;src/man/../../fusion-c/header/ayfx_player.h:232: reg7=(PSGRead(MIXER_REG) & DISABLE_NOISE_C) | (disable_tn << (i+3));
	ld	a, #0x07
	push	af
	inc	sp
	call	_PSGRead
	inc	sp
	ld	a, l
	res	5, a
	or	a, -1 (ix)
	ld	-8 (ix), a
;src/man/../../fusion-c/header/ayfx_player.h:235: }
00115$:
;src/man/../../fusion-c/header/ayfx_player.h:237: PSGwrite(MIXER_REG, Reg7Patch(reg7));
	ld	a, -8 (ix)
	push	af
	inc	sp
	call	_Reg7Patch
	inc	sp
	ld	d, l
	ld	e,#0x07
	push	de
	call	_PSGwrite
	pop	af
;src/man/../../fusion-c/header/ayfx_player.h:249: afx[i].position++;
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	inc	bc
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
;src/man/../../fusion-c/header/ayfx_player.h:250: return (TRUE);
	ld	l, #0x01
00116$:
;src/man/../../fusion-c/header/ayfx_player.h:251: }
	ld	sp, ix
	pop	ix
	ret
;src/man/../../fusion-c/header/ayfx_player.h:254: void UpdateFX(void) 
;	---------------------------------
; Function UpdateFX
; ---------------------------------
_UpdateFX::
;src/man/../../fusion-c/header/ayfx_player.h:258: for(i=0;i<3;i++) {
	ld	c, #0x00
00106$:
;src/man/../../fusion-c/header/ayfx_player.h:259: if(afx[i].position!=0) {
	ld	l, c
	ld	h, #0x00
	add	hl, hl
	ld	de, #_afx
	add	hl, de
	ld	a, (hl)
	inc	hl
	or	a, (hl)
	jr	Z,00107$
;src/man/../../fusion-c/header/ayfx_player.h:260: if(playsnd(i)==FALSE) {
	push	bc
	ld	a, c
	push	af
	inc	sp
	call	_playsnd
	inc	sp
	ld	a, l
	pop	bc
	or	a, a
	jr	NZ,00107$
;src/man/../../fusion-c/header/ayfx_player.h:262: PSGwrite(VOLUME_REG_0+i, PSGRead(VOLUME_REG_0+i) & 0xF0);
	ld	a, c
	add	a, #0x08
	ld	b, a
	push	bc
	push	bc
	inc	sp
	call	_PSGRead
	inc	sp
	ld	a, l
	pop	bc
	and	a, #0xf0
	push	bc
	push	af
	inc	sp
	push	bc
	inc	sp
	call	_PSGwrite
	pop	af
	pop	bc
00107$:
;src/man/../../fusion-c/header/ayfx_player.h:258: for(i=0;i<3;i++) {
	inc	c
	ld	a, c
	sub	a, #0x03
	jr	C,00106$
;src/man/../../fusion-c/header/ayfx_player.h:266: }
	ret
;src/man/../../fusion-c/header/ayfx_player.h:269: char TestFX(void) {
;	---------------------------------
; Function TestFX
; ---------------------------------
_TestFX::
;src/man/../../fusion-c/header/ayfx_player.h:270: if(afx[0].position!=0 || afx[1].position!=0 || afx[2].position!=0) {
	ld	hl, (#_afx + 0)
	ld	a, h
	or	a, l
	jr	NZ,00101$
	ld	hl, (#_afx + 2)
	ld	a, h
	or	a, l
	jr	NZ,00101$
	ld	hl, (#_afx + 4)
	ld	a, h
	or	a, l
	jr	Z,00102$
00101$:
;src/man/../../fusion-c/header/ayfx_player.h:271: return (TRUE);
	ld	l, #0x01
	ret
00102$:
;src/man/../../fusion-c/header/ayfx_player.h:273: return (FALSE);
	ld	l, #0x00
;src/man/../../fusion-c/header/ayfx_player.h:275: }
	ret
;src/man/../../fusion-c/header/ayfx_player.h:278: void FreeFX(void) {
;	---------------------------------
; Function FreeFX
; ---------------------------------
_FreeFX::
;src/man/../../fusion-c/header/ayfx_player.h:279: free(afbdata);
	ld	hl, (_afbdata)
	push	hl
	call	_free
	pop	af
;src/man/../../fusion-c/header/ayfx_player.h:280: free(noises);
	ld	hl, (_noises)
	push	hl
	call	_free
	pop	af
;src/man/../../fusion-c/header/ayfx_player.h:281: }
	ret
;src/man/../../src/man/entity.c:214: void sys_entities_init(){
;	---------------------------------
; Function sys_entities_init
; ---------------------------------
_sys_entities_init::
;src/man/../../src/man/entity.c:217: memset(array_structs_enemies,0,sizeof(array_structs_enemies) );
	ld	hl, #_array_structs_enemies
	ld	b, #0x54
00103$:
	ld	(hl), #0x00
	inc	hl
	djnz	00103$
;src/man/../../src/man/entity.c:218: memset(array_structs_objects,0,sizeof(array_structs_objects) );
	ld	hl, #_array_structs_objects
	ld	b, #0x69
00105$:
	ld	(hl), #0x00
	inc	hl
	djnz	00105$
;src/man/../../src/man/entity.c:219: memset(array_structs_shots,0,sizeof(array_structs_shots) );
	ld	hl, #_array_structs_shots
	ld	b, #0x15
00107$:
	ld	(hl), #0x00
	inc	hl
	djnz	00107$
;src/man/../../src/man/entity.c:220: num_enemies=0;
	ld	hl,#_num_enemies + 0
	ld	(hl), #0x00
;src/man/../../src/man/entity.c:221: num_objects=0;
	ld	hl,#_num_objects + 0
	ld	(hl), #0x00
;src/man/../../src/man/entity.c:222: num_shots=0;
	ld	hl,#_num_shots + 0
	ld	(hl), #0x00
;src/man/../../src/man/entity.c:223: }
	ret
_player_template:
	.db #0x01	; 1
	.db #0x07	; 7
	.dw #0x0000
	.dw #0x0000
	.db #0x08	; 8
	.db #0x80	; 128
	.db #0x04	; 4
	.db #0x10	; 16
	.db #0x04	;  4
	.db #0x04	;  4
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x05	; 5
	.dw #0x0000
	.dw #0x0005
	.db #0x00	; 0
_object_template:
	.db #0x16	; 22
	.db #0x03	; 3
	.dw #0x0000
	.dw #0x0000
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x10	; 16
	.db #0x10	; 16
	.db #0x00	;  0
	.db #0x00	;  0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x13	; 19
	.dw #0x0000
	.dw #0x0000
	.db #0x00	; 0
_enemy1_template:
	.db #0x02	; 2
	.db #0x03	; 3
	.dw #0x0000
	.dw #0x0000
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x10	; 16
	.db #0x02	;  2
	.db #0x02	;  2
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x09	; 9
	.dw #0x0000
	.dw #0x000a
	.db #0x00	; 0
_shot_template:
	.db #0x10	; 16
	.db #0x03	; 3
	.dw #0x0000
	.dw #0x0000
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x03	; 3
	.db #0x08	;  8
	.db #0x08	;  8
	.db #0x03	; 3
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.dw #0x0000
	.dw #0x0004
	.db #0x00	; 0
;src/man/../../src/man/entity.c:227: TEntity* sys_entity_create_player(){
;	---------------------------------
; Function sys_entity_create_player
; ---------------------------------
_sys_entity_create_player::
;src/man/../../src/man/entity.c:228: return &player_template;
	ld	hl, #_player_template
;src/man/../../src/man/entity.c:229: }
	ret
;src/man/../../src/man/entity.c:230: TEntity* sys_entity_create_enemy1(){
;	---------------------------------
; Function sys_entity_create_enemy1
; ---------------------------------
_sys_entity_create_enemy1::
;src/man/../../src/man/entity.c:231: TEntity* enemy=&array_structs_enemies[num_enemies];
	ld	bc, #_array_structs_enemies+0
	ld	de, (_num_enemies)
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, bc
	ld	c, l
	ld	b, h
;src/man/../../src/man/entity.c:232: memcpy(enemy,&enemy1_template,sizeof(enemy1_template));
	ld	e, c
	ld	d, b
	push	bc
	ld	hl, #_enemy1_template
	ld	bc, #0x0015
	ldir
	pop	bc
;src/man/../../src/man/entity.c:233: ++num_enemies;
	ld	hl, #_num_enemies+0
	inc	(hl)
;src/man/../../src/man/entity.c:234: return enemy;
	ld	l, c
	ld	h, b
;src/man/../../src/man/entity.c:235: }  
	ret
;src/man/../../src/man/entity.c:237: TEntity* sys_entity_create_shot(){
;	---------------------------------
; Function sys_entity_create_shot
; ---------------------------------
_sys_entity_create_shot::
;src/man/../../src/man/entity.c:238: TEntity* shot=&array_structs_shots[num_shots]; 
	ld	bc, #_array_structs_shots+0
	ld	de, (_num_shots)
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, bc
	ld	c, l
	ld	b, h
;src/man/../../src/man/entity.c:239: memcpy(shot,&shot_template,sizeof(shot_template));
	ld	e, c
	ld	d, b
	push	bc
	ld	hl, #_shot_template
	ld	bc, #0x0015
	ldir
	pop	bc
;src/man/../../src/man/entity.c:240: ++num_shots;
	ld	hl, #_num_shots+0
	inc	(hl)
;src/man/../../src/man/entity.c:241: return shot;
	ld	l, c
	ld	h, b
;src/man/../../src/man/entity.c:242: }  
	ret
;src/man/../../src/man/entity.c:244: TEntity* sys_entity_create_object(){
;	---------------------------------
; Function sys_entity_create_object
; ---------------------------------
_sys_entity_create_object::
;src/man/../../src/man/entity.c:245: TEntity* object=&array_structs_objects[num_objects];
	ld	bc, #_array_structs_objects+0
	ld	de, (_num_objects)
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, bc
	ld	c, l
	ld	b, h
;src/man/../../src/man/entity.c:246: memcpy(object,&object_template,sizeof(TEntity));
	ld	e, c
	ld	d, b
	push	bc
	ld	hl, #_object_template
	ld	bc, #0x0015
	ldir
	pop	bc
;src/man/../../src/man/entity.c:247: ++num_objects;
	ld	hl, #_num_objects+0
	inc	(hl)
;src/man/../../src/man/entity.c:248: return object;
	ld	l, c
	ld	h, b
;src/man/../../src/man/entity.c:249: }  
	ret
;src/man/../../src/man/entity.c:251: void sys_entity_erase_enemy(char i){ 
;	---------------------------------
; Function sys_entity_erase_enemy
; ---------------------------------
_sys_entity_erase_enemy::
	call	___sdcc_enter_ix
;src/man/../../src/man/entity.c:252: --num_enemies;
	ld	hl, #_num_enemies+0
	dec	(hl)
;src/man/../../src/man/entity.c:253: TEntity *enemy=&array_structs_enemies[i];
	ld	c, 4 (ix)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ex	de, hl
	ld	hl, #_array_structs_enemies
	add	hl, de
	ex	de, hl
	ld	l, e
	ld	h, d
;src/man/../../src/man/entity.c:254: PutSprite(enemy->plane , player_Jump_right_pattern, 0,212,0 );
	ld	bc, #0x000f
	add	hl, bc
	ld	b, (hl)
	push	de
	xor	a, a
	ld	d,a
	ld	e,#0xd4
	push	de
	xor	a, a
	ld	d,a
	ld	e,#0x20
	push	de
	push	bc
	inc	sp
	call	_PutSprite
	pop	af
	pop	af
	inc	sp
	pop	de
;src/man/../../src/man/entity.c:256: memcpy(&array_structs_enemies[i],&array_structs_enemies[num_enemies],sizeof(TEntity));
	ld	bc, (_num_enemies)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	bc, #_array_structs_enemies
	add	hl, bc
	ld	bc, #0x0015
	ldir
;src/man/../../src/man/entity.c:257: }
	pop	ix
	ret
;src/man/../../src/man/entity.c:258: void sys_entity_erase_all_enemies(){
;	---------------------------------
; Function sys_entity_erase_all_enemies
; ---------------------------------
_sys_entity_erase_all_enemies::
;src/man/../../src/man/entity.c:259: for (char i=0;i<sys_entity_get_num_enemies();++i){
	ld	b, #0x00
00103$:
	push	bc
	call	_sys_entity_get_num_enemies
	pop	bc
	ld	a, b
	sub	a, l
	jr	NC,00101$
;src/man/../../src/man/entity.c:260: sys_entity_erase_enemy(i);
	push	bc
	push	bc
	inc	sp
	call	_sys_entity_erase_enemy
	inc	sp
	pop	bc
;src/man/../../src/man/entity.c:259: for (char i=0;i<sys_entity_get_num_enemies();++i){
	inc	b
	jr	00103$
00101$:
;src/man/../../src/man/entity.c:262: num_enemies=0;
	ld	hl,#_num_enemies + 0
	ld	(hl), #0x00
;src/man/../../src/man/entity.c:263: }
	ret
;src/man/../../src/man/entity.c:265: void sys_entity_erase_shot(char i){
;	---------------------------------
; Function sys_entity_erase_shot
; ---------------------------------
_sys_entity_erase_shot::
	call	___sdcc_enter_ix
;src/man/../../src/man/entity.c:266: --num_shots;
	ld	hl, #_num_shots+0
	dec	(hl)
;src/man/../../src/man/entity.c:267: TEntity *shot=&array_structs_shots[i];
	ld	c, 4 (ix)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ex	de, hl
	ld	hl, #_array_structs_shots
	add	hl, de
	ex	de, hl
	ld	l, e
	ld	h, d
;src/man/../../src/man/entity.c:268: PutSprite(shot->plane, shot_pattern, 0,212,0 );
	ld	bc, #0x000f
	add	hl, bc
	ld	b, (hl)
	push	de
	xor	a, a
	ld	d,a
	ld	e,#0xd4
	push	de
	xor	a, a
	push	af
	inc	sp
	xor	a, a
	push	af
	inc	sp
	push	bc
	inc	sp
	call	_PutSprite
	pop	af
	pop	af
	inc	sp
	pop	de
;src/man/../../src/man/entity.c:269: memcpy(&array_structs_shots[i],&array_structs_shots[num_shots],sizeof(TEntity));
	ld	bc, (_num_shots)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	bc, #_array_structs_shots
	add	hl, bc
	ld	bc, #0x0015
	ldir
;src/man/../../src/man/entity.c:270: }
	pop	ix
	ret
;src/man/../../src/man/entity.c:272: void sys_entity_erase_object(char i){
;	---------------------------------
; Function sys_entity_erase_object
; ---------------------------------
_sys_entity_erase_object::
	call	___sdcc_enter_ix
;src/man/../../src/man/entity.c:273: --num_objects;
	ld	hl, #_num_objects+0
	dec	(hl)
;src/man/../../src/man/entity.c:274: TEntity *object=&array_structs_objects[i];
	ld	c, 4 (ix)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ex	de, hl
	ld	hl, #_array_structs_objects
	add	hl, de
	ex	de, hl
	ld	l, e
	ld	h, d
;src/man/../../src/man/entity.c:275: PutSprite(object->plane, object_money_pattern, 0,212,0 );
	ld	bc, #0x000f
	add	hl, bc
	ld	b, (hl)
	push	de
	xor	a, a
	ld	d,a
	ld	e,#0xd4
	push	de
	xor	a, a
	ld	d,a
	ld	e,#0x4c
	push	de
	push	bc
	inc	sp
	call	_PutSprite
	pop	af
	pop	af
	inc	sp
	pop	de
;src/man/../../src/man/entity.c:276: memcpy(&array_structs_objects[i],&array_structs_objects[num_objects],sizeof(TEntity));
	ld	bc, (_num_objects)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ld	bc, #_array_structs_objects
	add	hl, bc
	ld	bc, #0x0015
	ldir
;src/man/../../src/man/entity.c:277: }
	pop	ix
	ret
;src/man/../../src/man/entity.c:278: void sys_entity_erase_all_objects(){
;	---------------------------------
; Function sys_entity_erase_all_objects
; ---------------------------------
_sys_entity_erase_all_objects::
;src/man/../../src/man/entity.c:279: for (char i=0;i<sys_entity_get_num_objects();++i){
	ld	b, #0x00
00103$:
	push	bc
	call	_sys_entity_get_num_objects
	pop	bc
	ld	a, b
	sub	a, l
	jr	NC,00101$
;src/man/../../src/man/entity.c:280: sys_entity_erase_object(i);
	push	bc
	push	bc
	inc	sp
	call	_sys_entity_erase_object
	inc	sp
	pop	bc
;src/man/../../src/man/entity.c:279: for (char i=0;i<sys_entity_get_num_objects();++i){
	inc	b
	jr	00103$
00101$:
;src/man/../../src/man/entity.c:282: num_objects=0;
	ld	hl,#_num_objects + 0
	ld	(hl), #0x00
;src/man/../../src/man/entity.c:283: }  
	ret
;src/man/../../src/man/entity.c:287: TEntity* sys_entity_get_array_structs_enemies(){
;	---------------------------------
; Function sys_entity_get_array_structs_enemies
; ---------------------------------
_sys_entity_get_array_structs_enemies::
;src/man/../../src/man/entity.c:288: return array_structs_enemies;
	ld	hl, #_array_structs_enemies
;src/man/../../src/man/entity.c:289: }
	ret
;src/man/../../src/man/entity.c:291: TEntity* sys_entity_get_array_structs_shots(){
;	---------------------------------
; Function sys_entity_get_array_structs_shots
; ---------------------------------
_sys_entity_get_array_structs_shots::
;src/man/../../src/man/entity.c:292: return array_structs_shots;
	ld	hl, #_array_structs_shots
;src/man/../../src/man/entity.c:293: }
	ret
;src/man/../../src/man/entity.c:295: TEntity* sys_entity_get_array_structs_objects(){
;	---------------------------------
; Function sys_entity_get_array_structs_objects
; ---------------------------------
_sys_entity_get_array_structs_objects::
;src/man/../../src/man/entity.c:296: return array_structs_objects;
	ld	hl, #_array_structs_objects
;src/man/../../src/man/entity.c:297: }
	ret
;src/man/../../src/man/entity.c:300: char sys_entity_get_num_enemies(){
;	---------------------------------
; Function sys_entity_get_num_enemies
; ---------------------------------
_sys_entity_get_num_enemies::
;src/man/../../src/man/entity.c:301: return num_enemies;
	ld	iy, #_num_enemies
	ld	l, 0 (iy)
;src/man/../../src/man/entity.c:302: }
	ret
;src/man/../../src/man/entity.c:304: char sys_entity_get_num_shots(){
;	---------------------------------
; Function sys_entity_get_num_shots
; ---------------------------------
_sys_entity_get_num_shots::
;src/man/../../src/man/entity.c:305: return num_shots;
	ld	iy, #_num_shots
	ld	l, 0 (iy)
;src/man/../../src/man/entity.c:306: }
	ret
;src/man/../../src/man/entity.c:308: char sys_entity_get_num_objects(){
;	---------------------------------
; Function sys_entity_get_num_objects
; ---------------------------------
_sys_entity_get_num_objects::
;src/man/../../src/man/entity.c:309: return num_objects;
	ld	iy, #_num_objects
	ld	l, 0 (iy)
;src/man/../../src/man/entity.c:310: }
	ret
;src/man/../../src/man/entity.c:313: char sys_entity_get_max_enemies(){
;	---------------------------------
; Function sys_entity_get_max_enemies
; ---------------------------------
_sys_entity_get_max_enemies::
;src/man/../../src/man/entity.c:314: return MAX_enemies;
	ld	l, #0x04
;src/man/../../src/man/entity.c:315: }
	ret
;src/man/../../src/man/entity.c:317: char sys_entity_get_max_shot(){
;	---------------------------------
; Function sys_entity_get_max_shot
; ---------------------------------
_sys_entity_get_max_shot::
;src/man/../../src/man/entity.c:318: return MAX_shots;
	ld	l, #0x01
;src/man/../../src/man/entity.c:319: }
	ret
;src/man/../../src/man/entity.c:321: char sys_entity_get_max_objects(){
;	---------------------------------
; Function sys_entity_get_max_objects
; ---------------------------------
_sys_entity_get_max_objects::
;src/man/../../src/man/entity.c:322: return MAX_objects;
	ld	l, #0x05
;src/man/../../src/man/entity.c:323: }
	ret
;src/man/../../src/sys/../../src/sys/anim.c:9: void sys_anim_init(){}
;	---------------------------------
; Function sys_anim_init
; ---------------------------------
_sys_anim_init::
	ret
;src/man/../../src/sys/../../src/sys/anim.c:10: void sys_anim_update(TEntity *entity){
;	---------------------------------
; Function sys_anim_update
; ---------------------------------
_sys_anim_update::
;src/man/../../src/sys/../../src/sys/anim.c:11: if (entity->andando==0){
	pop	de
	pop	bc
	push	bc
	push	de
	ld	hl, #0x000d
	add	hl, bc
	ld	a, (hl)
	or	a, a
	jr	NZ,00102$
;src/man/../../src/sys/../../src/sys/anim.c:12: entity->andando=1;
	ld	(hl), #0x01
	ret
00102$:
;src/man/../../src/sys/../../src/sys/anim.c:14: entity->andando=0;
	ld	(hl), #0x00
;src/man/../../src/sys/../../src/sys/anim.c:16: }
	ret
;src/man/../../src/sys/../../src/sys/../../src/man/files.c:24: char* getBuffer(){
;	---------------------------------
; Function getBuffer
; ---------------------------------
_getBuffer::
;src/man/../../src/sys/../../src/sys/../../src/man/files.c:25: return &buffer[0];
	ld	hl, #_buffer
;src/man/../../src/sys/../../src/sys/../../src/man/files.c:26: }
	ret
;src/man/../../src/sys/../../src/sys/../../src/man/files.c:28: void load_file_into_buffer_with_structure(char *filename){
;	---------------------------------
; Function load_file_into_buffer_with_structure
; ---------------------------------
_load_file_into_buffer_with_structure::
	call	___sdcc_enter_ix
	ld	hl, #-37
	add	hl, sp
	ld	sp, hl
;src/man/../../src/sys/../../src/sys/../../src/man/files.c:31: enter_name_and_extension_in_structure(&struct_fcb, filename);
	ld	hl, #0
	add	hl, sp
	ex	de, hl
	ld	c, e
	ld	b, d
	push	de
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	push	bc
	call	_enter_name_and_extension_in_structure
	pop	af
	pop	af
	pop	de
;src/man/../../src/sys/../../src/sys/../../src/man/files.c:32: fcb_open(&struct_fcb);
	ld	c, e
	ld	b, d
	push	de
	push	bc
	call	_fcb_open
	pop	af
	pop	de
;src/man/../../src/sys/../../src/sys/../../src/man/files.c:34: fcb_read( &struct_fcb, &buffer[0], 7 ); 
	ld	c, e
	ld	b, d
	push	de
	ld	hl, #0x0007
	push	hl
	ld	hl, #_buffer
	push	hl
	push	bc
	call	_fcb_read
	pop	af
	pop	af
	pop	af
	pop	de
;src/man/../../src/sys/../../src/sys/../../src/man/files.c:36: fcb_read( &struct_fcb, &buffer[0], BUFFER_SIZE );  
	ld	c, e
	ld	b, d
	push	de
	ld	hl, #0x6a06
	push	hl
	ld	hl, #_buffer
	push	hl
	push	bc
	call	_fcb_read
	pop	af
	pop	af
	pop	af
	call	_fcb_close
;src/man/../../src/sys/../../src/sys/../../src/man/files.c:38: }
	ld	sp,ix
	pop	ix
	ret
;src/man/../../src/sys/../../src/sys/../../src/man/files.c:40: void load_file_into_buffer(char *filename) {
;	---------------------------------
; Function load_file_into_buffer
; ---------------------------------
_load_file_into_buffer::
	call	___sdcc_enter_ix
;src/man/../../src/sys/../../src/sys/../../src/man/files.c:43: file=Open(filename, O_RDONLY);
	ld	hl, #0x0000
	push	hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_Open
	pop	af
	pop	af
	ld	c, l
	ld	b, h
;src/man/../../src/sys/../../src/sys/../../src/man/files.c:46: Read(file, buffer, 7);	
	push	bc
	ld	hl, #0x0007
	push	hl
	ld	hl, #_buffer
	push	hl
	push	bc
	call	_Read
	pop	af
	pop	af
	pop	af
	pop	bc
;src/man/../../src/sys/../../src/sys/../../src/man/files.c:48: Read(file, buffer, BUFFER_SIZE);
	push	bc
	ld	hl, #0x6a06
	push	hl
	ld	hl, #_buffer
	push	hl
	push	bc
	call	_Read
	pop	af
	pop	af
	pop	af
	call	_Close
	pop	af
;src/man/../../src/sys/../../src/sys/../../src/man/files.c:51: }
	pop	ix
	ret
;src/man/../../src/sys/../../src/sys/../../src/man/files.c:56: void enter_name_and_extension_in_structure(FCB *p_fcb, const char *p_name)  // Routine servant à vérifier le format du nom de fichier
;	---------------------------------
; Function enter_name_and_extension_in_structure
; ---------------------------------
_enter_name_and_extension_in_structure::
	call	___sdcc_enter_ix
	push	af
	push	af
	dec	sp
;src/man/../../src/sys/../../src/sys/../../src/man/files.c:59: memset( p_fcb, 0, sizeof(FCB) );
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	ld	b, #0x25
00178$:
	ld	(hl), #0x00
	inc	hl
	djnz	00178$
;src/man/../../src/sys/../../src/sys/../../src/man/files.c:60: for( i = 0; i < 11; i++ ) {
	ld	e, 4 (ix)
	ld	d, 5 (ix)
	ld	hl, #0x0001
	add	hl, de
	ld	-4 (ix), l
	ld	-3 (ix), h
	ld	c, #0x00
00106$:
;src/man/../../src/sys/../../src/sys/../../src/man/files.c:61: p_fcb->name[i] = ' ';
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	b, #0x00
	add	hl, bc
	ld	(hl), #0x20
;src/man/../../src/sys/../../src/sys/../../src/man/files.c:60: for( i = 0; i < 11; i++ ) {
	inc	c
	ld	a, c
	sub	a, #0x0b
	jr	C,00106$
;src/man/../../src/sys/../../src/sys/../../src/man/files.c:63: for( i = 0; (i < 8) && (p_name[i] != 0) && (p_name[i] != '.'); i++ ) {
	xor	a, a
	ld	-2 (ix), a
00111$:
	ld	a, 6 (ix)
	add	a, -2 (ix)
	ld	l, a
	ld	a, 7 (ix)
	adc	a, #0x00
	ld	h, a
	ld	a, -2 (ix)
	inc	a
	ld	-1 (ix), a
	ld	c, (hl)
	ld	a, c
	sub	a, #0x2e
	ld	a, #0x01
	jr	Z,00181$
	xor	a, a
00181$:
	ld	l, a
	ld	a, -2 (ix)
	sub	a, #0x08
	jr	NC,00102$
	ld	a, c
	or	a, a
	jr	Z,00102$
	bit	0, l
	jr	NZ,00102$
;src/man/../../src/sys/../../src/sys/../../src/man/files.c:64: p_fcb->name[i] =  p_name[i];
	ld	a, -4 (ix)
	add	a, -2 (ix)
	ld	l, a
	ld	a, -3 (ix)
	adc	a, #0x00
	ld	h, a
	ld	(hl), c
;src/man/../../src/sys/../../src/sys/../../src/man/files.c:63: for( i = 0; (i < 8) && (p_name[i] != 0) && (p_name[i] != '.'); i++ ) {
	ld	a, -1 (ix)
	ld	-2 (ix), a
	jr	00111$
00102$:
;src/man/../../src/sys/../../src/sys/../../src/man/files.c:66: if( p_name[i] == '.' ) {
	ld	a, l
	or	a, a
	jr	Z,00118$
;src/man/../../src/sys/../../src/sys/../../src/man/files.c:67: i++;
	ld	a, -1 (ix)
	ld	-5 (ix), a
;src/man/../../src/sys/../../src/sys/../../src/man/files.c:68: for( j = 0; (j < 3) && (p_name[i + j] != 0) && (p_name[i + j] != '.'); j++ ) {
	ld	hl, #0x0009
	add	hl, de
	ex	de, hl
	ld	c, #0x00
00116$:
	ld	a, c
	sub	a, #0x03
	jr	NC,00118$
	ld	l, -5 (ix)
	ld	h, #0x00
	ld	-4 (ix), c
	xor	a, a
	ld	-3 (ix), a
	ld	a, l
	add	a, -4 (ix)
	ld	-2 (ix), a
	ld	a, h
	adc	a, -3 (ix)
	ld	-1 (ix), a
	ld	a, 6 (ix)
	add	a, -2 (ix)
	ld	l, a
	ld	a, 7 (ix)
	adc	a, -1 (ix)
	ld	h, a
	ld	b, (hl)
	ld	a, b
	or	a, a
	jr	Z,00118$
	ld	a, b
	sub	a, #0x2e
	jr	Z,00118$
;src/man/../../src/sys/../../src/sys/../../src/man/files.c:69: p_fcb->ext[j] =  p_name[i + j] ;
	ld	l, c
	ld	h, #0x00
	add	hl, de
	ld	(hl), b
;src/man/../../src/sys/../../src/sys/../../src/man/files.c:68: for( j = 0; (j < 3) && (p_name[i + j] != 0) && (p_name[i + j] != '.'); j++ ) {
	inc	c
	jr	00116$
00118$:
;src/man/../../src/sys/../../src/sys/../../src/man/files.c:72: }
	ld	sp, ix
	pop	ix
	ret
;src/man/../../src/sys/../../src/sys/collider.c:26: void sys_collider_init(){
;	---------------------------------
; Function sys_collider_init
; ---------------------------------
_sys_collider_init::
;src/man/../../src/sys/../../src/sys/collider.c:28: }
	ret
;src/man/../../src/sys/../../src/sys/collider.c:30: int sys_collider_get_column_entity(TEntity *entity){
;	---------------------------------
; Function sys_collider_get_column_entity
; ---------------------------------
_sys_collider_get_column_entity::
	call	___sdcc_enter_ix
;src/man/../../src/sys/../../src/sys/collider.c:33: return ((entity->x+6)/8);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	inc	hl
	inc	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	hl, #0x0006
	add	hl, bc
	ex	de, hl
	ld	l, e
	ld	h, d
	bit	7, d
	jr	Z,00103$
	ld	hl, #0x000d
	add	hl, bc
00103$:
	ld	b, #0x03
00109$:
	sra	h
	rr	l
	djnz	00109$
;src/man/../../src/sys/../../src/sys/collider.c:34: }
	pop	ix
	ret
;src/man/../../src/sys/../../src/sys/collider.c:35: int sys_collider_get_file_entity(TEntity *entity){
;	---------------------------------
; Function sys_collider_get_file_entity
; ---------------------------------
_sys_collider_get_file_entity::
;src/man/../../src/sys/../../src/sys/collider.c:37: return (entity->y/8);
	pop	bc
	pop	hl
	push	hl
	push	bc
	ld	de, #0x0004
	add	hl, de
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	l, c
	ld	h, b
	bit	7, b
	jr	Z,00103$
	ld	hl, #0x0007
	add	hl, bc
00103$:
	ld	b, #0x03
00109$:
	sra	h
	rr	l
	djnz	00109$
;src/man/../../src/sys/../../src/sys/collider.c:38: }
	ret
;src/man/../../src/sys/../../src/sys/collider.c:39: int sys_collider_get_tile_array(TEntity *entity){
;	---------------------------------
; Function sys_collider_get_tile_array
; ---------------------------------
_sys_collider_get_tile_array::
	call	___sdcc_enter_ix
;src/man/../../src/sys/../../src/sys/collider.c:41: int tile_pie=buffer[((sys_collider_get_file_entity(entity)+1)*32)+(sys_collider_get_column_entity(entity))];
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_sys_collider_get_file_entity
	pop	af
	inc	hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	push	hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_sys_collider_get_column_entity
	pop	af
	pop	bc
	add	hl, bc
	ld	de, #_buffer
	add	hl, de
	ld	l, (hl)
	ld	h, #0x00
;src/man/../../src/sys/../../src/sys/collider.c:42: return tile_pie;
;src/man/../../src/sys/../../src/sys/collider.c:43: }
	pop	ix
	ret
;src/man/../../src/sys/../../src/sys/collider.c:44: int sys_collider_get_tile_right_array(TEntity *entity){
;	---------------------------------
; Function sys_collider_get_tile_right_array
; ---------------------------------
_sys_collider_get_tile_right_array::
	call	___sdcc_enter_ix
;src/man/../../src/sys/../../src/sys/collider.c:46: int tile_abajo=buffer[((sys_collider_get_file_entity(entity)+1)*32)+(sys_collider_get_column_entity(entity)+1)];
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_sys_collider_get_file_entity
	pop	af
	inc	hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	push	hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_sys_collider_get_column_entity
	pop	af
	pop	bc
	inc	hl
	add	hl, bc
	ld	de, #_buffer
	add	hl, de
	ld	l, (hl)
	ld	h, #0x00
;src/man/../../src/sys/../../src/sys/collider.c:47: return tile_abajo; 
;src/man/../../src/sys/../../src/sys/collider.c:48: }
	pop	ix
	ret
;src/man/../../src/sys/../../src/sys/collider.c:49: int sys_collider_get_tile_left_array(TEntity *entity){
;	---------------------------------
; Function sys_collider_get_tile_left_array
; ---------------------------------
_sys_collider_get_tile_left_array::
	call	___sdcc_enter_ix
;src/man/../../src/sys/../../src/sys/collider.c:51: int tile_abajo=buffer[((sys_collider_get_file_entity(entity)+1)*32)+(sys_collider_get_column_entity(entity)-1)];
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_sys_collider_get_file_entity
	pop	af
	inc	hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	push	hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_sys_collider_get_column_entity
	pop	af
	pop	bc
	dec	hl
	add	hl, bc
	ld	de, #_buffer
	add	hl, de
	ld	l, (hl)
	ld	h, #0x00
;src/man/../../src/sys/../../src/sys/collider.c:52: return tile_abajo; 
;src/man/../../src/sys/../../src/sys/collider.c:53: }
	pop	ix
	ret
;src/man/../../src/sys/../../src/sys/collider.c:54: int sys_collider_get_tile_up_array(TEntity *entity){
;	---------------------------------
; Function sys_collider_get_tile_up_array
; ---------------------------------
_sys_collider_get_tile_up_array::
	call	___sdcc_enter_ix
;src/man/../../src/sys/../../src/sys/collider.c:56: int tile_abajo=buffer[((sys_collider_get_file_entity(entity))*32)+(sys_collider_get_column_entity(entity))];
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_sys_collider_get_file_entity
	pop	af
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	push	hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_sys_collider_get_column_entity
	pop	af
	pop	bc
	add	hl, bc
	ld	de, #_buffer
	add	hl, de
	ld	l, (hl)
	ld	h, #0x00
;src/man/../../src/sys/../../src/sys/collider.c:57: return tile_abajo; 
;src/man/../../src/sys/../../src/sys/collider.c:58: }
	pop	ix
	ret
;src/man/../../src/sys/../../src/sys/collider.c:59: int sys_collider_get_tile_down_array(TEntity *entity){
;	---------------------------------
; Function sys_collider_get_tile_down_array
; ---------------------------------
_sys_collider_get_tile_down_array::
	call	___sdcc_enter_ix
;src/man/../../src/sys/../../src/sys/collider.c:61: int tile_abajo=buffer[((sys_collider_get_file_entity(entity)+2)*32)+(sys_collider_get_column_entity(entity))];
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_sys_collider_get_file_entity
	pop	af
	inc	hl
	inc	hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	push	hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_sys_collider_get_column_entity
	pop	af
	pop	bc
	add	hl, bc
	ld	de, #_buffer
	add	hl, de
	ld	l, (hl)
	ld	h, #0x00
;src/man/../../src/sys/../../src/sys/collider.c:62: return tile_abajo; 
;src/man/../../src/sys/../../src/sys/collider.c:63: }
	pop	ix
	ret
;src/man/../../src/sys/../../src/sys/collider.c:64: int get_tile_down_left_array(TEntity *entity){
;	---------------------------------
; Function get_tile_down_left_array
; ---------------------------------
_get_tile_down_left_array::
	call	___sdcc_enter_ix
;src/man/../../src/sys/../../src/sys/collider.c:65: int tile_down_left=buffer[((sys_collider_get_file_entity(entity)+2)*32)+(sys_collider_get_column_entity(entity))-1];
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_sys_collider_get_file_entity
	pop	af
	inc	hl
	inc	hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	push	hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_sys_collider_get_column_entity
	pop	af
	pop	bc
	add	hl, bc
	dec	hl
	ld	de, #_buffer
	add	hl, de
	ld	l, (hl)
	ld	h, #0x00
;src/man/../../src/sys/../../src/sys/collider.c:66: return tile_down_left; 
;src/man/../../src/sys/../../src/sys/collider.c:67: }
	pop	ix
	ret
;src/man/../../src/sys/../../src/sys/collider.c:68: int get_tile_down_right_array(TEntity *entity){
;	---------------------------------
; Function get_tile_down_right_array
; ---------------------------------
_get_tile_down_right_array::
	call	___sdcc_enter_ix
;src/man/../../src/sys/../../src/sys/collider.c:69: int tile_down_right=buffer[((sys_collider_get_file_entity(entity)+2)*32)+(sys_collider_get_column_entity(entity))+1];
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_sys_collider_get_file_entity
	pop	af
	inc	hl
	inc	hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	push	hl
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_sys_collider_get_column_entity
	pop	af
	pop	bc
	add	hl, bc
	inc	hl
	ld	de, #_buffer
	add	hl, de
	ld	l, (hl)
	ld	h, #0x00
;src/man/../../src/sys/../../src/sys/collider.c:70: return tile_down_right; 
;src/man/../../src/sys/../../src/sys/collider.c:71: }
	pop	ix
	ret
;src/man/../../src/sys/../../src/sys/collider.c:78: char sys_collider_entity1_collider_entity(TEntity *entity1, TEntity *entity2){
;	---------------------------------
; Function sys_collider_entity1_collider_entity
; ---------------------------------
_sys_collider_entity1_collider_entity::
	call	___sdcc_enter_ix
	push	af
	push	af
;src/man/../../src/sys/../../src/sys/collider.c:81: if (entity2->x < entity1->x + entity1->w &&  entity2->x + entity2->w > entity1->x && entity2->y < entity1->y + entity1->h && entity2->h + entity2->y > entity1->y){
	ld	a, 6 (ix)
	ld	-4 (ix), a
	ld	a, 7 (ix)
	ld	-3 (ix), a
	pop	hl
	push	hl
	inc	hl
	inc	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, 4 (ix)
	ld	-2 (ix), a
	ld	a, 5 (ix)
	ld	-1 (ix), a
	pop	de
	pop	hl
	push	hl
	push	de
	inc	hl
	inc	hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	push	bc
	ld	bc, #0x0008
	add	hl, bc
	pop	bc
	ld	l, (hl)
	ld	h, #0x00
	add	hl, de
	ld	a, c
	sub	a, l
	ld	a, b
	sbc	a, h
	jp	PO, 00129$
	xor	a, #0x80
00129$:
	jp	P, 00102$
	pop	hl
	push	hl
	push	bc
	ld	bc, #0x0008
	add	hl, bc
	pop	bc
	ld	l, (hl)
	ld	h, #0x00
	add	hl, bc
	ld	a, e
	sub	a, l
	ld	a, d
	sbc	a, h
	jp	PO, 00130$
	xor	a, #0x80
00130$:
	jp	P, 00102$
	pop	hl
	push	hl
	ld	de, #0x0004
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	pop	bc
	pop	hl
	push	hl
	push	bc
	ld	bc, #0x0004
	add	hl, bc
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	push	bc
	ld	bc, #0x0009
	add	hl, bc
	pop	bc
	ld	l, (hl)
	ld	h, #0x00
	add	hl, bc
	ld	a, e
	sub	a, l
	ld	a, d
	sbc	a, h
	jp	PO, 00131$
	xor	a, #0x80
00131$:
	jp	P, 00102$
	pop	hl
	push	hl
	push	bc
	ld	bc, #0x0009
	add	hl, bc
	pop	bc
	ld	l, (hl)
	ld	h, #0x00
	add	hl, de
	ld	a, c
	sub	a, l
	ld	a, b
	sbc	a, h
	jp	PO, 00132$
	xor	a, #0x80
00132$:
	jp	P, 00102$
;src/man/../../src/sys/../../src/sys/collider.c:82: return 1;
	ld	l, #0x01
	jr	00107$
00102$:
;src/man/../../src/sys/../../src/sys/collider.c:84: return 0;
	ld	l, #0x00
00107$:
;src/man/../../src/sys/../../src/sys/collider.c:86: }
	ld	sp, ix
	pop	ix
	ret
;src/man/../../src/sys/../../src/sys/collider.c:88: char sys_collider_entity1_collider_shot(TEntity *entity1, TEntity *shot){
;	---------------------------------
; Function sys_collider_entity1_collider_shot
; ---------------------------------
_sys_collider_entity1_collider_shot::
	call	___sdcc_enter_ix
	push	af
	push	af
;src/man/../../src/sys/../../src/sys/collider.c:90: if (shot->x < entity1->x + 16 &&  shot->x + shot->w > entity1->x && shot->y < entity1->y + 16 && shot->h + shot->y > entity1->y){
	ld	a, 6 (ix)
	ld	-4 (ix), a
	ld	a, 7 (ix)
	ld	-3 (ix), a
	pop	hl
	push	hl
	inc	hl
	inc	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, 4 (ix)
	ld	-2 (ix), a
	ld	a, 5 (ix)
	ld	-1 (ix), a
	pop	de
	pop	hl
	push	hl
	push	de
	inc	hl
	inc	hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x0010
	add	hl, de
	ld	a, c
	sub	a, l
	ld	a, b
	sbc	a, h
	jp	PO, 00129$
	xor	a, #0x80
00129$:
	jp	P, 00102$
	pop	hl
	push	hl
	push	bc
	ld	bc, #0x0008
	add	hl, bc
	pop	bc
	ld	l, (hl)
	ld	h, #0x00
	add	hl, bc
	ld	a, e
	sub	a, l
	ld	a, d
	sbc	a, h
	jp	PO, 00130$
	xor	a, #0x80
00130$:
	jp	P, 00102$
	pop	hl
	push	hl
	ld	de, #0x0004
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	pop	bc
	pop	hl
	push	hl
	push	bc
	ld	bc, #0x0004
	add	hl, bc
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	hl, #0x0010
	add	hl, bc
	ld	a, e
	sub	a, l
	ld	a, d
	sbc	a, h
	jp	PO, 00131$
	xor	a, #0x80
00131$:
	jp	P, 00102$
	pop	hl
	push	hl
	push	bc
	ld	bc, #0x0009
	add	hl, bc
	pop	bc
	ld	l, (hl)
	ld	h, #0x00
	add	hl, de
	ld	a, c
	sub	a, l
	ld	a, b
	sbc	a, h
	jp	PO, 00132$
	xor	a, #0x80
00132$:
	jp	P, 00102$
;src/man/../../src/sys/../../src/sys/collider.c:91: return 1;
	ld	l, #0x01
	jr	00107$
00102$:
;src/man/../../src/sys/../../src/sys/collider.c:93: return 0;
	ld	l, #0x00
00107$:
;src/man/../../src/sys/../../src/sys/collider.c:95: }
	ld	sp, ix
	pop	ix
	ret
;src/man/../../src/sys/physics.c:27: void sys_physics_update(TEntity *entity){
;	---------------------------------
; Function sys_physics_update
; ---------------------------------
_sys_physics_update::
	call	___sdcc_enter_ix
	ld	hl, #-10
	add	hl, sp
	ld	sp, hl
;src/man/../../src/sys/physics.c:28: tile_derecha=sys_collider_get_tile_right_array(entity);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_sys_collider_get_tile_right_array
	pop	af
	ld	(_tile_derecha), hl
;src/man/../../src/sys/physics.c:29: tile_izquierda=sys_collider_get_tile_left_array(entity);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_sys_collider_get_tile_left_array
	pop	af
	ld	(_tile_izquierda), hl
;src/man/../../src/sys/physics.c:30: tile_arriba=sys_collider_get_tile_up_array(entity);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_sys_collider_get_tile_up_array
	pop	af
	ld	(_tile_arriba), hl
;src/man/../../src/sys/physics.c:31: tile_abajo=sys_collider_get_tile_down_array(entity);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_sys_collider_get_tile_down_array
	pop	af
	ld	(_tile_abajo), hl
;src/man/../../src/sys/physics.c:32: tile_pie=sys_collider_get_tile_array(entity);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_sys_collider_get_tile_array
	pop	af
	ld	(_tile_pie), hl
;src/man/../../src/sys/physics.c:33: if (entity->type==entity_type_player){
	ld	a, 4 (ix)
	ld	-10 (ix), a
	ld	a, 5 (ix)
	ld	-9 (ix), a
	pop	hl
	push	hl
	ld	a, (hl)
	ld	-1 (ix), a
;src/man/../../src/sys/physics.c:61: if(entity->dir==3) entity->x=entity->x+entity->vx; 
	ld	a, -10 (ix)
	add	a, #0x02
	ld	-8 (ix), a
	ld	a, -9 (ix)
	adc	a, #0x00
	ld	-7 (ix), a
;src/man/../../src/sys/physics.c:33: if (entity->type==entity_type_player){
	ld	a, -1 (ix)
	dec	a
	jp	NZ,00123$
;src/man/../../src/sys/physics.c:34: sys_physics_check_keyboard(entity);
	pop	hl
	push	hl
	push	hl
	call	_sys_physics_check_keyboard
	pop	af
;src/man/../../src/sys/physics.c:35: sys_check_tiled_enviroment(entity);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_sys_check_tiled_enviroment
	pop	af
;src/man/../../src/sys/physics.c:37: if(entity->jump==1){
	ld	a, -10 (ix)
	add	a, #0x0e
	ld	c, a
	ld	a, -9 (ix)
	adc	a, #0x00
	ld	b, a
	ld	a, (bc)
	ld	e, a
;src/man/../../src/sys/physics.c:38: entity->y+=entity->vy;
	ld	a, -10 (ix)
	add	a, #0x04
	ld	-6 (ix), a
	ld	a, -9 (ix)
	adc	a, #0x00
	ld	-5 (ix), a
	ld	a, -10 (ix)
	add	a, #0x0b
	ld	-4 (ix), a
	ld	a, -9 (ix)
	adc	a, #0x00
	ld	-3 (ix), a
;src/man/../../src/sys/physics.c:37: if(entity->jump==1){
	dec	e
	jr	NZ,00104$
;src/man/../../src/sys/physics.c:38: entity->y+=entity->vy;
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	a, (hl)
	ld	l, a
	rla
	sbc	a, a
	ld	h, a
	add	hl, de
	ex	de, hl
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
;src/man/../../src/sys/physics.c:39: if(entity->old_y-16>=entity->y){
	pop	hl
	push	hl
	push	bc
	ld	bc, #0x0007
	add	hl, bc
	pop	bc
	ld	l, (hl)
	ld	h, #0x00
	ld	a, l
	add	a, #0xf0
	ld	l, a
	ld	a, h
	adc	a, #0xff
	ld	h, a
	ld	a, l
	sub	a, e
	ld	a, h
	sbc	a, d
	jp	PO, 00181$
	xor	a, #0x80
00181$:
	jp	M, 00104$
;src/man/../../src/sys/physics.c:40: entity->vy*=-1;
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	a, (hl)
	neg
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	(hl), a
;src/man/../../src/sys/physics.c:41: entity->jump=0;
	xor	a, a
	ld	(bc), a
00104$:
;src/man/../../src/sys/physics.c:45: if(entity->x<=0) entity->x=0;
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	ld	a, (hl)
	ld	-2 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-1 (ix), a
	xor	a, a
	cp	a, -2 (ix)
	sbc	a, -1 (ix)
	jp	PO, 00182$
	xor	a, #0x80
00182$:
	jp	M, 00108$
	pop	bc
	pop	hl
	push	hl
	push	bc
	xor	a, a
	ld	(hl), a
	inc	hl
	ld	(hl), a
	jr	00109$
00108$:
;src/man/../../src/sys/physics.c:46: else if(entity->x>=240) entity->x=240;
	ld	a, -2 (ix)
	sub	a, #0xf0
	ld	a, -1 (ix)
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	C,00109$
	pop	bc
	pop	hl
	push	hl
	push	bc
	ld	(hl), #0xf0
	inc	hl
	ld	(hl), #0x00
00109$:
;src/man/../../src/sys/physics.c:48: if(entity->y>180) entity->y=212-16;
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, #0xb4
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jp	PO, 00183$
	xor	a, #0x80
00183$:
	jp	P, 00111$
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	ld	(hl), #0xc4
	inc	hl
	ld	(hl), #0x00
00111$:
;src/man/../../src/sys/physics.c:51: if (sys_collider_get_tile_down_array(entity)<tile_stairs1 || sys_collider_get_tile_down_array(entity)>=255){
	pop	hl
	push	hl
	push	hl
	call	_sys_collider_get_tile_down_array
	pop	af
	ld	de, #0x80c0
	add	hl, hl
	ccf
	rr	h
	rr	l
	sbc	hl, de
	jr	C,00112$
	pop	hl
	push	hl
	push	hl
	call	_sys_collider_get_tile_down_array
	pop	af
	ld	de, #0x80ff
	add	hl, hl
	ccf
	rr	h
	rr	l
	sbc	hl, de
	jp	C, 00125$
00112$:
;src/man/../../src/sys/physics.c:53: entity->y+=entity->vy;
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	ld	a, (hl)
	ld	-8 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-7 (ix), a
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	a, (hl)
	ld	-1 (ix), a
	ld	-2 (ix), a
	rla
	sbc	a, a
	ld	-1 (ix), a
	ld	a, -2 (ix)
	add	a, -8 (ix)
	ld	-4 (ix), a
	ld	a, -1 (ix)
	adc	a, -7 (ix)
	ld	-3 (ix), a
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	ld	a, -4 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -3 (ix)
	ld	(hl), a
	jp	00125$
00123$:
;src/man/../../src/sys/physics.c:60: else if(entity->type==entity_type_shot){
	ld	a, -1 (ix)
	sub	a, #0x10
	jp	NZ,00125$
;src/man/../../src/sys/physics.c:61: if(entity->dir==3) entity->x=entity->x+entity->vx; 
	ld	a, -10 (ix)
	ld	-2 (ix), a
	ld	a, -9 (ix)
	ld	-1 (ix), a
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	de, #0x000c
	add	hl, de
	ld	a, (hl)
	ld	-3 (ix), a
	ld	a, -10 (ix)
	add	a, #0x0a
	ld	-2 (ix), a
	ld	a, -9 (ix)
	adc	a, #0x00
	ld	-1 (ix), a
	ld	a, -3 (ix)
	sub	a, #0x03
	jr	NZ,00118$
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	ld	a, (hl)
	ld	-4 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-3 (ix), a
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	a, (hl)
	ld	-6 (ix), a
	rla
	sbc	a, a
	ld	-5 (ix), a
	ld	a, -6 (ix)
	add	a, -4 (ix)
	ld	-2 (ix), a
	ld	a, -5 (ix)
	adc	a, -3 (ix)
	ld	-1 (ix), a
	pop	bc
	pop	hl
	push	hl
	push	bc
	ld	a, -2 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -1 (ix)
	ld	(hl), a
	jr	00125$
00118$:
;src/man/../../src/sys/physics.c:62: else if(entity->dir==7) entity->x=entity->x-entity->vx; 
	ld	a, -3 (ix)
	sub	a, #0x07
	jr	NZ,00125$
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	ld	a, (hl)
	ld	-4 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-3 (ix), a
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	a, (hl)
	ld	-1 (ix), a
	ld	-2 (ix), a
	rla
	sbc	a, a
	ld	-1 (ix), a
	ld	a, -4 (ix)
	sub	a, -2 (ix)
	ld	-6 (ix), a
	ld	a, -3 (ix)
	sbc	a, -1 (ix)
	ld	-5 (ix), a
	pop	bc
	pop	hl
	push	hl
	push	bc
	ld	a, -6 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -5 (ix)
	ld	(hl), a
00125$:
;src/man/../../src/sys/physics.c:66: }
	ld	sp, ix
	pop	ix
	ret
;src/man/../../src/sys/physics.c:67: void sys_check_tiled_enviroment(TEntity *player){
;	---------------------------------
; Function sys_check_tiled_enviroment
; ---------------------------------
_sys_check_tiled_enviroment::
;src/man/../../src/sys/physics.c:68: if (sys_collider_get_tile_array(player)==tile_desabled_divan) player->collider=0;
	pop	bc
	pop	hl
	push	hl
	push	bc
	push	hl
	call	_sys_collider_get_tile_array
	pop	af
	ld	a, l
	sub	a, #0xc6
	or	a, h
	ret	NZ
	pop	de
	pop	bc
	push	bc
	push	de
	ld	hl, #0x0014
	add	hl, bc
	ld	(hl), #0x00
;src/man/../../src/sys/physics.c:69: }
	ret
;src/man/../../src/sys/physics.c:72: void sys_physics_check_keyboard(TEntity *entity){
;	---------------------------------
; Function sys_physics_check_keyboard
; ---------------------------------
_sys_physics_check_keyboard::
	call	___sdcc_enter_ix
	ld	hl, #-11
	add	hl, sp
	ld	sp, hl
;src/man/../../src/sys/physics.c:75: char joy = JoystickRead(0);
	xor	a, a
	push	af
	inc	sp
	call	_JoystickRead
	inc	sp
	ld	-11 (ix), l
;src/man/../../src/sys/physics.c:79: entity->dir=1;
	ld	c, 4 (ix)
	ld	b, 5 (ix)
	ld	hl, #0x000c
	add	hl, bc
	ld	-10 (ix), l
	ld	-9 (ix), h
;src/man/../../src/sys/physics.c:83: entity->y-=entity->vy;
	ld	hl, #0x0004
	add	hl, bc
	ld	-8 (ix), l
	ld	-7 (ix), h
	ld	hl, #0x000b
	add	hl, bc
	ld	-6 (ix), l
	ld	-5 (ix), h
;src/man/../../src/sys/physics.c:78: if(joy==1){
	ld	a, -11 (ix)
	dec	a
	jp	NZ,00110$
;src/man/../../src/sys/physics.c:79: entity->dir=1;
	ld	l, -10 (ix)
	ld	h, -9 (ix)
	ld	(hl), #0x01
;src/man/../../src/sys/physics.c:80: sys_anim_update(entity);
	push	bc
	push	bc
	call	_sys_anim_update
	pop	af
	pop	bc
;src/man/../../src/sys/physics.c:82: if(tile_pie==tile_stairs1 || tile_pie==tile_stairs2 || tile_abajo==tile_stairs1 || tile_abajo==tile_stairs2 ){
	ld	iy, #_tile_pie
	ld	a, 0 (iy)
	sub	a, #0xc0
	or	a, 1 (iy)
	jr	Z,00103$
	ld	a, 0 (iy)
	sub	a, #0xc1
	or	a, 1 (iy)
	jr	Z,00103$
	ld	iy, #_tile_abajo
	ld	a, 0 (iy)
	sub	a, #0xc0
	or	a, 1 (iy)
	jr	Z,00103$
	ld	a, 0 (iy)
	sub	a, #0xc1
	or	a, 1 (iy)
	jr	NZ,00104$
00103$:
;src/man/../../src/sys/physics.c:83: entity->y-=entity->vy;
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	ld	a, (hl)
	ld	l, a
	rla
	sbc	a, a
	ld	h, a
	ld	a, e
	sub	a, l
	ld	e, a
	ld	a, d
	sbc	a, h
	ld	d, a
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
	jr	00110$
00104$:
;src/man/../../src/sys/physics.c:85: }else if(entity->jump==0){
	ld	l, c
	ld	h, b
	ld	de, #0x000e
	add	hl, de
	ld	a, (hl)
	or	a, a
	jr	NZ,00110$
;src/man/../../src/sys/physics.c:86: entity_jump(entity);
	push	bc
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_entity_jump
	pop	af
	pop	bc
00110$:
;src/man/../../src/sys/physics.c:94: entity->x+=entity->vx;
	ld	hl, #0x0002
	add	hl, bc
	ld	-4 (ix), l
	ld	-3 (ix), h
	ld	hl, #0x000a
	add	hl, bc
	ld	-2 (ix), l
	ld	-1 (ix), h
;src/man/../../src/sys/physics.c:90: if(joy==2){
	ld	a, -11 (ix)
	sub	a, #0x02
	jr	NZ,00116$
;src/man/../../src/sys/physics.c:91: entity->dir=2;
	ld	l, -10 (ix)
	ld	h, -9 (ix)
	ld	(hl), #0x02
;src/man/../../src/sys/physics.c:92: sys_anim_update(entity);
	push	bc
	push	bc
	call	_sys_anim_update
	pop	af
	pop	bc
;src/man/../../src/sys/physics.c:93: if(tile_derecha<tile_floor_tile || tile_derecha==tile_empty){
	ld	iy, #_tile_derecha
	ld	a, 0 (iy)
	sub	a, #0xe0
	ld	a, 1 (iy)
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	C,00111$
	ld	a, 0 (iy)
	inc	a
	or	a, 1 (iy)
	jr	NZ,00112$
00111$:
;src/man/../../src/sys/physics.c:94: entity->x+=entity->vx;
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	a, (hl)
	ld	l, a
	rla
	sbc	a, a
	ld	h, a
	add	hl, de
	ex	de, hl
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
;src/man/../../src/sys/physics.c:95: entity_jump(entity); 
	push	bc
	push	bc
	call	_entity_jump
	pop	af
	pop	bc
	jr	00116$
00112$:
;src/man/../../src/sys/physics.c:97: entity_jump(entity); 
	push	bc
	push	bc
	call	_entity_jump
	pop	af
	pop	bc
00116$:
;src/man/../../src/sys/physics.c:102: if(joy==8){
	ld	a, -11 (ix)
	sub	a, #0x08
	jr	NZ,00122$
;src/man/../../src/sys/physics.c:103: entity->dir=8;
	ld	l, -10 (ix)
	ld	h, -9 (ix)
	ld	(hl), #0x08
;src/man/../../src/sys/physics.c:104: sys_anim_update(entity);
	push	bc
	push	bc
	call	_sys_anim_update
	pop	af
	pop	bc
;src/man/../../src/sys/physics.c:105: if(tile_izquierda<tile_floor_tile || tile_izquierda==tile_empty){
	ld	iy, #_tile_izquierda
	ld	a, 0 (iy)
	sub	a, #0xe0
	ld	a, 1 (iy)
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	C,00117$
	ld	a, 0 (iy)
	inc	a
	or	a, 1 (iy)
	jr	NZ,00118$
00117$:
;src/man/../../src/sys/physics.c:106: entity_jump(entity);
	push	bc
	push	bc
	call	_entity_jump
	pop	af
	pop	bc
;src/man/../../src/sys/physics.c:107: entity->x-=entity->vx; 
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	a, (hl)
	ld	l, a
	rla
	sbc	a, a
	ld	h, a
	ld	a, e
	sub	a, l
	ld	e, a
	ld	a, d
	sbc	a, h
	ld	d, a
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
	jr	00122$
00118$:
;src/man/../../src/sys/physics.c:109: entity_jump(entity); 
	push	bc
	push	bc
	call	_entity_jump
	pop	af
	pop	bc
00122$:
;src/man/../../src/sys/physics.c:113: if(joy==3){
	ld	a, -11 (ix)
	sub	a, #0x03
	jr	NZ,00128$
;src/man/../../src/sys/physics.c:114: entity->dir=3;
	ld	l, -10 (ix)
	ld	h, -9 (ix)
	ld	(hl), #0x03
;src/man/../../src/sys/physics.c:115: sys_anim_update(entity);
	push	bc
	push	bc
	call	_sys_anim_update
	pop	af
	pop	bc
;src/man/../../src/sys/physics.c:116: if(tile_derecha<tile_floor_tile || tile_derecha==tile_empty || tile_derecha==tile_door_right)
	ld	iy, #_tile_derecha
	ld	a, 0 (iy)
	sub	a, #0xe0
	ld	a, 1 (iy)
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	C,00123$
	ld	a, 0 (iy)
	inc	a
	or	a, 1 (iy)
	jr	Z,00123$
	ld	a, 0 (iy)
	sub	a, #0xe5
	or	a, 1 (iy)
	jr	NZ,00128$
00123$:
;src/man/../../src/sys/physics.c:117: entity->x+=entity->vx;
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	a, (hl)
	ld	l, a
	rla
	sbc	a, a
	ld	h, a
	add	hl, de
	ex	de, hl
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
00128$:
;src/man/../../src/sys/physics.c:119: if(joy==4){
	ld	a, -11 (ix)
	sub	a, #0x04
	jr	NZ,00130$
;src/man/../../src/sys/physics.c:120: entity->dir=4;
	ld	l, -10 (ix)
	ld	h, -9 (ix)
	ld	(hl), #0x04
00130$:
;src/man/../../src/sys/physics.c:123: if(joy==5){
	ld	a, -11 (ix)
	sub	a, #0x05
	jr	NZ,00135$
;src/man/../../src/sys/physics.c:124: entity->dir=5;
	ld	l, -10 (ix)
	ld	h, -9 (ix)
	ld	(hl), #0x05
;src/man/../../src/sys/physics.c:125: if(tile_abajo==tile_stairs1 ||tile_abajo==tile_stairs2 )
	ld	iy, #_tile_abajo
	ld	a, 0 (iy)
	sub	a, #0xc0
	or	a, 1 (iy)
	jr	Z,00131$
	ld	a, 0 (iy)
	sub	a, #0xc1
	or	a, 1 (iy)
	jr	NZ,00132$
00131$:
;src/man/../../src/sys/physics.c:126: entity->y+=entity->vy;
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	ld	a, (hl)
	ld	l, a
	rla
	sbc	a, a
	ld	h, a
	add	hl, de
	ex	de, hl
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
00132$:
;src/man/../../src/sys/physics.c:127: sys_anim_update(entity);
	push	bc
	push	bc
	call	_sys_anim_update
	pop	af
	pop	bc
00135$:
;src/man/../../src/sys/physics.c:130: if(joy==6){
	ld	a, -11 (ix)
	sub	a, #0x06
	jr	NZ,00137$
;src/man/../../src/sys/physics.c:131: entity->dir=6;
	ld	l, -10 (ix)
	ld	h, -9 (ix)
	ld	(hl), #0x06
00137$:
;src/man/../../src/sys/physics.c:134: if(joy==7) {
	ld	a, -11 (ix)
	sub	a, #0x07
	jr	NZ,00144$
;src/man/../../src/sys/physics.c:135: entity->dir=7;
	ld	l, -10 (ix)
	ld	h, -9 (ix)
	ld	(hl), #0x07
;src/man/../../src/sys/physics.c:136: sys_anim_update(entity);
	push	bc
	call	_sys_anim_update
	pop	af
;src/man/../../src/sys/physics.c:137: if(tile_izquierda<tile_floor_tile || tile_izquierda==tile_empty || tile_izquierda==tile_door_left)
	ld	iy, #_tile_izquierda
	ld	a, 0 (iy)
	sub	a, #0xe0
	ld	a, 1 (iy)
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	C,00138$
	ld	a, 0 (iy)
	inc	a
	or	a, 1 (iy)
	jr	Z,00138$
	ld	a, 0 (iy)
	sub	a, #0xe4
	or	a, 1 (iy)
	jr	NZ,00144$
00138$:
;src/man/../../src/sys/physics.c:138: entity->x-=entity->vx; 
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	a, (hl)
	ld	e, a
	rla
	sbc	a, a
	ld	d, a
	ld	a, c
	sub	a, e
	ld	c, a
	ld	a, b
	sbc	a, d
	ld	b, a
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	(hl), c
	inc	hl
	ld	(hl), b
00144$:
;src/man/../../src/sys/physics.c:154: }
	ld	sp, ix
	pop	ix
	ret
;src/man/../../src/sys/physics.c:157: void entity_jump(TEntity *entity){
;	---------------------------------
; Function entity_jump
; ---------------------------------
_entity_jump::
	call	___sdcc_enter_ix
;src/man/../../src/sys/physics.c:159: if (entity->jump==0 && sys_collider_get_tile_down_array(entity)>=tile_floor_tile && sys_collider_get_tile_down_array(entity)<255){
	ld	c, 4 (ix)
	ld	b, 5 (ix)
	ld	hl, #0x000e
	add	hl, bc
	ex	de, hl
	ld	a, (de)
	or	a, a
	jr	NZ,00105$
	push	bc
	push	de
	push	bc
	call	_sys_collider_get_tile_down_array
	pop	af
	pop	de
	pop	bc
	ld	a, l
	sub	a, #0xe0
	ld	a, h
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	C,00105$
	push	bc
	push	de
	push	bc
	call	_sys_collider_get_tile_down_array
	pop	af
	pop	de
	pop	bc
	ld	a, l
	sub	a, #0xff
	ld	a, h
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	NC,00105$
;src/man/../../src/sys/physics.c:161: entity->jump=1;  
	ld	a, #0x01
	ld	(de), a
;src/man/../../src/sys/physics.c:163: entity->vy*=-1;
	ld	hl, #0x000b
	add	hl, bc
	ld	a, (hl)
	neg
	ld	(hl), a
;src/man/../../src/sys/physics.c:164: entity->old_y=entity->y;
	ld	hl, #0x0007
	add	hl, bc
	ex	de, hl
	ld	l, c
	ld	h, b
	ld	bc, #0x0004
	add	hl, bc
	ld	a, (hl)
	ld	(de), a
00105$:
;src/man/../../src/sys/physics.c:166: }
	pop	ix
	ret
;src/man/../../src/sys/render.c:17: void sys_render_init(){
;	---------------------------------
; Function sys_render_init
; ---------------------------------
_sys_render_init::
;src/man/../../src/sys/render.c:19: SetColors(1,0,15);
	ld	a, #0x0f
	push	af
	inc	sp
	xor	a, a
	ld	d,a
	ld	e,#0x01
	push	de
	call	_SetColors
	pop	af
	inc	sp
;src/man/../../src/sys/render.c:20: Screen(5);
	ld	a, #0x05
	push	af
	inc	sp
	call	_Screen
	inc	sp
;src/man/../../src/sys/render.c:22: SpriteReset(); 
	call	_SpriteReset
;src/man/../../src/sys/render.c:24: Sprite16(); 
	call	_Sprite16
;src/man/../../src/sys/render.c:26: SpriteSmall(); 
	call	_SpriteSmall
;src/man/../../src/sys/render.c:28: SpriteOff();
;src/man/../../src/sys/render.c:29: }
	jp	_SpriteOff
;src/man/../../src/sys/render.c:32: void sys_render_update(TEntity *entity){
;	---------------------------------
; Function sys_render_update
; ---------------------------------
_sys_render_update::
;src/man/../../src/sys/render.c:33: if (entity->type==entity_type_player)sys_render_update_player(entity);
	pop	de
	pop	bc
	push	bc
	push	de
	ld	a, (bc)
	dec	a
	jr	NZ,00102$
	push	bc
	push	bc
	call	_sys_render_update_player
	pop	af
	pop	bc
00102$:
;src/man/../../src/sys/render.c:34: if (entity->type==entity_type_enemy1)sys_render_update_enemy1(entity);
	ld	a, (bc)
	sub	a, #0x02
	jr	NZ,00104$
	push	bc
	ld	hl, #4
	add	hl, sp
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	push	bc
	call	_sys_render_update_enemy1
	pop	af
	pop	bc
00104$:
;src/man/../../src/sys/render.c:35: if (entity->type==entity_type_enemy2)sys_render_update_enemy2(entity);
	ld	a, (bc)
	sub	a, #0x04
	jr	NZ,00106$
	push	bc
	push	bc
	call	_sys_render_update_enemy2
	pop	af
	pop	bc
00106$:
;src/man/../../src/sys/render.c:36: if (entity->type==entity_type_shot)sys_render_update_shot(entity);
	ld	a, (bc)
	sub	a, #0x10
	jr	NZ,00108$
	push	bc
	ld	hl, #4
	add	hl, sp
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	push	bc
	call	_sys_render_update_shot
	pop	af
	pop	bc
00108$:
;src/man/../../src/sys/render.c:37: if (entity->type==entity_type_object_money)sys_render_update_object_money(entity);
	ld	a, (bc)
	sub	a, #0x16
	jr	NZ,00110$
	push	bc
	push	bc
	call	_sys_render_update_object_money
	pop	af
	pop	bc
00110$:
;src/man/../../src/sys/render.c:38: if (entity->type==entity_type_object_divan)sys_render_update_object_divan1(entity);
	ld	a, (bc)
	sub	a, #0x32
	ret	NZ
	pop	bc
	pop	hl
	push	hl
	push	bc
	push	hl
	call	_sys_render_update_object_divan1
	pop	af
;src/man/../../src/sys/render.c:41: }
	ret
;src/man/../../src/sys/render.c:42: void sys_render_update_player(TEntity *player){
;	---------------------------------
; Function sys_render_update_player
; ---------------------------------
_sys_render_update_player::
	call	___sdcc_enter_ix
	push	af
	push	af
	push	af
;src/man/../../src/sys/render.c:51: if (player->dir==1 || player->dir==5){
	ld	c, 4 (ix)
	ld	b, 5 (ix)
	ld	l, c
	ld	h, b
	ld	de, #0x000c
	add	hl, de
	ld	l, (hl)
;src/man/../../src/sys/render.c:52: PutSprite( player->plane, player_up1_pattern, player->x,player->y,0 );
	ld	a, c
	add	a, #0x04
	ld	-6 (ix), a
	ld	a, b
	adc	a, #0x00
	ld	-5 (ix), a
	ld	e, c
	ld	d, b
	inc	de
	inc	de
	ld	a, c
	add	a, #0x0f
	ld	-4 (ix), a
	ld	a, b
	adc	a, #0x00
	ld	-3 (ix), a
;src/man/../../src/sys/render.c:51: if (player->dir==1 || player->dir==5){
	ld	a, l
	dec	a
	jr	Z,00121$
	ld	a, l
	sub	a, #0x05
	jr	NZ,00122$
00121$:
;src/man/../../src/sys/render.c:52: PutSprite( player->plane, player_up1_pattern, player->x,player->y,0 );
	pop	hl
	push	hl
	ld	c, (hl)
	ld	a, (de)
	ld	d, a
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	b, (hl)
	xor	a, a
	push	af
	inc	sp
	ld	a, c
	push	af
	inc	sp
	push	de
	inc	sp
	ld	a, #0x14
	push	af
	inc	sp
	push	bc
	inc	sp
	call	_PutSprite
	pop	af
	pop	af
	inc	sp
	jp	00125$
00122$:
;src/man/../../src/sys/render.c:53: }else if (player->dir==2){
	ld	a, l
	sub	a, #0x02
	jr	NZ,00119$
;src/man/../../src/sys/render.c:54: PutSprite( player->plane, player_Jump_right_pattern, player->x,player->y,0 );
	pop	hl
	push	hl
	ld	c, (hl)
	ld	a, (de)
	ld	d, a
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	b, (hl)
	xor	a, a
	push	af
	inc	sp
	ld	a, c
	push	af
	inc	sp
	push	de
	inc	sp
	ld	a, #0x20
	push	af
	inc	sp
	push	bc
	inc	sp
	call	_PutSprite
	pop	af
	pop	af
	inc	sp
	jp	00125$
00119$:
;src/man/../../src/sys/render.c:55: }else if (player->dir==8){
	ld	a, l
	sub	a, #0x08
	jr	NZ,00116$
;src/man/../../src/sys/render.c:56: PutSprite( player->plane, player_jump_left_pattern, player->x,player->y,0 );
	pop	hl
	push	hl
	ld	c, (hl)
	ld	a, (de)
	ld	d, a
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	b, (hl)
	xor	a, a
	push	af
	inc	sp
	ld	a, c
	push	af
	inc	sp
	push	de
	inc	sp
	ld	a, #0x1c
	push	af
	inc	sp
	push	bc
	inc	sp
	call	_PutSprite
	pop	af
	pop	af
	inc	sp
	jp	00125$
00116$:
;src/man/../../src/sys/render.c:58: if(player->andando ==0 ){
	ld	a, c
	add	a, #0x0d
	ld	-2 (ix), a
	ld	a, b
	adc	a, #0x00
	ld	-1 (ix), a
;src/man/../../src/sys/render.c:57: }else if (player->dir==3){
	ld	a, l
	sub	a, #0x03
	jr	NZ,00113$
;src/man/../../src/sys/render.c:58: if(player->andando ==0 ){
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	c, (hl)
;src/man/../../src/sys/render.c:52: PutSprite( player->plane, player_up1_pattern, player->x,player->y,0 );
	pop	hl
	push	hl
	ld	b, (hl)
	ld	a, (de)
	ld	e, a
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	d, (hl)
;src/man/../../src/sys/render.c:58: if(player->andando ==0 ){
	ld	a, c
	or	a, a
	jr	NZ,00102$
;src/man/../../src/sys/render.c:59: PutSprite( player->plane, player_right_pattern, player->x,player->y,0 );
	xor	a, a
	push	af
	inc	sp
	push	bc
	inc	sp
	ld	b, e
	ld	c,#0x0c
	push	bc
	push	de
	inc	sp
	call	_PutSprite
	pop	af
	pop	af
	inc	sp
	jr	00125$
00102$:
;src/man/../../src/sys/render.c:61: PutSprite( player->plane, player_right_walking_pattern, player->x,player->y,  0);
	xor	a, a
	push	af
	inc	sp
	push	bc
	inc	sp
	ld	b, e
	ld	c,#0x10
	push	bc
	push	de
	inc	sp
	call	_PutSprite
	pop	af
	pop	af
	inc	sp
	jr	00125$
00113$:
;src/man/../../src/sys/render.c:64: }else if(player->dir==7){
	ld	a, l
	sub	a, #0x07
	jr	NZ,00125$
;src/man/../../src/sys/render.c:65: if (player->jump==1){
	ld	l, c
	ld	h, b
	ld	bc, #0x000e
	add	hl, bc
	ld	c, (hl)
;src/man/../../src/sys/render.c:52: PutSprite( player->plane, player_up1_pattern, player->x,player->y,0 );
	pop	hl
	push	hl
	ld	b, (hl)
	ld	a, (de)
	ld	d, a
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	e, (hl)
;src/man/../../src/sys/render.c:65: if (player->jump==1){
	dec	c
	jr	NZ,00108$
;src/man/../../src/sys/render.c:66: PutSprite( player->plane, player_jump_left_pattern, player->x,player->y,0 );
	xor	a, a
	push	af
	inc	sp
	ld	c, d
	push	bc
	ld	d,#0x1c
	push	de
	call	_PutSprite
	pop	af
	pop	af
	inc	sp
	jr	00125$
00108$:
;src/man/../../src/sys/render.c:68: if(player->andando ==0){
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	a, (hl)
	or	a, a
	jr	NZ,00105$
;src/man/../../src/sys/render.c:69: PutSprite( player->plane, player_left_pattern, player->x,player->y, 0 );
	xor	a, a
	push	af
	inc	sp
	ld	c, d
	push	bc
	ld	d,#0x04
	push	de
	call	_PutSprite
	pop	af
	pop	af
	inc	sp
	jr	00125$
00105$:
;src/man/../../src/sys/render.c:71: PutSprite( player->plane, player_left_walking_pattern, player->x,player->y,  0 );
	xor	a, a
	push	af
	inc	sp
	ld	c, d
	push	bc
	ld	d,#0x08
	push	de
	call	_PutSprite
	pop	af
	pop	af
	inc	sp
00125$:
;src/man/../../src/sys/render.c:75: }
	ld	sp, ix
	pop	ix
	ret
;src/man/../../src/sys/render.c:79: void sys_render_update_enemy1(TEntity *enemy){   
;	---------------------------------
; Function sys_render_update_enemy1
; ---------------------------------
_sys_render_update_enemy1::
	call	___sdcc_enter_ix
	push	af
	push	af
	push	af
;src/man/../../src/sys/render.c:81: sys_anim_update(enemy);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_sys_anim_update
	pop	af
;src/man/../../src/sys/render.c:83: if (enemy->dir==3 && enemy->x<256 && enemy->x>0){
	ld	e, 4 (ix)
	ld	d, 5 (ix)
	ld	l, e
	ld	h, d
	ld	bc, #0x000c
	add	hl, bc
	ld	c, (hl)
	ld	hl, #0x0002
	add	hl, de
	ex	(sp), hl
;src/man/../../src/sys/render.c:84: if (enemy->andando){
	ld	hl, #0x000d
	add	hl, de
	ld	-4 (ix), l
	ld	-3 (ix), h
;src/man/../../src/sys/render.c:85: PutSprite(enemy->plane,enemy1_right_pattern,enemy->x,enemy->y,0);
	ld	hl, #0x0004
	add	hl, de
	ld	-2 (ix), l
	ld	-1 (ix), h
	ex	de,hl
	ld	de, #0x000f
	add	hl, de
	ld	b, (hl)
;src/man/../../src/sys/render.c:83: if (enemy->dir==3 && enemy->x<256 && enemy->x>0){
	ld	a, c
	sub	a, #0x03
	jr	NZ,00113$
	pop	hl
	push	hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, d
	xor	a, #0x80
	sub	a, #0x81
	jr	NC,00113$
	xor	a, a
	cp	a, e
	sbc	a, d
	jp	PO, 00161$
	xor	a, #0x80
00161$:
	jp	P, 00113$
;src/man/../../src/sys/render.c:84: if (enemy->andando){
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	a, (hl)
;src/man/../../src/sys/render.c:85: PutSprite(enemy->plane,enemy1_right_pattern,enemy->x,enemy->y,0);
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	d, (hl)
;src/man/../../src/sys/render.c:84: if (enemy->andando){
	or	a, a
	jr	Z,00102$
;src/man/../../src/sys/render.c:85: PutSprite(enemy->plane,enemy1_right_pattern,enemy->x,enemy->y,0);
	xor	a, a
	push	af
	inc	sp
	push	de
	inc	sp
	ld	d, e
	ld	e,#0x24
	push	de
	push	bc
	inc	sp
	call	_PutSprite
	pop	af
	pop	af
	inc	sp
	jp	00117$
00102$:
;src/man/../../src/sys/render.c:87: PutSprite(enemy->plane,enemy1_right_walking_pattern,enemy->x,enemy->y,0);
	xor	a, a
	push	af
	inc	sp
	push	de
	inc	sp
	ld	d, e
	ld	e,#0x28
	push	de
	push	bc
	inc	sp
	call	_PutSprite
	pop	af
	pop	af
	inc	sp
	jr	00117$
00113$:
;src/man/../../src/sys/render.c:90: }else if (enemy->dir==7 && enemy->x<256 && enemy->x>0){
	ld	a, c
	sub	a, #0x07
	jr	NZ,00108$
	pop	hl
	push	hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, d
	xor	a, #0x80
	sub	a, #0x81
	jr	NC,00108$
	xor	a, a
	cp	a, e
	sbc	a, d
	jp	PO, 00164$
	xor	a, #0x80
00164$:
	jp	P, 00108$
;src/man/../../src/sys/render.c:91: if (enemy->andando){
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	a, (hl)
;src/man/../../src/sys/render.c:92: PutSprite(enemy->plane,enemy1_left_pattern,enemy->x,enemy->y,0);
	ld	d, e
;src/man/../../src/sys/render.c:85: PutSprite(enemy->plane,enemy1_right_pattern,enemy->x,enemy->y,0);
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	h, (hl)
;src/man/../../src/sys/render.c:91: if (enemy->andando){
	or	a, a
	jr	Z,00105$
;src/man/../../src/sys/render.c:92: PutSprite(enemy->plane,enemy1_left_pattern,enemy->x,enemy->y,0);
	xor	a, a
	push	af
	inc	sp
	ld	l, d
	push	hl
	ld	a, #0x2c
	push	af
	inc	sp
	push	bc
	inc	sp
	call	_PutSprite
	pop	af
	pop	af
	inc	sp
	jr	00117$
00105$:
;src/man/../../src/sys/render.c:94: PutSprite(enemy->plane,enemy1_left_walking_pattern,enemy->x,enemy->y,0);
	xor	a, a
	push	af
	inc	sp
	ld	l, d
	push	hl
	ld	a, #0x30
	push	af
	inc	sp
	push	bc
	inc	sp
	call	_PutSprite
	pop	af
	pop	af
	inc	sp
	jr	00117$
00108$:
;src/man/../../src/sys/render.c:97: PutSprite(enemy->plane,enemy1_left_walking_pattern,0,212,0);
	xor	a, a
	ld	d,a
	ld	e,#0xd4
	push	de
	xor	a, a
	ld	d,a
	ld	e,#0x30
	push	de
	push	bc
	inc	sp
	call	_PutSprite
	pop	af
	pop	af
	inc	sp
00117$:
;src/man/../../src/sys/render.c:99: }
	ld	sp, ix
	pop	ix
	ret
;src/man/../../src/sys/render.c:101: void sys_render_update_enemy2(TEntity *enemy){   
;	---------------------------------
; Function sys_render_update_enemy2
; ---------------------------------
_sys_render_update_enemy2::
	call	___sdcc_enter_ix
	push	af
	push	af
	push	af
;src/man/../../src/sys/render.c:103: sys_anim_update(enemy);
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_sys_anim_update
	pop	af
;src/man/../../src/sys/render.c:105: if (enemy->dir==3 && enemy->x<256 && enemy->x>0){
	ld	e, 4 (ix)
	ld	d, 5 (ix)
	ld	l, e
	ld	h, d
	ld	bc, #0x000c
	add	hl, bc
	ld	c, (hl)
	ld	hl, #0x0002
	add	hl, de
	ex	(sp), hl
;src/man/../../src/sys/render.c:106: if (enemy->andando){
	ld	hl, #0x000d
	add	hl, de
	ld	-4 (ix), l
	ld	-3 (ix), h
;src/man/../../src/sys/render.c:107: PutSprite(enemy->plane,enemy2_right_pattern,enemy->x,enemy->y,0);
	ld	hl, #0x0004
	add	hl, de
	ld	-2 (ix), l
	ld	-1 (ix), h
	ex	de,hl
	ld	de, #0x000f
	add	hl, de
	ld	b, (hl)
;src/man/../../src/sys/render.c:105: if (enemy->dir==3 && enemy->x<256 && enemy->x>0){
	ld	a, c
	sub	a, #0x03
	jr	NZ,00122$
	pop	hl
	push	hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, d
	xor	a, #0x80
	sub	a, #0x81
	jr	NC,00122$
	xor	a, a
	cp	a, e
	sbc	a, d
	jp	PO, 00190$
	xor	a, #0x80
00190$:
	jp	P, 00122$
;src/man/../../src/sys/render.c:106: if (enemy->andando){
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	a, (hl)
;src/man/../../src/sys/render.c:107: PutSprite(enemy->plane,enemy2_right_pattern,enemy->x,enemy->y,0);
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	d, (hl)
;src/man/../../src/sys/render.c:106: if (enemy->andando){
	or	a, a
	jr	Z,00102$
;src/man/../../src/sys/render.c:107: PutSprite(enemy->plane,enemy2_right_pattern,enemy->x,enemy->y,0);
	xor	a, a
	push	af
	inc	sp
	push	de
	inc	sp
	ld	d, e
	ld	e,#0x34
	push	de
	push	bc
	inc	sp
	call	_PutSprite
	pop	af
	pop	af
	inc	sp
	jp	00126$
00102$:
;src/man/../../src/sys/render.c:109: PutSprite(enemy->plane,enemy2_right_walking_pattern,enemy->x,enemy->y,0);
	xor	a, a
	push	af
	inc	sp
	push	de
	inc	sp
	ld	d, e
	ld	e,#0x38
	push	de
	push	bc
	inc	sp
	call	_PutSprite
	pop	af
	pop	af
	inc	sp
	jp	00126$
00122$:
;src/man/../../src/sys/render.c:112: }else if (enemy->dir==5 || enemy->dir==1 && enemy->y<212 && enemy->y>0){
	ld	a,c
	cp	a,#0x05
	jr	Z,00115$
	dec	a
	jr	NZ,00116$
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, e
	sub	a, #0xd4
	ld	a, d
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	NC,00116$
	xor	a, a
	cp	a, e
	sbc	a, d
	jp	PO, 00194$
	xor	a, #0x80
00194$:
	jp	P, 00116$
00115$:
;src/man/../../src/sys/render.c:113: if (enemy->andando){
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	a, (hl)
;src/man/../../src/sys/render.c:105: if (enemy->dir==3 && enemy->x<256 && enemy->x>0){
	pop	hl
	push	hl
	ld	d, (hl)
;src/man/../../src/sys/render.c:107: PutSprite(enemy->plane,enemy2_right_pattern,enemy->x,enemy->y,0);
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	h, (hl)
;src/man/../../src/sys/render.c:113: if (enemy->andando){
	or	a, a
	jr	Z,00105$
;src/man/../../src/sys/render.c:114: PutSprite(enemy->plane,enemy2_up_pattern,enemy->x,enemy->y,0);
	xor	a, a
	push	af
	inc	sp
	ld	l, d
	push	hl
	ld	a, #0x44
	push	af
	inc	sp
	push	bc
	inc	sp
	call	_PutSprite
	pop	af
	pop	af
	inc	sp
	jp	00126$
00105$:
;src/man/../../src/sys/render.c:116: PutSprite(enemy->plane,enemy2_up_walking_pattern,enemy->x,enemy->y,0);
	xor	a, a
	push	af
	inc	sp
	ld	l, d
	push	hl
	ld	a, #0x48
	push	af
	inc	sp
	push	bc
	inc	sp
	call	_PutSprite
	pop	af
	pop	af
	inc	sp
	jr	00126$
00116$:
;src/man/../../src/sys/render.c:118: }else if (enemy->dir==7 && enemy->x<256 && enemy->x>0){
	ld	a, c
	sub	a, #0x07
	jr	NZ,00111$
	pop	hl
	push	hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, d
	xor	a, #0x80
	sub	a, #0x81
	jr	NC,00111$
	xor	a, a
	cp	a, e
	sbc	a, d
	jp	PO, 00197$
	xor	a, #0x80
00197$:
	jp	P, 00111$
;src/man/../../src/sys/render.c:119: if (enemy->andando){
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	a, (hl)
;src/man/../../src/sys/render.c:120: PutSprite(enemy->plane,enemy2_left_pattern,enemy->x,enemy->y,0);
	ld	d, e
;src/man/../../src/sys/render.c:107: PutSprite(enemy->plane,enemy2_right_pattern,enemy->x,enemy->y,0);
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	h, (hl)
;src/man/../../src/sys/render.c:119: if (enemy->andando){
	or	a, a
	jr	Z,00108$
;src/man/../../src/sys/render.c:120: PutSprite(enemy->plane,enemy2_left_pattern,enemy->x,enemy->y,0);
	xor	a, a
	push	af
	inc	sp
	ld	l, d
	push	hl
	ld	a, #0x3c
	push	af
	inc	sp
	push	bc
	inc	sp
	call	_PutSprite
	pop	af
	pop	af
	inc	sp
	jr	00126$
00108$:
;src/man/../../src/sys/render.c:122: PutSprite(enemy->plane,enemy2_left_walking_pattern,enemy->x,enemy->y,0);
	xor	a, a
	push	af
	inc	sp
	ld	l, d
	push	hl
	ld	a, #0x40
	push	af
	inc	sp
	push	bc
	inc	sp
	call	_PutSprite
	pop	af
	pop	af
	inc	sp
	jr	00126$
00111$:
;src/man/../../src/sys/render.c:125: PutSprite(enemy->plane,enemy2_left_walking_pattern,0,212,0);
	xor	a, a
	ld	d,a
	ld	e,#0xd4
	push	de
	xor	a, a
	ld	d,a
	ld	e,#0x40
	push	de
	push	bc
	inc	sp
	call	_PutSprite
	pop	af
	pop	af
	inc	sp
00126$:
;src/man/../../src/sys/render.c:128: }
	ld	sp, ix
	pop	ix
	ret
;src/man/../../src/sys/render.c:130: void sys_render_update_shot(TEntity *shot){
;	---------------------------------
; Function sys_render_update_shot
; ---------------------------------
_sys_render_update_shot::
	call	___sdcc_enter_ix
;src/man/../../src/sys/render.c:131: PutSprite(shot->plane,shot_pattern,shot->x,shot->y,0);
	ld	c, 4 (ix)
	ld	b, 5 (ix)
	ld	l, c
	ld	h, b
	ld	de, #0x0004
	add	hl, de
	ld	e, (hl)
	ld	l, c
	ld	h, b
	inc	hl
	inc	hl
	ld	d, (hl)
	ld	l, c
	ld	h, b
	ld	bc, #0x000f
	add	hl, bc
	ld	b, (hl)
	xor	a, a
	push	af
	inc	sp
	ld	a, e
	push	af
	inc	sp
	push	de
	inc	sp
	xor	a, a
	push	af
	inc	sp
	push	bc
	inc	sp
	call	_PutSprite
	pop	af
	pop	af
	inc	sp
;src/man/../../src/sys/render.c:132: }
	pop	ix
	ret
;src/man/../../src/sys/render.c:135: void sys_render_update_object_money(TEntity *object){
;	---------------------------------
; Function sys_render_update_object_money
; ---------------------------------
_sys_render_update_object_money::
	call	___sdcc_enter_ix
;src/man/../../src/sys/render.c:137: PutSprite(object->plane,object_money_pattern,object->x,object->y,0);
	ld	c, 4 (ix)
	ld	b, 5 (ix)
	ld	l, c
	ld	h, b
	ld	de, #0x0004
	add	hl, de
	ld	e, (hl)
	ld	l, c
	ld	h, b
	inc	hl
	inc	hl
	ld	d, (hl)
	ld	l, c
	ld	h, b
	ld	bc, #0x000f
	add	hl, bc
	ld	b, (hl)
	xor	a, a
	push	af
	inc	sp
	ld	a, e
	push	af
	inc	sp
	push	de
	inc	sp
	ld	a, #0x4c
	push	af
	inc	sp
	push	bc
	inc	sp
	call	_PutSprite
	pop	af
	pop	af
	inc	sp
;src/man/../../src/sys/render.c:138: }
	pop	ix
	ret
;src/man/../../src/sys/render.c:140: void sys_render_update_object_divan1(TEntity *object){
;	---------------------------------
; Function sys_render_update_object_divan1
; ---------------------------------
_sys_render_update_object_divan1::
	call	___sdcc_enter_ix
;src/man/../../src/sys/render.c:142: PutSprite(object->plane,object_divan1_pattern,object->x,object->y,0);
	ld	c, 4 (ix)
	ld	b, 5 (ix)
	ld	l, c
	ld	h, b
	ld	de, #0x0004
	add	hl, de
	ld	e, (hl)
	ld	l, c
	ld	h, b
	inc	hl
	inc	hl
	ld	d, (hl)
	ld	l, c
	ld	h, b
	ld	bc, #0x000f
	add	hl, bc
	ld	b, (hl)
	xor	a, a
	push	af
	inc	sp
	ld	a, e
	push	af
	inc	sp
	push	de
	inc	sp
	ld	a, #0x58
	push	af
	inc	sp
	push	bc
	inc	sp
	call	_PutSprite
	pop	af
	pop	af
	inc	sp
;src/man/../../src/sys/render.c:143: }
	pop	ix
	ret
;src/man/../../src/sys/ai.c:17: void sys_ai_init(){
;	---------------------------------
; Function sys_ai_init
; ---------------------------------
_sys_ai_init::
;src/man/../../src/sys/ai.c:18: sys_ai_contador=0;
	ld	hl, #0x0000
	ld	(_sys_ai_contador), hl
;src/man/../../src/sys/ai.c:19: player=sys_entity_create_player();
	call	_sys_entity_create_player
	ld	(_player), hl
;src/man/../../src/sys/ai.c:20: }
	ret
;src/man/../../src/sys/ai.c:23: void sys_ai_update(TEntity *entity){
;	---------------------------------
; Function sys_ai_update
; ---------------------------------
_sys_ai_update::
;src/man/../../src/sys/ai.c:24: if (entity->type==entity_type_enemy1)sys_ai_update_enemy_behavior_1(entity);
	pop	de
	pop	bc
	push	bc
	push	de
	ld	a, (bc)
	sub	a, #0x02
	jr	NZ,00102$
	push	bc
	push	bc
	call	_sys_ai_update_enemy_behavior_1
	pop	af
	pop	bc
00102$:
;src/man/../../src/sys/ai.c:25: if (entity->type==entity_type_enemy2)sys_ai_update_enemy_behavior_2(entity);
	ld	a, (bc)
	sub	a, #0x04
	ret	NZ
	pop	bc
	pop	hl
	push	hl
	push	bc
	push	hl
	call	_sys_ai_update_enemy_behavior_2
	pop	af
;src/man/../../src/sys/ai.c:26: if (entity->type==entity_type_boss){
;src/man/../../src/sys/ai.c:29: }
	ret
;src/man/../../src/sys/ai.c:31: void sys_ai_update_enemy_behavior_1(TEntity *enemy){
;	---------------------------------
; Function sys_ai_update_enemy_behavior_1
; ---------------------------------
_sys_ai_update_enemy_behavior_1::
	call	___sdcc_enter_ix
	push	af
	push	af
	dec	sp
;src/man/../../src/sys/ai.c:39: if (get_tile_down_right_array(enemy)==tile_empty || get_tile_down_left_array(enemy)==tile_empty || sys_collider_get_tile_right_array(enemy)==tile_wall || sys_collider_get_tile_left_array(enemy)==tile_wall) {
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_get_tile_down_right_array
	pop	af
;src/man/../../src/sys/ai.c:40: if(enemy->dir==7) enemy->dir=3;
	ld	e, 4 (ix)
	ld	d, 5 (ix)
	ld	a, e
	add	a, #0x0c
	ld	c, a
	ld	a, d
	adc	a, #0x00
	ld	b, a
;src/man/../../src/sys/ai.c:39: if (get_tile_down_right_array(enemy)==tile_empty || get_tile_down_left_array(enemy)==tile_empty || sys_collider_get_tile_right_array(enemy)==tile_wall || sys_collider_get_tile_left_array(enemy)==tile_wall) {
	ld	a, l
	inc	a
	or	a, h
	jr	Z,00106$
	push	bc
	push	de
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_get_tile_down_left_array
	pop	af
	pop	de
	pop	bc
	ld	a, l
	inc	a
	or	a, h
	jr	Z,00106$
	push	bc
	push	de
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_sys_collider_get_tile_right_array
	pop	af
	pop	de
	pop	bc
	ld	a, l
	sub	a, #0xe2
	or	a, h
	jr	Z,00106$
	push	bc
	push	de
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_sys_collider_get_tile_left_array
	pop	af
	pop	de
	pop	bc
	ld	a, l
	sub	a, #0xe2
	or	a, h
	jr	NZ,00107$
00106$:
;src/man/../../src/sys/ai.c:40: if(enemy->dir==7) enemy->dir=3;
	ld	a, (bc)
	cp	a, #0x07
	jr	NZ,00104$
	ld	a, #0x03
	ld	(bc), a
	jr	00107$
00104$:
;src/man/../../src/sys/ai.c:41: else if(enemy->dir==3) enemy->dir=7;
	sub	a, #0x03
	jr	NZ,00107$
	ld	a, #0x07
	ld	(bc), a
00107$:
;src/man/../../src/sys/ai.c:43: if(enemy->dir==7){
	ld	a, (bc)
	ld	-5 (ix), a
;src/man/../../src/sys/ai.c:44: enemy->x-=enemy->vx;
	ld	hl, #0x0002
	add	hl, de
	ld	-4 (ix), l
	ld	-3 (ix), h
	ld	hl, #0x000a
	add	hl, de
	ex	de, hl
;src/man/../../src/sys/ai.c:49: if(enemy->x<=8) enemy->dir=3;
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	a, (hl)
	ld	-2 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-1 (ix), a
;src/man/../../src/sys/ai.c:43: if(enemy->dir==7){
	ld	a, -5 (ix)
	sub	a, #0x07
	jr	NZ,00114$
;src/man/../../src/sys/ai.c:44: enemy->x-=enemy->vx;
	ld	a, (de)
	ld	e, a
	rla
	sbc	a, a
	ld	d, a
	ld	a, -2 (ix)
	sub	a, e
	ld	e, a
	ld	a, -1 (ix)
	sbc	a, d
	ld	d, a
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
	jr	00115$
00114$:
;src/man/../../src/sys/ai.c:45: }else if(enemy->dir==3){
	ld	a, -5 (ix)
	sub	a, #0x03
	jr	NZ,00115$
;src/man/../../src/sys/ai.c:46: enemy->x+=enemy->vx;
	ld	a, (de)
	ld	e, a
	rla
	sbc	a, a
	ld	d, a
	ld	a, e
	add	a, -2 (ix)
	ld	e, a
	ld	a, d
	adc	a, -1 (ix)
	ld	d, a
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
00115$:
;src/man/../../src/sys/ai.c:49: if(enemy->x<=8) enemy->dir=3;
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, #0x08
	cp	a, e
	ld	a, #0x00
	sbc	a, d
	jp	PO, 00180$
	xor	a, #0x80
00180$:
	jp	M, 00117$
	ld	a, #0x03
	ld	(bc), a
00117$:
;src/man/../../src/sys/ai.c:50: if(enemy->x>=256-16) enemy->dir=7;
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, e
	sub	a, #0xf0
	ld	a, d
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	C,00120$
	ld	a, #0x07
	ld	(bc), a
00120$:
;src/man/../../src/sys/ai.c:52: }
	ld	sp, ix
	pop	ix
	ret
;src/man/../../src/sys/ai.c:54: void sys_ai_update_enemy_behavior_2(TEntity *enemy){
;	---------------------------------
; Function sys_ai_update_enemy_behavior_2
; ---------------------------------
_sys_ai_update_enemy_behavior_2::
	call	___sdcc_enter_ix
	push	af
	push	af
	push	af
	push	af
;src/man/../../src/sys/ai.c:56: int horizontal_distance=player->x-enemy->x;
	ld	hl, (_player)
	ld	-4 (ix), l
	ld	-3 (ix), h
	inc	hl
	inc	hl
	ld	a, (hl)
	ld	-6 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-5 (ix), a
	ld	e, 4 (ix)
	ld	d, 5 (ix)
;src/man/../../src/sys/ai.c:101: enemy->x+=enemy->vx;
	ld	c, e
	ld	b, d
	inc	bc
	inc	bc
;src/man/../../src/sys/ai.c:56: int horizontal_distance=player->x-enemy->x;
	ld	a, (bc)
	ld	-2 (ix), a
	inc	bc
	ld	a, (bc)
	ld	-1 (ix), a
	dec	bc
	ld	a, -6 (ix)
	sub	a, -2 (ix)
	ld	l, a
	ld	a, -5 (ix)
	sbc	a, -1 (ix)
	ld	h, a
	inc	sp
	inc	sp
	push	hl
;src/man/../../src/sys/ai.c:58: int vertical_distance=player->y-enemy->y;
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	inc	hl
	inc	hl
	inc	hl
	inc	hl
	ld	a, (hl)
	ld	-4 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-3 (ix), a
;src/man/../../src/sys/ai.c:99: enemy->y-=enemy->vy;
	ld	hl, #0x0004
	add	hl, de
;src/man/../../src/sys/ai.c:58: int vertical_distance=player->y-enemy->y;
	ld	-6 (ix), l
	ld	-5 (ix), h
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	a, -4 (ix)
	sub	a, l
	ld	l, a
	ld	a, -3 (ix)
	sbc	a, h
	ld	h, a
	ld	-4 (ix), l
	ld	-3 (ix), h
;src/man/../../src/sys/ai.c:60: if(enemy->dir==7) enemy->dir=3;
	ld	hl, #0x000c
	add	hl, de
;src/man/../../src/sys/ai.c:59: if (enemy->x<8 || enemy->x>256-16) {
	ld	a, -2 (ix)
	sub	a, #0x08
	ld	a, -1 (ix)
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	C,00106$
	ld	a, #0xf0
	cp	a, -2 (ix)
	ld	a, #0x00
	sbc	a, -1 (ix)
	jp	PO, 00256$
	xor	a, #0x80
00256$:
	jp	P, 00107$
00106$:
;src/man/../../src/sys/ai.c:60: if(enemy->dir==7) enemy->dir=3;
	ld	a, (hl)
	cp	a, #0x07
	jr	NZ,00104$
	ld	(hl), #0x03
	jr	00107$
00104$:
;src/man/../../src/sys/ai.c:61: else if(enemy->dir==3) enemy->dir=7;
	sub	a, #0x03
	jr	NZ,00107$
	ld	(hl), #0x07
00107$:
;src/man/../../src/sys/ai.c:63: if(enemy->dir==1){
	ld	a, (hl)
	ld	-2 (ix), a
;src/man/../../src/sys/ai.c:65: if(horizontal_distance>0) enemy->dir=3;
	xor	a, a
	cp	a, -8 (ix)
	sbc	a, -7 (ix)
	jp	PO, 00261$
	xor	a, #0x80
00261$:
	rlca
	and	a,#0x01
	ld	-1 (ix), a
;src/man/../../src/sys/ai.c:63: if(enemy->dir==1){
	ld	a, -2 (ix)
	dec	a
	jr	NZ,00141$
;src/man/../../src/sys/ai.c:64: if(sys_collider_get_tile_down_array(enemy)!=tile_stairs1){
	push	hl
	push	bc
	push	de
	push	de
	call	_sys_collider_get_tile_down_array
	pop	af
	ld	-3 (ix), l
	ld	-2 (ix), h
	pop	de
	pop	bc
	pop	hl
	ld	a, -3 (ix)
	sub	a, #0xc0
	or	a, -2 (ix)
	jp	Z,00142$
;src/man/../../src/sys/ai.c:65: if(horizontal_distance>0) enemy->dir=3;
	ld	a, -1 (ix)
	or	a, a
	jr	Z,00110$
	ld	(hl), #0x03
	jp	00142$
00110$:
;src/man/../../src/sys/ai.c:66: else enemy->dir=7;
	ld	(hl), #0x07
	jp	00142$
00141$:
;src/man/../../src/sys/ai.c:68: }else if(enemy->dir==3 || enemy->dir==7){
	ld	a, -2 (ix)
	sub	a, #0x03
	jr	Z,00136$
	ld	a, -2 (ix)
	sub	a, #0x07
	jp	NZ,00137$
00136$:
;src/man/../../src/sys/ai.c:71: if(sys_collider_get_tile_down_array(enemy)==tile_empty){
	push	hl
	push	bc
	push	de
	push	de
	call	_sys_collider_get_tile_down_array
	pop	af
	ld	-2 (ix), l
	ld	-1 (ix), h
	pop	de
	pop	bc
	pop	hl
;src/man/../../src/sys/ai.c:72: if(vertical_distance>0) enemy->dir=5;
	xor	a, a
	cp	a, -4 (ix)
	sbc	a, -3 (ix)
	jp	PO, 00268$
	xor	a, #0x80
00268$:
	rlca
	and	a,#0x01
	ld	-7 (ix), a
;src/man/../../src/sys/ai.c:71: if(sys_collider_get_tile_down_array(enemy)==tile_empty){
	ld	a, -2 (ix)
	inc	a
	or	a, -1 (ix)
	jr	NZ,00127$
;src/man/../../src/sys/ai.c:72: if(vertical_distance>0) enemy->dir=5;
	ld	a, -7 (ix)
	or	a, a
	jp	Z, 00142$
	ld	(hl), #0x05
	jp	00142$
00127$:
;src/man/../../src/sys/ai.c:75: else if (sys_collider_get_tile_down_array(enemy)==tile_stairs1){
	push	hl
	push	bc
	push	de
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_sys_collider_get_tile_down_array
	pop	af
	ld	-2 (ix), l
	ld	-1 (ix), h
	pop	de
	pop	bc
	pop	hl
	ld	a, -2 (ix)
	sub	a, #0xc0
	or	a, -1 (ix)
	jr	NZ,00124$
;src/man/../../src/sys/ai.c:76: if(vertical_distance>0) {
	ld	a, -7 (ix)
	or	a, a
	jr	Z,00117$
;src/man/../../src/sys/ai.c:77: enemy->dir=5;
	ld	(hl), #0x05
	jr	00142$
00117$:
;src/man/../../src/sys/ai.c:79: enemy->dir=1;
	ld	(hl), #0x01
	jr	00142$
00124$:
;src/man/../../src/sys/ai.c:81: }else if (sys_collider_get_tile_array(enemy)==tile_stairs1){
	push	hl
	push	bc
	push	de
	ld	l, 4 (ix)
	ld	h, 5 (ix)
	push	hl
	call	_sys_collider_get_tile_array
	pop	af
	ld	-2 (ix), l
	ld	-1 (ix), h
	pop	de
	pop	bc
	pop	hl
	ld	a, -2 (ix)
	sub	a, #0xc0
	or	a, -1 (ix)
	jr	NZ,00142$
;src/man/../../src/sys/ai.c:82: if(vertical_distance<0) enemy->dir=1;
	bit	7, -3 (ix)
	jr	Z,00142$
	ld	(hl), #0x01
	jr	00142$
00137$:
;src/man/../../src/sys/ai.c:87: else if(enemy->dir==5){
	ld	a, -2 (ix)
	sub	a, #0x05
	jr	NZ,00142$
;src/man/../../src/sys/ai.c:88: if(sys_collider_get_tile_down_array(enemy)>=tile_floor_tile){
	push	hl
	push	bc
	push	de
	push	de
	call	_sys_collider_get_tile_down_array
	pop	af
	ld	-3 (ix), l
	ld	-2 (ix), h
	pop	de
	pop	bc
	pop	hl
	ld	a, -3 (ix)
	sub	a, #0xe0
	ld	a, -2 (ix)
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	C,00142$
;src/man/../../src/sys/ai.c:89: if(horizontal_distance>0) enemy->dir=3;
	ld	a, -1 (ix)
	or	a, a
	jr	Z,00130$
	ld	(hl), #0x03
	jr	00142$
00130$:
;src/man/../../src/sys/ai.c:90: else enemy->dir=7;
	ld	(hl), #0x07
00142$:
;src/man/../../src/sys/ai.c:98: if(enemy->dir==1 ){
	ld	a, (hl)
	ld	-7 (ix), a
;src/man/../../src/sys/ai.c:99: enemy->y-=enemy->vy;
	ld	hl, #0x000b
	add	hl, de
	ld	-4 (ix), l
	ld	-3 (ix), h
;src/man/../../src/sys/ai.c:98: if(enemy->dir==1 ){
	ld	a, -7 (ix)
	dec	a
	jr	NZ,00152$
;src/man/../../src/sys/ai.c:99: enemy->y-=enemy->vy;
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	a, (hl)
	ld	e, a
	rla
	sbc	a, a
	ld	d, a
	ld	a, c
	sub	a, e
	ld	c, a
	ld	a, b
	sbc	a, d
	ld	b, a
	pop	de
	pop	hl
	push	hl
	push	de
	ld	(hl), c
	inc	hl
	ld	(hl), b
	jr	00154$
00152$:
;src/man/../../src/sys/ai.c:101: enemy->x+=enemy->vx;
	ld	hl, #0x000a
	add	hl, de
	ld	-2 (ix), l
	ld	-1 (ix), h
;src/man/../../src/sys/ai.c:100: }else if(enemy->dir==3 ){
	ld	a, -7 (ix)
	sub	a, #0x03
	jr	NZ,00149$
;src/man/../../src/sys/ai.c:101: enemy->x+=enemy->vx;
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	a, (hl)
	ld	l, a
	rla
	sbc	a, a
	ld	h, a
	add	hl, de
	ex	de, hl
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
	jr	00154$
00149$:
;src/man/../../src/sys/ai.c:102: }else if(enemy->dir==5){
	ld	a, -7 (ix)
	sub	a, #0x05
	jr	NZ,00146$
;src/man/../../src/sys/ai.c:103: enemy->y+=enemy->vy;
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	a, (hl)
	ld	l, a
	rla
	sbc	a, a
	ld	h, a
	add	hl, bc
	ex	de, hl
	pop	bc
	pop	hl
	push	hl
	push	bc
	ld	(hl), e
	inc	hl
	ld	(hl), d
	jr	00154$
00146$:
;src/man/../../src/sys/ai.c:104: }else if(enemy->dir==7 ){
	ld	a, -7 (ix)
	sub	a, #0x07
	jr	NZ,00154$
;src/man/../../src/sys/ai.c:105: enemy->x-=enemy->vx;
	ld	l, c
	ld	h, b
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	a, (hl)
	ld	l, a
	rla
	sbc	a, a
	ld	h, a
	ld	a, e
	sub	a, l
	ld	e, a
	ld	a, d
	sbc	a, h
	ld	d, a
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
00154$:
;src/man/../../src/sys/ai.c:107: }
	ld	sp, ix
	pop	ix
	ret
;src/man/../../src/sys/ai.c:111: void sys_ai_update_enemy_boss1(TEntity *enemy){
;	---------------------------------
; Function sys_ai_update_enemy_boss1
; ---------------------------------
_sys_ai_update_enemy_boss1::
	call	___sdcc_enter_ix
	push	af
	push	af
	push	af
;src/man/../../src/sys/ai.c:112: ++sys_ai_contador;
	ld	hl, (_sys_ai_contador)
	inc	hl
	ld	(_sys_ai_contador), hl
;src/man/../../src/sys/ai.c:113: enemy->old_x=enemy->x;
	ld	c, 4 (ix)
	ld	b, 5 (ix)
	ld	hl, #0x0006
	add	hl, bc
	ex	de, hl
	ld	hl, #0x0002
	add	hl, bc
	ex	(sp), hl
	pop	hl
	push	hl
	ld	a, (hl)
	ld	(de), a
;src/man/../../src/sys/ai.c:114: enemy->old_y=enemy->y;
	ld	hl, #0x0007
	add	hl, bc
	ex	de, hl
	ld	hl, #0x0004
	add	hl, bc
	ld	-4 (ix), l
	ld	-3 (ix), h
	ld	a, (hl)
	ld	(de), a
;src/man/../../src/sys/ai.c:115: char aleatorio=rand()%(6-3)+3;
	push	bc
	call	_rand
	pop	bc
;src/man/../../src/sys/ai.c:116: if (sys_ai_contador<=3)enemy->x-=enemy->vx;
	ld	a, #0x03
	ld	iy, #_sys_ai_contador
	cp	a, 0 (iy)
	ld	a, #0x00
	sbc	a, 1 (iy)
	jp	PO, 00125$
	xor	a, #0x80
00125$:
	rlca
	and	a,#0x01
	ld	e, a
	ld	hl, #0x000a
	add	hl, bc
	ld	-2 (ix), l
	ld	-1 (ix), h
	bit	0, e
	jr	NZ,00104$
	pop	hl
	push	hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	a, (hl)
	ld	l, a
	rla
	sbc	a, a
	ld	h, a
	ld	a, e
	sub	a, l
	ld	e, a
	ld	a, d
	sbc	a, h
	ld	d, a
	pop	hl
	push	hl
	ld	(hl), e
	inc	hl
	ld	(hl), d
	jr	00105$
00104$:
;src/man/../../src/sys/ai.c:117: else if (sys_ai_contador>3)enemy->x+=enemy->vx;
	ld	a, e
	or	a, a
	jr	Z,00105$
	pop	hl
	push	hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	a, (hl)
	ld	l, a
	rla
	sbc	a, a
	ld	h, a
	add	hl, de
	ex	de, hl
	pop	hl
	push	hl
	ld	(hl), e
	inc	hl
	ld	(hl), d
00105$:
;src/man/../../src/sys/ai.c:120: enemy->vy=-enemy->vy ; 
	ld	hl, #0x000b
	add	hl, bc
	ex	de, hl
;src/man/../../src/sys/ai.c:118: if (sys_ai_contador==6) {
	ld	iy, #_sys_ai_contador
	ld	a, 0 (iy)
	sub	a, #0x06
	or	a, 1 (iy)
	jr	NZ,00107$
;src/man/../../src/sys/ai.c:120: enemy->vy=-enemy->vy ; 
	ld	a, (de)
	neg
	ld	(de), a
;src/man/../../src/sys/ai.c:121: sys_ai_contador=0;
	ld	hl, #0x0000
	ld	(_sys_ai_contador), hl
00107$:
;src/man/../../src/sys/ai.c:127: enemy->y+=enemy->vy ;
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	a, (de)
	ld	l, a
	rla
	sbc	a, a
	ld	h, a
	add	hl, bc
	ex	de, hl
	pop	bc
	pop	hl
	push	hl
	push	bc
	ld	(hl), e
	inc	hl
	ld	(hl), d
;src/man/../../src/sys/ai.c:129: }
	ld	sp, ix
	pop	ix
	ret
;src/man/game.c:72: void man_game_init(){
;	---------------------------------
; Function man_game_init
; ---------------------------------
_man_game_init::
;src/man/game.c:74: ShowDisplay();
	call	_ShowDisplay
;src/man/game.c:76: sys_render_init();
	call	_sys_render_init
;src/man/game.c:79: load_file_into_buffer_with_structure("LOADER.S05");
	ld	hl, #___str_1
	push	hl
	call	_load_file_into_buffer_with_structure
;src/man/game.c:81: HMMC(&buffer[0], 0,0,256,212 ); 
	ld	hl, #0x00d4
	ex	(sp),hl
	ld	hl, #0x0100
	push	hl
	ld	h, #0x00
	push	hl
	ld	l, #0x00
	push	hl
	ld	hl, #_buffer
	push	hl
	call	_HMMC
	ld	hl, #10
	add	hl, sp
	ld	sp, hl
;src/man/game.c:84: load_file_into_buffer("tileset.s05");
	ld	hl, #___str_2
	push	hl
	call	_load_file_into_buffer
;src/man/game.c:88: HMMC(&buffer[0], 0,256,256,212); 
	ld	hl, #0x00d4
	ex	(sp),hl
	ld	hl, #0x0100
	push	hl
	ld	l, #0x00
	push	hl
	ld	h, #0x00
	push	hl
	ld	hl, #_buffer
	push	hl
	call	_HMMC
	ld	hl, #10
	add	hl, sp
	ld	sp, hl
;src/man/game.c:90: man_game_copy_sprites_definition_to_VRAM();
	call	_man_game_copy_sprites_definition_to_VRAM
;src/man/game.c:91: man_game_copy_color_sprite_to_VRAM();
	call	_man_game_copy_color_sprite_to_VRAM
;src/man/game.c:93: InitPSG(); 
	call	_InitPSG
;src/man/game.c:94: InitFX();
	call	_InitFX
;src/man/game.c:95: man_game_cargar_buffer_efectos_sonido();
	call	_man_game_cargar_buffer_efectos_sonido
;src/man/game.c:97: man_game_cargar_buffer_musica();
	call	_man_game_cargar_buffer_musica
;src/man/game.c:99: PT3Init (songBuffer+99, 0);
	xor	a, a
	push	af
	inc	sp
	ld	hl, #(_songBuffer + 0x0063)
	push	hl
	call	_PT3Init
	pop	af
	inc	sp
;src/man/game.c:101: KeySound(0);
	xor	a, a
	push	af
	inc	sp
	call	_KeySound
	inc	sp
;src/man/game.c:103: player=sys_entity_create_player();
	call	_sys_entity_create_player
	ld	(_player), hl
;src/man/game.c:105: array_enemies=sys_entity_get_array_structs_enemies();
	call	_sys_entity_get_array_structs_enemies
	ld	(_array_enemies), hl
;src/man/game.c:106: array_objects=sys_entity_get_array_structs_objects();
	call	_sys_entity_get_array_structs_objects
	ld	(_array_objects), hl
;src/man/game.c:107: array_shots=sys_entity_get_array_structs_shots();
	call	_sys_entity_get_array_structs_shots
	ld	(_array_shots), hl
;src/man/game.c:109: created_enemy2=0;
	ld	hl,#_created_enemy2 + 0
	ld	(hl), #0x00
;src/man/game.c:110: }
	ret
___str_1:
	.ascii "LOADER.S05"
	.db 0x00
___str_2:
	.ascii "tileset.s05"
	.db 0x00
;src/man/game.c:112: void man_game_play(){
;	---------------------------------
; Function man_game_play
; ---------------------------------
_man_game_play::
	call	___sdcc_enter_ix
	ld	hl, #-10
	add	hl, sp
	ld	sp, hl
;src/man/game.c:113: while(1){
00163$:
;src/man/game.c:114: show_menu_screen();
	call	_show_menu_screen
;src/man/game.c:115: while(game_over==0){
00159$:
	ld	a,(#_game_over + 0)
	or	a, a
	jr	NZ,00163$
;src/man/game.c:117: man_game_update();
	call	_man_game_update
;src/man/game.c:119: man_game_reproducir_musica_y_efectos();
	call	_man_game_reproducir_musica_y_efectos
;src/man/game.c:121: sys_physics_update(player);
	ld	hl, (_player)
	push	hl
	call	_sys_physics_update
	pop	af
;src/man/game.c:122: sys_render_update(player);
	ld	hl, (_player)
	push	hl
	call	_sys_render_update
	pop	af
;src/man/game.c:124: for (char i=0;i<sys_entity_get_num_enemies();++i){
	ld	c, #0x00
00166$:
	push	bc
	call	_sys_entity_get_num_enemies
	pop	bc
	ld	a, c
	sub	a, l
	jp	NC, 00125$
;src/man/game.c:125: TEntity *enemy=&array_enemies[i];
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ex	de, hl
	ld	iy, #_array_enemies
	ld	a, 0 (iy)
	add	a, e
	ld	b, a
	ld	a, 1 (iy)
	adc	a, d
	ld	e, a
	ld	-4 (ix), b
	ld	-3 (ix), e
;src/man/game.c:127: sys_ai_update(enemy);
	push	bc
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	push	hl
	call	_sys_ai_update
	pop	af
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	push	hl
	call	_sys_render_update
	pop	af
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	push	hl
	ld	hl, (_player)
	push	hl
	call	_sys_collider_entity1_collider_entity
	pop	af
	pop	af
	pop	bc
;src/man/game.c:130: if(player->dir==3 && enemy->dir==3 || player->dir==7 && enemy->dir==7) {
	ld	a, -4 (ix)
	add	a, #0x0c
	ld	-10 (ix), a
	ld	a, -3 (ix)
	adc	a, #0x00
	ld	-9 (ix), a
;src/man/game.c:129: if (sys_collider_entity1_collider_entity(player, enemy) && player->collider==0){
	ld	a, l
	or	a, a
	jr	Z,00110$
	ld	de, (_player)
	ld	l, e
	ld	h, d
	push	bc
	ld	bc, #0x0014
	add	hl, bc
	pop	bc
	ld	a, (hl)
	or	a, a
	jr	NZ,00110$
;src/man/game.c:130: if(player->dir==3 && enemy->dir==3 || player->dir==7 && enemy->dir==7) {
	ex	de,hl
	ld	de, #0x000c
	add	hl, de
	ld	b, (hl)
	ld	a, b
	sub	a, #0x03
	jr	NZ,00108$
	pop	hl
	push	hl
	ld	a, (hl)
	sub	a, #0x03
	jr	Z,00103$
00108$:
	ld	a, b
	sub	a, #0x07
	jr	NZ,00104$
	pop	hl
	push	hl
	ld	a, (hl)
	sub	a, #0x07
	jr	NZ,00104$
00103$:
;src/man/game.c:131: man_game_reproducir_efecto_sonido(1);
	push	bc
	ld	a, #0x01
	push	af
	inc	sp
	call	_man_game_reproducir_efecto_sonido
	inc	sp
	pop	bc
;src/man/game.c:132: sys_entity_erase_enemy(i);
	push	bc
	ld	a, c
	push	af
	inc	sp
	call	_sys_entity_erase_enemy
	inc	sp
	call	_pintar_HUD
	pop	bc
;src/man/game.c:134: if(enemy->type==entity_type_enemy2) created_enemy2=0;
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	a, (hl)
	sub	a, #0x04
	jr	NZ,00110$
	ld	hl,#_created_enemy2 + 0
	ld	(hl), #0x00
	jr	00110$
00104$:
;src/man/game.c:136: else player_die();
	push	bc
	call	_player_die
	pop	bc
00110$:
;src/man/game.c:139: if(enemy->dir==7 && player->x < enemy->x || enemy->dir==3 && player->x > enemy->x){
	pop	hl
	push	hl
	ld	e, (hl)
;src/man/game.c:129: if (sys_collider_entity1_collider_entity(player, enemy) && player->collider==0){
	ld	hl, (_player)
;src/man/game.c:139: if(enemy->dir==7 && player->x < enemy->x || enemy->dir==3 && player->x > enemy->x){
	ld	a, -4 (ix)
	add	a, #0x02
	ld	-2 (ix), a
	ld	a, -3 (ix)
	adc	a, #0x00
	ld	-1 (ix), a
	inc	hl
	inc	hl
	ld	-6 (ix), l
	ld	-5 (ix), h
	ld	a, e
	sub	a, #0x07
	jr	NZ,00124$
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	ld	b, (hl)
	inc	hl
	ld	d, (hl)
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	a, (hl)
	inc	hl
	ld	h, (hl)
	ld	l, a
	ld	a, b
	sub	a, l
	ld	a, d
	sbc	a, h
	jp	PO, 00365$
	xor	a, #0x80
00365$:
	jp	M, 00120$
00124$:
	ld	a, e
	sub	a, #0x03
	jp	NZ,00167$
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	ld	b, (hl)
	inc	hl
	ld	d, (hl)
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	e, (hl)
	inc	hl
	ld	l, (hl)
	ld	a, e
	sub	a, b
	ld	a, l
	sbc	a, d
	jp	PO, 00368$
	xor	a, #0x80
00368$:
	jp	P, 00167$
00120$:
;src/man/game.c:140: if(sys_entity_get_num_shots()==0 && player->collider==0 && player->y<enemy->y+16 && player->y>=enemy->y ){
	push	bc
	call	_sys_entity_get_num_shots
	ld	a, l
	pop	bc
	or	a, a
	jp	NZ, 00167$
;src/man/game.c:129: if (sys_collider_entity1_collider_entity(player, enemy) && player->collider==0){
	ld	de, (_player)
;src/man/game.c:140: if(sys_entity_get_num_shots()==0 && player->collider==0 && player->y<enemy->y+16 && player->y>=enemy->y ){
	ld	l, e
	ld	h, d
	push	bc
	ld	bc, #0x0014
	add	hl, bc
	pop	bc
	ld	a, (hl)
	or	a, a
	jp	NZ, 00167$
	ex	de,hl
	ld	de, #0x0004
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	a, -4 (ix)
	add	a, #0x04
	ld	-8 (ix), a
	ld	a, -3 (ix)
	adc	a, #0x00
	ld	-7 (ix), a
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	ld	b, (hl)
	inc	hl
	ld	l, (hl)
	ld	a, b
	add	a, #0x10
	ld	-4 (ix), a
	ld	a, l
	adc	a, #0x00
	ld	-3 (ix), a
	ld	a, e
	sub	a, -4 (ix)
	ld	a, d
	sbc	a, -3 (ix)
	jp	PO, 00369$
	xor	a, #0x80
00369$:
	jp	P, 00167$
	ld	a, e
	sub	a, b
	ld	a, d
	sbc	a, l
	jp	PO, 00370$
	xor	a, #0x80
00370$:
	jp	M, 00167$
;src/man/game.c:141: man_game_reproducir_efecto_sonido(1);
	push	bc
	ld	a, #0x01
	push	af
	inc	sp
	call	_man_game_reproducir_efecto_sonido
	inc	sp
	call	_sys_entity_create_shot
	pop	bc
	ld	-6 (ix), l
	ld	-5 (ix), h
;src/man/game.c:143: if(enemy->dir==3)shot->x=enemy->x+20;
	pop	hl
	push	hl
	ld	b, (hl)
	ld	a, -6 (ix)
	add	a, #0x02
	ld	-4 (ix), a
	ld	a, -5 (ix)
	adc	a, #0x00
	ld	-3 (ix), a
;src/man/game.c:139: if(enemy->dir==7 && player->x < enemy->x || enemy->dir==3 && player->x > enemy->x){
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	a, (hl)
	ld	-2 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-1 (ix), a
;src/man/game.c:143: if(enemy->dir==3)shot->x=enemy->x+20;
	ld	a, b
	sub	a, #0x03
	jr	NZ,00113$
	ld	a, -2 (ix)
	add	a, #0x14
	ld	b, a
	ld	a, -1 (ix)
	adc	a, #0x00
	ld	e, a
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	(hl), b
	inc	hl
	ld	(hl), e
	jr	00114$
00113$:
;src/man/game.c:144: else shot->x=enemy->x-20;
	ld	a, -2 (ix)
	add	a, #0xec
	ld	e, a
	ld	a, -1 (ix)
	adc	a, #0xff
	ld	b, a
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), b
00114$:
;src/man/game.c:145: shot->y=enemy->y+8;
	ld	a, -6 (ix)
	add	a, #0x04
	ld	-2 (ix), a
	ld	a, -5 (ix)
	adc	a, #0x00
	ld	-1 (ix), a
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	hl, #0x0008
	add	hl, de
	ex	de, hl
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
;src/man/game.c:146: shot->dir=enemy->dir;
	ld	a, -6 (ix)
	add	a, #0x0c
	ld	e, a
	ld	a, -5 (ix)
	adc	a, #0x00
	ld	d, a
	pop	hl
	push	hl
	ld	a, (hl)
	ld	(de), a
;src/man/game.c:147: shot->plane+=sys_entity_get_num_shots();
	ld	a, -6 (ix)
	add	a, #0x0f
	ld	l, a
	ld	a, -5 (ix)
	adc	a, #0x00
	ld	h, a
	ld	b, (hl)
	push	hl
	push	bc
	call	_sys_entity_get_num_shots
	ld	a, l
	pop	bc
	pop	hl
	add	a, b
	ld	(hl), a
00167$:
;src/man/game.c:124: for (char i=0;i<sys_entity_get_num_enemies();++i){
	inc	c
	jp	00166$
00125$:
;src/man/game.c:153: for (char i=0;i<sys_entity_get_num_shots();++i){
	xor	a, a
	ld	-1 (ix), a
00169$:
	call	_sys_entity_get_num_shots
	ld	a, -1 (ix)
	sub	a, l
	jr	NC,00132$
;src/man/game.c:154: TEntity *shot=&array_shots[i];
	ld	c, -1 (ix)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ex	de, hl
	ld	hl, (_array_shots)
	add	hl, de
	ld	c, l
	ld	b, h
;src/man/game.c:156: sys_physics_update(shot);
	push	bc
	push	bc
	call	_sys_physics_update
	pop	af
	pop	bc
;src/man/game.c:158: if (sys_collider_entity1_collider_shot(player, shot)){
	push	bc
	push	bc
	ld	hl, (_player)
	push	hl
	call	_sys_collider_entity1_collider_shot
	pop	af
	pop	af
	ld	a, l
	pop	bc
	or	a, a
	jr	Z,00130$
;src/man/game.c:159: sys_entity_erase_shot(i);
	ld	a, -1 (ix)
	push	af
	inc	sp
	call	_sys_entity_erase_shot
	inc	sp
;src/man/game.c:160: player_die();
	call	_player_die
	jr	00170$
00130$:
;src/man/game.c:162: sys_render_update(shot);
	push	bc
	push	bc
	call	_sys_render_update
	pop	af
;src/man/game.c:164: if(shot->x<0 || shot->x>255) sys_entity_erase_shot(i); 
	pop	hl
	inc	hl
	inc	hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	bit	7, b
	jr	NZ,00126$
	ld	a, #0xff
	cp	a, c
	ld	a, #0x00
	sbc	a, b
	jp	PO, 00373$
	xor	a, #0x80
00373$:
	jp	P, 00170$
00126$:
	ld	a, -1 (ix)
	push	af
	inc	sp
	call	_sys_entity_erase_shot
	inc	sp
00170$:
;src/man/game.c:153: for (char i=0;i<sys_entity_get_num_shots();++i){
	inc	-1 (ix)
	jr	00169$
00132$:
;src/man/game.c:172: for (char i=0;i<sys_entity_get_num_objects();++i){
	xor	a, a
	ld	-1 (ix), a
00172$:
	call	_sys_entity_get_num_objects
	ld	a, -1 (ix)
	sub	a, l
	jr	NC,00138$
;src/man/game.c:173: TEntity *object=&array_objects[i];
	ld	c, -1 (ix)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ex	de, hl
	ld	hl, (_array_objects)
	add	hl, de
	ld	c, l
	ld	b, h
;src/man/game.c:176: if (sys_collider_entity1_collider_entity(player, object)){
	push	bc
	push	bc
	ld	hl, (_player)
	push	hl
	call	_sys_collider_entity1_collider_entity
	pop	af
	pop	af
	ld	a, l
	pop	bc
	or	a, a
	jr	Z,00173$
;src/man/game.c:177: if(object->type==entity_type_object_divan){
	ld	a, (bc)
	ld	c, a
;src/man/game.c:129: if (sys_collider_entity1_collider_entity(player, enemy) && player->collider==0){
	ld	hl, (_player)
	ld	de, #0x0014
	add	hl, de
;src/man/game.c:177: if(object->type==entity_type_object_divan){
	ld	a, c
	sub	a, #0x32
	jr	NZ,00134$
;src/man/game.c:178: player->collider=1;    
	ld	(hl), #0x01
	jr	00173$
00134$:
;src/man/game.c:180: player->collider=0;
	ld	(hl), #0x00
;src/man/game.c:181: man_game_reproducir_efecto_sonido(5);
	ld	a, #0x05
	push	af
	inc	sp
	call	_man_game_reproducir_efecto_sonido
	inc	sp
;src/man/game.c:129: if (sys_collider_entity1_collider_entity(player, enemy) && player->collider==0){
	ld	hl, (_player)
;src/man/game.c:182: player->points+=10;
	ld	bc, #0x0010
	add	hl, bc
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	dec	hl
	ld	a, c
	add	a, #0x0a
	ld	c, a
	ld	a, b
	adc	a, #0x00
	ld	(hl), c
	inc	hl
	ld	(hl), a
;src/man/game.c:183: world_money-=1;
	ld	a,(#_world_money + 0)
	ld	hl, #_world_money
	add	a, #0xff
	ld	(hl), a
;src/man/game.c:184: sys_entity_erase_object(i);
	ld	a, -1 (ix)
	push	af
	inc	sp
	call	_sys_entity_erase_object
	inc	sp
;src/man/game.c:185: pintar_HUD();
	call	_pintar_HUD
00173$:
;src/man/game.c:172: for (char i=0;i<sys_entity_get_num_objects();++i){
	inc	-1 (ix)
	jr	00172$
00138$:
;src/man/game.c:193: if (sys_entity_get_num_moneys()==0 && sys_entity_get_num_enemies()==0){
	call	_sys_entity_get_num_moneys
	ld	a, l
	or	a, a
	jp	NZ, 00152$
	call	_sys_entity_get_num_enemies
	ld	a, l
	or	a, a
	jp	NZ, 00152$
;src/man/game.c:196: if (time % 3==0 && enabled_world_change==0)HMMM(0,256+(4*8),destiny_x_phone,destiny_y_phone,16,16);
	ld	hl, #0x0003
	push	hl
	ld	hl, (_time)
	push	hl
	call	__moduint
	pop	af
	pop	af
	ld	a, h
	or	a, l
	jr	NZ,00140$
	ld	a,(#_enabled_world_change + 0)
	or	a, a
	jr	NZ,00140$
	ld	hl, #0x0010
	push	hl
	ld	l, #0x10
	push	hl
	ld	hl, (_destiny_y_phone)
	push	hl
	ld	hl, (_destiny_x_phone)
	push	hl
	ld	hl, #0x0120
	push	hl
	ld	hl, #0x0000
	push	hl
	call	_HMMM
	ld	hl, #12
	add	hl, sp
	ld	sp, hl
	jr	00141$
00140$:
;src/man/game.c:197: else HMMM(8*2,256+(4*8),destiny_x_phone,destiny_y_phone,16,16);
	ld	hl, #0x0010
	push	hl
	ld	l, #0x10
	push	hl
	ld	hl, (_destiny_y_phone)
	push	hl
	ld	hl, (_destiny_x_phone)
	push	hl
	ld	hl, #0x0120
	push	hl
	ld	hl, #0x0010
	push	hl
	call	_HMMM
	ld	hl, #12
	add	hl, sp
	ld	sp, hl
00141$:
;src/man/game.c:198: if (sys_collider_get_tile_array(player)==tile_phone1 || sys_collider_get_tile_array(player)==tile_phone2){
	ld	hl, (_player)
	push	hl
	call	_sys_collider_get_tile_array
	pop	af
	ld	a, l
	sub	a, #0xa0
	or	a, h
	jr	Z,00143$
	ld	hl, (_player)
	push	hl
	call	_sys_collider_get_tile_array
	pop	af
	ld	a, l
	sub	a, #0xa1
	or	a, h
	jr	NZ,00144$
00143$:
;src/man/game.c:199: enabled_world_change=1;
	ld	hl,#_enabled_world_change + 0
	ld	(hl), #0x01
00144$:
;src/man/game.c:201: if (enabled_world_change==1){
	ld	a,(#_enabled_world_change + 0)
	dec	a
	jr	NZ,00152$
;src/man/game.c:203: HMMM(6*8,256+(3*8),destiny_x_door,destiny_y_door,16,24);
	ld	hl, #0x0018
	push	hl
	ld	l, #0x10
	push	hl
	ld	hl, (_destiny_y_door)
	push	hl
	ld	hl, (_destiny_x_door)
	push	hl
	ld	hl, #0x0118
	push	hl
	ld	hl, #0x0030
	push	hl
	call	_HMMM
	ld	hl, #12
	add	hl, sp
	ld	sp, hl
;src/man/game.c:205: if (sys_collider_get_tile_array(player)==tile_end_level1 || sys_collider_get_tile_array(player)==tile_end_level2 ){
	ld	hl, (_player)
	push	hl
	call	_sys_collider_get_tile_array
	pop	af
	ld	a, l
	sub	a, #0xa4
	or	a, h
	jr	Z,00146$
	ld	hl, (_player)
	push	hl
	call	_sys_collider_get_tile_array
	pop	af
	ld	a, l
	sub	a, #0xa5
	or	a, h
	jr	NZ,00152$
00146$:
;src/man/game.c:207: world_change=1;
	ld	iy, #_world_change
	ld	0 (iy), #0x01
;src/man/game.c:208: actual_world+=1;
	ld	a,(#_actual_world + 0)
	inc	a
	ld	(_actual_world+0), a
00152$:
;src/man/game.c:213: time=RealTimer();
	call	_RealTimer
	ld	(_time), hl
;src/man/game.c:214: count_down=200-(time/60);
	ld	hl, #0x003c
	push	hl
	ld	hl, (_time)
	push	hl
	call	__divuint
	pop	af
	pop	af
	ld	c, l
	ld	b, h
	ld	hl, #_count_down
	ld	a, #0xc8
	sub	a, c
	ld	(hl), a
	ld	a, #0x00
	sbc	a, b
	inc	hl
	ld	(hl), a
;src/man/game.c:215: if(count_down % 100==0 && created_enemy2==0) {
	ld	hl, #0x0064
	push	hl
	ld	hl, (_count_down)
	push	hl
	call	__moduint
	pop	af
	pop	af
	ld	c, l
	ld	a, h
	or	a, c
	jr	NZ,00155$
	ld	a,(#_created_enemy2 + 0)
	or	a, a
	jr	NZ,00155$
;src/man/game.c:216: TEntity *enemy2=sys_entity_create_enemy1();
	call	_sys_entity_create_enemy1
;src/man/game.c:217: enemy2->x=256/2;
	ld	c,l
	ld	b,h
	inc	hl
	inc	hl
	ld	(hl), #0x80
	inc	hl
	ld	(hl), #0x00
;src/man/game.c:218: enemy2->y=16;
	ld	hl, #0x0004
	add	hl, bc
	ld	(hl), #0x10
	inc	hl
	ld	(hl), #0x00
;src/man/game.c:219: enemy2->type=entity_type_enemy2;
	ld	a, #0x04
	ld	(bc), a
;src/man/game.c:220: enemy2->dir=3;
	ld	hl, #0x000c
	add	hl, bc
	ld	(hl), #0x03
;src/man/game.c:221: enemy2->plane+=sys_entity_get_num_enemies();
	ld	hl, #0x000f
	add	hl, bc
	ld	c, (hl)
	push	hl
	push	bc
	call	_sys_entity_get_num_enemies
	ld	a, l
	pop	bc
	pop	hl
	add	a, c
	ld	(hl), a
;src/man/game.c:222: created_enemy2=1;
	ld	hl,#_created_enemy2 + 0
	ld	(hl), #0x01
00155$:
;src/man/game.c:225: if(count_down<=0) player_die();
	ld	iy, #_count_down
	ld	a, 1 (iy)
	or	a, 0 (iy)
	jr	NZ,00158$
	call	_player_die
00158$:
;src/man/game.c:226: PutText(200,192,Itoa(count_down,"      ",10),0);
	ld	hl, #0x000a
	push	hl
	ld	hl, #___str_3
	push	hl
	ld	hl, (_count_down)
	push	hl
	call	_Itoa
	pop	af
	pop	af
	pop	af
	xor	a, a
	push	af
	inc	sp
	push	hl
	ld	hl, #0x00c0
	push	hl
	ld	l, #0xc8
	push	hl
	call	_PutText
	pop	af
	pop	af
	pop	af
	inc	sp
;src/man/game.c:230: wait();
	call	_wait
;src/man/game.c:233: }
	jp	00159$
___str_3:
	.ascii "      "
	.db 0x00
;src/man/game.c:239: void player_die(){
;	---------------------------------
; Function player_die
; ---------------------------------
_player_die::
;src/man/game.c:241: KillKeyBuffer();
	call	_KillKeyBuffer
;src/man/game.c:242: SetRealTimer(0);
	ld	hl, #0x0000
	push	hl
	call	_SetRealTimer
	pop	af
;src/man/game.c:244: for (int i=0;i<30000;i++);
	ld	bc, #0x0000
00105$:
	ld	a, c
	sub	a, #0x30
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0xf5
	jr	NC,00101$
	inc	bc
	jr	00105$
00101$:
;src/man/game.c:245: player->lives-=1;
	ld	hl, (_player)
	ld	bc, #0x0012
	add	hl, bc
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	dec	hl
	dec	bc
	ld	(hl), c
	inc	hl
	ld	(hl), b
;src/man/game.c:246: player->collider=0;
	ld	hl, (_player)
	ld	bc, #0x0014
	add	hl, bc
	ld	(hl), #0x00
;src/man/game.c:247: man_game_reproducir_efecto_sonido(2);
	ld	a, #0x02
	push	af
	inc	sp
	call	_man_game_reproducir_efecto_sonido
	inc	sp
;src/man/game.c:249: world_change=1;
	ld	iy, #_world_change
	ld	0 (iy), #0x01
;src/man/game.c:250: if(player->lives<=0){
	ld	hl, (_player)
	ld	de, #0x0012
	add	hl, de
	ld	c, (hl)
	inc	hl
	ld	a, (hl)
	or	a, c
	jp	NZ,_pintar_HUD
;src/man/game.c:251: game_over=1;
	ld	hl,#_game_over + 0
	ld	(hl), #0x01
;src/man/game.c:252: SpriteOff();
	call	_SpriteOff
;src/man/game.c:255: pintar_HUD();
;src/man/game.c:256: }
	jp	_pintar_HUD
;src/man/game.c:260: char sys_entity_get_num_moneys(){
;	---------------------------------
; Function sys_entity_get_num_moneys
; ---------------------------------
_sys_entity_get_num_moneys::
;src/man/game.c:261: return sys_entity_get_num_objects()-2;
	call	_sys_entity_get_num_objects
	ld	a, l
	dec	a
	dec	a
	ld	l, a
;src/man/game.c:262: }
	ret
;src/man/game.c:269: void man_game_update(){
;	---------------------------------
; Function man_game_update
; ---------------------------------
_man_game_update::
	call	___sdcc_enter_ix
	push	af
	push	af
	push	af
;src/man/game.c:270: if (world_change==1){
	ld	a,(#_world_change + 0)
	dec	a
	jp	NZ,00122$
;src/man/game.c:273: Cls();
	call	_Cls
;src/man/game.c:274: sys_entity_erase_all_objects();
	call	_sys_entity_erase_all_objects
;src/man/game.c:275: sys_entity_erase_all_enemies();
	call	_sys_entity_erase_all_enemies
;src/man/game.c:278: load_file_into_buffer("e-coord.bin");
	ld	hl, #___str_5
	push	hl
	call	_load_file_into_buffer
	pop	af
;src/man/game.c:280: for (int i=0;i<3*3;i+=3){ 
	ld	bc, #0x0000
00117$:
	ld	a, c
	sub	a, #0x09
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x80
	jp	NC, 00101$
;src/man/game.c:281: char numWorld=actual_world*9;
	ld	a,(#_actual_world + 0)
	ld	e, a
	add	a, a
	add	a, a
	add	a, a
	add	a, e
	ld	l, a
;src/man/game.c:282: TEntity *enemy=sys_entity_create_enemy1();
	push	hl
	push	bc
	call	_sys_entity_create_enemy1
	ex	de,hl
	pop	bc
	pop	hl
	inc	sp
	inc	sp
	push	de
;src/man/game.c:283: enemy->x=buffer[numWorld+i];
	pop	de
	push	de
	inc	de
	inc	de
	ld	h, #0x00
	add	hl, bc
	ld	-4 (ix), l
	ld	-3 (ix), h
	ld	a, #<(_buffer)
	add	a, -4 (ix)
	ld	l, a
	ld	a, #>(_buffer)
	adc	a, -3 (ix)
	ld	h, a
	ld	a, (hl)
	ld	-2 (ix), a
	xor	a, a
	ld	-1 (ix), a
	ld	a, -2 (ix)
	ld	(de), a
	inc	de
	ld	a, -1 (ix)
	ld	(de), a
;src/man/game.c:284: enemy->y= buffer[numWorld+i+1];
	ld	a, -6 (ix)
	add	a, #0x04
	ld	-2 (ix), a
	ld	a, -5 (ix)
	adc	a, #0x00
	ld	-1 (ix), a
	ld	e, -4 (ix)
	ld	d, -3 (ix)
	inc	de
	ld	hl, #_buffer
	add	hl, de
	ld	e, (hl)
	ld	d, #0x00
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
;src/man/game.c:285: enemy->type= buffer[numWorld+i+2];
	ld	e, -4 (ix)
	ld	d, -3 (ix)
	inc	de
	inc	de
	ld	hl, #_buffer
	add	hl, de
	ld	a, (hl)
	pop	hl
	push	hl
	ld	(hl), a
;src/man/game.c:286: enemy->plane+=sys_entity_get_num_enemies();
	ld	a, -6 (ix)
	add	a, #0x0f
	ld	l, a
	ld	a, -5 (ix)
	adc	a, #0x00
	ld	h, a
	ld	e, (hl)
	push	hl
	push	bc
	push	de
	call	_sys_entity_get_num_enemies
	ld	a, l
	pop	de
	pop	bc
	pop	hl
	add	a, e
	ld	(hl), a
;src/man/game.c:280: for (int i=0;i<3*3;i+=3){ 
	inc	bc
	inc	bc
	inc	bc
	jp	00117$
00101$:
;src/man/game.c:288: if(created_enemy2==1){
	ld	a,(#_created_enemy2 + 0)
	dec	a
	jr	NZ,00103$
;src/man/game.c:289: TEntity *enemy2=sys_entity_create_enemy1();
	call	_sys_entity_create_enemy1
;src/man/game.c:290: enemy2->x=256/2;
	ld	c,l
	ld	b,h
	inc	hl
	inc	hl
	ld	(hl), #0x80
	inc	hl
	ld	(hl), #0x00
;src/man/game.c:291: enemy2->y=16;
	ld	hl, #0x0004
	add	hl, bc
	ld	(hl), #0x10
	inc	hl
	ld	(hl), #0x00
;src/man/game.c:292: enemy2->type=entity_type_enemy2;
	ld	a, #0x04
	ld	(bc), a
;src/man/game.c:293: enemy2->dir=3;
	ld	hl, #0x000c
	add	hl, bc
	ld	(hl), #0x03
;src/man/game.c:294: enemy2->plane+=sys_entity_get_num_enemies();
	ld	hl, #0x000f
	add	hl, bc
	ld	c, (hl)
	push	hl
	push	bc
	call	_sys_entity_get_num_enemies
	ld	a, l
	pop	bc
	pop	hl
	add	a, c
	ld	(hl), a
00103$:
;src/man/game.c:298: load_file_into_buffer("o-coord.bin");
	ld	hl, #___str_6
	push	hl
	call	_load_file_into_buffer
	pop	af
;src/man/game.c:299: for (int i=0; i<(3*5);i+=3){
	ld	bc, #0x0000
00120$:
	ld	a, c
	sub	a, #0x0f
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x80
	jp	NC, 00106$
;src/man/game.c:300: char numWorld=actual_world*15;
	ld	a,(#_actual_world + 0)
	ld	e, a
	add	a, a
	add	a, e
	add	a, a
	add	a, e
	add	a, a
	add	a, e
	ld	-1 (ix), a
;src/man/game.c:301: TEntity *object=sys_entity_create_object();
	push	bc
	call	_sys_entity_create_object
	pop	bc
	inc	sp
	inc	sp
;src/man/game.c:302: object->x=buffer[numWorld+i];//x
	ex	de,hl
	push	de
	inc	de
	inc	de
	ld	l, -1 (ix)
	ld	h, #0x00
	add	hl, bc
	ld	-4 (ix), l
	ld	-3 (ix), h
	ld	a, #<(_buffer)
	add	a, -4 (ix)
	ld	l, a
	ld	a, #>(_buffer)
	adc	a, -3 (ix)
	ld	h, a
	ld	a, (hl)
	ld	-2 (ix), a
	xor	a, a
	ld	-1 (ix), a
	ld	a, -2 (ix)
	ld	(de), a
	inc	de
	ld	a, -1 (ix)
	ld	(de), a
;src/man/game.c:303: object->y=buffer[numWorld+i+1];//y
	ld	a, -6 (ix)
	add	a, #0x04
	ld	-2 (ix), a
	ld	a, -5 (ix)
	adc	a, #0x00
	ld	-1 (ix), a
	ld	e, -4 (ix)
	ld	d, -3 (ix)
	inc	de
	ld	hl, #_buffer
	add	hl, de
	ld	e, (hl)
	ld	d, #0x00
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
;src/man/game.c:304: object->type=buffer[numWorld+i+2];//type
	ld	e, -4 (ix)
	ld	d, -3 (ix)
	inc	de
	inc	de
	ld	hl, #_buffer
	add	hl, de
	ld	e, (hl)
	pop	hl
	push	hl
	ld	(hl), e
;src/man/game.c:305: if( object->type==object_divan1_pattern) object->plane=divan1_plane;
	ld	a, -6 (ix)
	add	a, #0x0f
	ld	l, a
	ld	a, -5 (ix)
	adc	a, #0x00
	ld	h, a
	ld	a, e
	sub	a, #0x58
	jr	NZ,00105$
	ld	(hl), #0x16
00105$:
;src/man/game.c:306: object->plane+=sys_entity_get_num_objects()-1;   
	ld	e, (hl)
	push	hl
	push	bc
	push	de
	call	_sys_entity_get_num_objects
	ld	a, l
	pop	de
	pop	bc
	pop	hl
	dec	a
	add	a, e
	ld	(hl), a
;src/man/game.c:307: sys_render_update(object);
	push	bc
	pop	de
	pop	hl
	push	hl
	push	de
	push	hl
	call	_sys_render_update
	pop	af
	pop	bc
;src/man/game.c:299: for (int i=0; i<(3*5);i+=3){
	inc	bc
	inc	bc
	inc	bc
	jp	00120$
00106$:
;src/man/game.c:311: load_file_into_buffer("g-coord.bin");
	ld	hl, #___str_7
	push	hl
	call	_load_file_into_buffer
	pop	af
;src/man/game.c:312: char numWorld=actual_world*6; //Son 6 bytes por mundo
	ld	iy, #_actual_world
	ld	a, 0 (iy)
	ld	c, a
	add	a, a
	add	a, c
	add	a, a
	ld	c, a
;src/man/game.c:313: player->x=buffer[numWorld+0];
	ld	hl, (_player)
	inc	hl
	inc	hl
	ld	-2 (ix), l
	ld	-1 (ix), h
	ld	b, #0x00
	ld	hl, #_buffer
	add	hl, bc
	ld	e, (hl)
	ld	d, #0x00
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
;src/man/game.c:314: player->y=buffer[numWorld+1];
	ld	de, (_player)
	ld	hl, #0x0004
	add	hl, de
	ld	-2 (ix), l
	ld	-1 (ix), h
	ld	e, c
	ld	d, b
	inc	de
	ld	hl, #_buffer
	add	hl, de
	ld	e, (hl)
	ld	d, #0x00
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	(hl), e
	inc	hl
	ld	(hl), d
;src/man/game.c:315: destiny_x_door=buffer[numWorld+2];
	ld	e, c
	ld	d, b
	inc	de
	inc	de
	ld	hl, #_buffer
	add	hl, de
	ld	a, (hl)
	ld	(_destiny_x_door+0), a
	xor	a, a
	ld	(_destiny_x_door+1), a
;src/man/game.c:316: destiny_y_door=buffer[numWorld+3];
	ld	e, c
	ld	d, b
	inc	de
	inc	de
	inc	de
	ld	hl, #_buffer
	add	hl, de
	ld	a, (hl)
	ld	(_destiny_y_door+0), a
	xor	a, a
	ld	(_destiny_y_door+1), a
;src/man/game.c:317: destiny_x_phone=buffer[numWorld+4];
	ld	hl, #0x0004
	add	hl, bc
	ld	de, #_buffer
	add	hl, de
	ld	a, (hl)
	ld	(_destiny_x_phone+0), a
	xor	a, a
	ld	(_destiny_x_phone+1), a
;src/man/game.c:318: destiny_y_phone=buffer[numWorld+5];
	ld	hl, #0x0005
	add	hl, bc
	ld	de, #_buffer
	add	hl, de
	ld	a, (hl)
	ld	(_destiny_y_phone+0), a
	xor	a, a
	ld	(_destiny_y_phone+1), a
;src/man/game.c:321: switch (actual_world)
	ld	a, #0x04
	sub	a, 0 (iy)
	jr	C,00112$
	ld	c, 0 (iy)
	ld	b, #0x00
	ld	hl, #00172$
	add	hl, bc
	add	hl, bc
	add	hl, bc
	jp	(hl)
00172$:
	jp	00107$
	jp	00108$
	jp	00109$
	jp	00110$
	jp	00111$
;src/man/game.c:323: case 0:
00107$:
;src/man/game.c:324: actual_world_string="level0.bin";
	ld	bc, #___str_8+0
;src/man/game.c:325: break;
	jr	00113$
;src/man/game.c:326: case 1:
00108$:
;src/man/game.c:327: actual_world_string="level1.bin";
	ld	bc, #___str_9
;src/man/game.c:328: break;
	jr	00113$
;src/man/game.c:329: case 2:
00109$:
;src/man/game.c:330: actual_world_string="level2.bin";
	ld	bc, #___str_10
;src/man/game.c:331: break;
	jr	00113$
;src/man/game.c:332: case 3:
00110$:
;src/man/game.c:333: actual_world_string="level3.bin";
	ld	bc, #___str_11
;src/man/game.c:334: break;
	jr	00113$
;src/man/game.c:335: case 4:
00111$:
;src/man/game.c:336: actual_world_string="level4.bin";
	ld	bc, #___str_12
;src/man/game.c:337: break;
	jr	00113$
;src/man/game.c:338: default:
00112$:
;src/man/game.c:339: actual_world_string="level5.bin";
	ld	bc, #___str_13
;src/man/game.c:341: }
00113$:
;src/man/game.c:343: load_file_into_buffer_with_structure(actual_world_string);
	push	bc
	call	_load_file_into_buffer_with_structure
	pop	af
;src/man/game.c:345: man_game_pintarMapa();
	call	_man_game_pintarMapa
;src/man/game.c:347: SpriteOn();
	call	_SpriteOn
;src/man/game.c:349: world_change=0;
	ld	hl,#_world_change + 0
	ld	(hl), #0x00
;src/man/game.c:351: enabled_world_change=0;
	ld	hl,#_enabled_world_change + 0
	ld	(hl), #0x00
;src/man/game.c:353: pintar_HUD();
	call	_pintar_HUD
;src/man/game.c:354: SetRealTimer(0);
	ld	hl, #0x0000
	push	hl
	call	_SetRealTimer
	pop	af
00122$:
;src/man/game.c:359: }
	ld	sp, ix
	pop	ix
	ret
___str_5:
	.ascii "e-coord.bin"
	.db 0x00
___str_6:
	.ascii "o-coord.bin"
	.db 0x00
___str_7:
	.ascii "g-coord.bin"
	.db 0x00
___str_8:
	.ascii "level0.bin"
	.db 0x00
___str_9:
	.ascii "level1.bin"
	.db 0x00
___str_10:
	.ascii "level2.bin"
	.db 0x00
___str_11:
	.ascii "level3.bin"
	.db 0x00
___str_12:
	.ascii "level4.bin"
	.db 0x00
___str_13:
	.ascii "level5.bin"
	.db 0x00
;src/man/game.c:370: void man_game_pintarMapa(){
;	---------------------------------
; Function man_game_pintarMapa
; ---------------------------------
_man_game_pintarMapa::
	call	___sdcc_enter_ix
	ld	hl, #-9
	add	hl, sp
	ld	sp, hl
;src/man/game.c:375: for (char f=0; f<numeroFilas;f++){
	ld	c, #0x00
00107$:
	ld	a, c
	sub	a, #0x17
	jp	NC, 00109$
;src/man/game.c:376: for (char c=0; c<numeroColumnas;c++){
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ex	(sp), hl
	xor	a, a
	ld	-1 (ix), a
00104$:
	ld	a, -1 (ix)
	sub	a, #0x20
	jp	NC, 00108$
;src/man/game.c:378: columnaEnTileset=(((buffer[c+(f*numeroColumnas)]/32)+1)*32)-(buffer[c+(f*numeroColumnas)]);
	ld	e, -1 (ix)
	ld	d, #0x00
	pop	hl
	push	hl
	add	hl, de
	ld	a, #<(_buffer)
	add	a, l
	ld	-7 (ix), a
	ld	a, #>(_buffer)
	adc	a, h
	ld	-6 (ix), a
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	b, (hl)
	ld	l, b
	ld	h, #0x00
	ld	-3 (ix), l
	ld	-2 (ix), h
	bit	7, h
	jr	Z,00111$
	ld	a, l
	add	a, #0x1f
	ld	-3 (ix), a
	ld	a, h
	adc	a, #0x00
	ld	-2 (ix), a
00111$:
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	a, #0x05
00145$:
	sra	h
	rr	l
	dec	a
	jr	NZ,00145$
	ld	a, l
	inc	a
	rrca
	rrca
	rrca
	and	a, #0xe0
	sub	a, b
;src/man/game.c:379: resultado=(32-columnaEnTileset)*8;
	ld	b, a
	ld	h, #0x00
	ld	a, #0x20
	sub	a, b
	ld	l, a
	ld	a, #0x00
	sbc	a, h
	ld	h, a
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	(_resultado), hl
;src/man/game.c:380: HMMM(resultado,(buffer[c+(f*numeroColumnas)]/32)*8+256, c*8,f*8,8,8);
	ld	l, c
	ld	h, #0x00
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	-5 (ix), l
	ld	-4 (ix), h
	sla	e
	rl	d
	sla	e
	rl	d
	sla	e
	rl	d
	ld	-3 (ix), e
	ld	-2 (ix), d
	ld	l, -7 (ix)
	ld	h, -6 (ix)
	ld	b, (hl)
	ld	l, #0x00
	ld	e, b
	ld	d, l
	bit	7, l
	jr	Z,00112$
	ld	a, b
	add	a, #0x1f
	ld	e, a
	ld	a, l
	adc	a, #0x00
	ld	d, a
00112$:
	ld	b, #0x05
00148$:
	sra	d
	rr	e
	djnz	00148$
	ex	de,hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	de, #0x0100
	add	hl, de
	push	bc
	ld	de, #0x0008
	push	de
	ld	de, #0x0008
	push	de
	ld	e, -5 (ix)
	ld	d, -4 (ix)
	push	de
	ld	e, -3 (ix)
	ld	d, -2 (ix)
	push	de
	push	hl
	ld	hl, (_resultado)
	push	hl
	call	_HMMM
	ld	hl, #12
	add	hl, sp
	ld	sp, hl
	pop	bc
;src/man/game.c:376: for (char c=0; c<numeroColumnas;c++){
	inc	-1 (ix)
	jp	00104$
00108$:
;src/man/game.c:375: for (char f=0; f<numeroFilas;f++){
	inc	c
	jp	00107$
00109$:
;src/man/game.c:383: }
	ld	sp, ix
	pop	ix
	ret
;src/man/game.c:404: void man_game_copy_sprites_definition_to_VRAM(){
;	---------------------------------
; Function man_game_copy_sprites_definition_to_VRAM
; ---------------------------------
_man_game_copy_sprites_definition_to_VRAM::
;src/man/game.c:405: load_file_into_buffer("sprites.bin");
	ld	hl, #___str_14
	push	hl
	call	_load_file_into_buffer
	pop	af
;src/man/game.c:406: for (char i=0; i<total_sprites; i++) {		
	ld	c, #0x00
00103$:
	ld	a, c
	sub	a, #0x18
	ret	NC
;src/man/game.c:407: SetSpritePattern(i*4, &buffer[i*32],32);
	ld	l, c
	ld	h, #0x00
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	de, #_buffer
	add	hl, de
	ld	a, c
	add	a, a
	add	a, a
	ld	b, a
	push	bc
	ld	a, #0x20
	push	af
	inc	sp
	push	hl
	push	bc
	inc	sp
	call	_SetSpritePattern
	pop	af
	pop	af
	pop	bc
;src/man/game.c:406: for (char i=0; i<total_sprites; i++) {		
	inc	c
;src/man/game.c:416: }
	jr	00103$
___str_14:
	.ascii "sprites.bin"
	.db 0x00
;src/man/game.c:417: void man_game_copy_color_sprite_to_VRAM(){
;	---------------------------------
; Function man_game_copy_color_sprite_to_VRAM
; ---------------------------------
_man_game_copy_color_sprite_to_VRAM::
;src/man/game.c:418: load_file_into_buffer("sprcol.bin");
	ld	hl, #___str_15
	push	hl
	call	_load_file_into_buffer
	pop	af
;src/man/game.c:425: for (char i=0; i<total_sprites; i++) {	
	ld	c, #0x00
00103$:
	ld	a, c
	sub	a, #0x18
	ret	NC
;src/man/game.c:426: SC5SpriteColors(i, &buffer[i*16]);
	ld	e, c
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	push	de
	ld	de, #_buffer
	add	hl, de
	pop	de
	push	bc
	push	hl
	push	de
	call	_SC5SpriteColors
	pop	af
	pop	af
	pop	bc
;src/man/game.c:425: for (char i=0; i<total_sprites; i++) {	
	inc	c
;src/man/game.c:429: }
	jr	00103$
___str_15:
	.ascii "sprcol.bin"
	.db 0x00
;src/man/game.c:431: void wait(){
;	---------------------------------
; Function wait
; ---------------------------------
_wait::
;src/man/game.c:437: __endasm;
	halt
	halt
	halt
;src/man/game.c:439: }
	ret
;src/man/game.c:440: void man_game_cargar_buffer_musica(){
;	---------------------------------
; Function man_game_cargar_buffer_musica
; ---------------------------------
_man_game_cargar_buffer_musica::
;src/man/game.c:441: enter_name_and_extension_in_structure( &TFileMusic, &fileNameSong[0]);
	ld	hl, #_fileNameSong
	push	hl
	ld	hl, #_TFileMusic
	push	hl
	call	_enter_name_and_extension_in_structure
	pop	af
;src/man/game.c:442: fcb_open( &TFileMusic );
	ld	hl, #_TFileMusic
	ex	(sp),hl
	call	_fcb_open
;src/man/game.c:443: fcb_read( &TFileMusic, &songBuffer[0], SONG_BUFFER_TAM );  
	ld	hl, #0x0108
	ex	(sp),hl
	ld	hl, #_songBuffer
	push	hl
	ld	hl, #_TFileMusic
	push	hl
	call	_fcb_read
	pop	af
	pop	af
;src/man/game.c:444: fcb_close( &TFileMusic );
	ld	hl, #_TFileMusic
	ex	(sp),hl
	call	_fcb_close
	pop	af
;src/man/game.c:445: }
	ret
;src/man/game.c:446: void man_game_reproducir_musica_y_efectos(){
;	---------------------------------
; Function man_game_reproducir_musica_y_efectos
; ---------------------------------
_man_game_reproducir_musica_y_efectos::
;src/man/game.c:452: if (TestFX()==1){
	call	_TestFX
	dec	l
	ret	NZ
;src/man/game.c:453: if (JIFFY!=0){
	ld	a, (#0xfc9e)
	or	a, a
	ret	Z
;src/man/game.c:454: JIFFY=0;
	ld	hl, #0xfc9e
	ld	(hl), #0x00
;src/man/game.c:455: UpdateFX();
;src/man/game.c:459: }
	jp	_UpdateFX
;src/man/game.c:461: void man_game_cargar_buffer_efectos_sonido(){
;	---------------------------------
; Function man_game_cargar_buffer_efectos_sonido
; ---------------------------------
_man_game_cargar_buffer_efectos_sonido::
;src/man/game.c:463: afbdata=MMalloc(SONG_EFFECT_TAM);
	ld	hl, #0x04b7
	push	hl
	call	_MMalloc
	pop	af
	ld	(_afbdata), hl
;src/man/game.c:464: enter_name_and_extension_in_structure( &TFileEffects, "effects.afb");
	ld	hl, #___str_16
	push	hl
	ld	hl, #_TFileEffects
	push	hl
	call	_enter_name_and_extension_in_structure
	pop	af
;src/man/game.c:465: fcb_open( &TFileEffects );
	ld	hl, #_TFileEffects
	ex	(sp),hl
	call	_fcb_open
	pop	af
;src/man/game.c:466: fcb_read( &TFileEffects, afbdata, SONG_EFFECT_TAM );  
	ld	hl, (_afbdata)
	ld	bc, #0x04b7
	push	bc
	push	hl
	ld	hl, #_TFileEffects
	push	hl
	call	_fcb_read
	pop	af
	pop	af
;src/man/game.c:467: fcb_close( &TFileEffects );
	ld	hl, #_TFileEffects
	ex	(sp),hl
	call	_fcb_close
	pop	af
;src/man/game.c:468: }
	ret
___str_16:
	.ascii "effects.afb"
	.db 0x00
;src/man/game.c:470: void man_game_reproducir_efecto_sonido(char effect){
;	---------------------------------
; Function man_game_reproducir_efecto_sonido
; ---------------------------------
_man_game_reproducir_efecto_sonido::
;src/man/game.c:482: PlayFX(effect);
	ld	hl, #2+0
	add	hl, sp
	ld	a, (hl)
	push	af
	inc	sp
	call	_PlayFX
	inc	sp
;src/man/game.c:483: }
	ret
;src/man/game.c:485: void debug(){
;	---------------------------------
; Function debug
; ---------------------------------
_debug::
;src/man/game.c:496: TEntity *enemy=&array_enemies[3];
	ld	iy, #_array_enemies
	ld	a, 0 (iy)
	add	a, #0x3f
	ld	e, a
	ld	a, 1 (iy)
	adc	a, #0x00
	ld	d, a
;src/man/game.c:497: TEntity *shot=&array_shots[0];
	ld	bc, (_array_shots)
;src/man/game.c:498: BoxFill (0, 23*8, 256, 210, 6, LOGICAL_IMP );
	push	bc
	push	de
	xor	a, a
	ld	d,a
	ld	e,#0x06
	push	de
	ld	hl, #0x00d2
	push	hl
	ld	hl, #0x0100
	push	hl
	ld	hl, #0x00b8
	push	hl
	ld	l, #0x00
	push	hl
	call	_BoxFill
	ld	hl, #10
	add	hl, sp
	ld	sp, hl
	pop	de
	pop	bc
;src/man/game.c:499: PutText(0,200,Itoa(enemy->plane,"  ",10),8);
	ex	de,hl
	ld	de, #0x000f
	add	hl, de
	ld	e, (hl)
	ld	d, #0x00
	push	bc
	ld	hl, #0x000a
	push	hl
	ld	hl, #___str_17
	push	hl
	push	de
	call	_Itoa
	pop	af
	pop	af
	pop	af
	ld	a, #0x08
	push	af
	inc	sp
	push	hl
	ld	hl, #0x00c8
	push	hl
	ld	l, #0x00
	push	hl
	call	_PutText
	pop	af
	pop	af
	pop	af
	inc	sp
	pop	bc
;src/man/game.c:500: PutText(50,200,Itoa(shot->plane,"  ",10),8);
	ld	de, #___str_17
	ld	l, c
	ld	h, b
	ld	bc, #0x000f
	add	hl, bc
	ld	c, (hl)
	ld	b, #0x00
	ld	hl, #0x000a
	push	hl
	push	de
	push	bc
	call	_Itoa
	pop	af
	pop	af
	pop	af
	ld	a, #0x08
	push	af
	inc	sp
	push	hl
	ld	hl, #0x00c8
	push	hl
	ld	l, #0x32
	push	hl
	call	_PutText
	pop	af
	pop	af
	pop	af
	inc	sp
;src/man/game.c:501: PutText(100,200,Itoa(sys_entity_get_num_enemies(),"  ",10),8); 
	call	_sys_entity_get_num_enemies
	ld	h, #0x00
	ld	bc, #0x000a
	push	bc
	ld	bc, #___str_17
	push	bc
	push	hl
	call	_Itoa
	pop	af
	pop	af
	pop	af
	ld	a, #0x08
	push	af
	inc	sp
	push	hl
	ld	hl, #0x00c8
	push	hl
	ld	l, #0x64
	push	hl
	call	_PutText
	pop	af
	pop	af
	pop	af
	inc	sp
;src/man/game.c:521: }
	ret
___str_17:
	.ascii "  "
	.db 0x00
;src/man/game.c:523: void pintar_HUD(){
;	---------------------------------
; Function pintar_HUD
; ---------------------------------
_pintar_HUD::
;src/man/game.c:525: BoxFill (0, 23*8, 256, 210, 0, LOGICAL_IMP );
	xor	a, a
	push	af
	inc	sp
	xor	a, a
	push	af
	inc	sp
	ld	hl, #0x00d2
	push	hl
	ld	hl, #0x0100
	push	hl
	ld	hl, #0x00b8
	push	hl
	ld	l, #0x00
	push	hl
	call	_BoxFill
	ld	hl, #10
	add	hl, sp
	ld	sp, hl
;src/man/game.c:527: HMMM(0,256+16,0,23*8,16,16);
	ld	hl, #0x0010
	push	hl
	ld	l, #0x10
	push	hl
	ld	l, #0xb8
	push	hl
	ld	l, #0x00
	push	hl
	ld	hl, #0x0110
	push	hl
	ld	hl, #0x0000
	push	hl
	call	_HMMM
	ld	hl, #12
	add	hl, sp
	ld	sp, hl
;src/man/game.c:529: HMMM(2*8,256+16,5*8,23*8,16,16);
	ld	hl, #0x0010
	push	hl
	ld	l, #0x10
	push	hl
	ld	l, #0xb8
	push	hl
	ld	l, #0x28
	push	hl
	ld	hl, #0x0110
	push	hl
	ld	h, #0x00
	push	hl
	call	_HMMM
	ld	hl, #12
	add	hl, sp
	ld	sp, hl
;src/man/game.c:533: HMMM(3*8,256,19*8,23*8,16,16);
	ld	hl, #0x0010
	push	hl
	ld	l, #0x10
	push	hl
	ld	l, #0xb8
	push	hl
	ld	l, #0x98
	push	hl
	ld	hl, #0x0100
	push	hl
	ld	hl, #0x0018
	push	hl
	call	_HMMM
	ld	hl, #12
	add	hl, sp
	ld	sp, hl
;src/man/game.c:535: HMMM(6*8,256+(2*8),21*8,24*8,8,8);
	ld	hl, #0x0008
	push	hl
	ld	l, #0x08
	push	hl
	ld	l, #0xc0
	push	hl
	ld	l, #0xa8
	push	hl
	ld	hl, #0x0110
	push	hl
	ld	hl, #0x0030
	push	hl
	call	_HMMM
	ld	hl, #12
	add	hl, sp
	ld	sp, hl
;src/man/game.c:537: PutText(20,192,Itoa(actual_world+1," ",10),8);
	ld	de, #___str_18
	ld	hl,#_actual_world + 0
	ld	c, (hl)
	ld	b, #0x00
	inc	bc
	ld	hl, #0x000a
	push	hl
	push	de
	push	bc
	call	_Itoa
	pop	af
	pop	af
	pop	af
	ld	a, #0x08
	push	af
	inc	sp
	push	hl
	ld	hl, #0x00c0
	push	hl
	ld	l, #0x14
	push	hl
	call	_PutText
	pop	af
	pop	af
	pop	af
	inc	sp
;src/man/game.c:538: PutText(60,192,Itoa(player->lives," ",10),8);
	ld	de, #___str_18
	ld	hl, (_player)
	ld	bc, #0x0012
	add	hl, bc
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	ld	hl, #0x000a
	push	hl
	push	de
	push	bc
	call	_Itoa
	pop	af
	pop	af
	pop	af
	ld	a, #0x08
	push	af
	inc	sp
	push	hl
	ld	hl, #0x00c0
	push	hl
	ld	l, #0x3c
	push	hl
	call	_PutText
	pop	af
	pop	af
	pop	af
	inc	sp
;src/man/game.c:540: HMMM(8*8,256+(3*8),15*8,23*8,16,16);
	ld	hl, #0x0010
	push	hl
	ld	l, #0x10
	push	hl
	ld	l, #0xb8
	push	hl
	ld	l, #0x78
	push	hl
	ld	hl, #0x0118
	push	hl
	ld	hl, #0x0040
	push	hl
	call	_HMMM
	ld	hl, #12
	add	hl, sp
	ld	sp, hl
;src/man/game.c:541: PutText(140,192,Itoa(sys_entity_get_num_enemies()," ",10),8);
	call	_sys_entity_get_num_enemies
	ld	h, #0x00
	ld	bc, #0x000a
	push	bc
	ld	bc, #___str_18
	push	bc
	push	hl
	call	_Itoa
	pop	af
	pop	af
	pop	af
	ld	a, #0x08
	push	af
	inc	sp
	push	hl
	ld	hl, #0x00c0
	push	hl
	ld	l, #0x8c
	push	hl
	call	_PutText
	pop	af
	pop	af
	pop	af
	inc	sp
;src/man/game.c:542: PutText(180,192,Itoa(sys_entity_get_num_moneys()," ",10),8);    
	call	_sys_entity_get_num_moneys
	ld	h, #0x00
	ld	bc, #0x000a
	push	bc
	ld	bc, #___str_18
	push	bc
	push	hl
	call	_Itoa
	pop	af
	pop	af
	pop	af
	ld	a, #0x08
	push	af
	inc	sp
	push	hl
	ld	hl, #0x00c0
	push	hl
	ld	l, #0xb4
	push	hl
	call	_PutText
	pop	af
	pop	af
	pop	af
	inc	sp
;src/man/game.c:543: }
	ret
___str_18:
	.ascii " "
	.db 0x00
;src/man/game.c:545: void show_menu_screen(){
;	---------------------------------
; Function show_menu_screen
; ---------------------------------
_show_menu_screen::
;src/man/game.c:546: Cls();
	call	_Cls
;src/man/game.c:547: KillKeyBuffer();
	call	_KillKeyBuffer
;src/man/game.c:548: PutText(80,0, "The watchmen",0);
	xor	a, a
	push	af
	inc	sp
	ld	hl, #___str_19
	push	hl
	ld	hl, #0x0000
	push	hl
	ld	l, #0x50
	push	hl
	call	_PutText
	pop	af
	pop	af
	pop	af
	inc	sp
;src/man/game.c:549: PutText(0,16, "Eres un vigilante y como siempre estas durmiendo te han robado.",0);
	xor	a, a
	push	af
	inc	sp
	ld	hl, #___str_20
	push	hl
	ld	hl, #0x0010
	push	hl
	ld	l, #0x00
	push	hl
	call	_PutText
	pop	af
	pop	af
	pop	af
	inc	sp
;src/man/game.c:550: PutText(0,32, "Recoge las monedas que han ido perdiendo, atrapa a los ladrones por la espalda",0);
	xor	a, a
	push	af
	inc	sp
	ld	hl, #___str_21
	push	hl
	ld	hl, #0x0020
	push	hl
	ld	l, #0x00
	push	hl
	call	_PutText
	pop	af
	pop	af
	pop	af
	inc	sp
;src/man/game.c:551: PutText(0,56, "Puedes esconderte en los divanes",0);
	xor	a, a
	push	af
	inc	sp
	ld	hl, #___str_22
	push	hl
	ld	hl, #0x0038
	push	hl
	ld	l, #0x00
	push	hl
	call	_PutText
	pop	af
	pop	af
	pop	af
	inc	sp
;src/man/game.c:552: HMMM(14*8,256+(16*8),8*8,12*8,144,48);
	ld	hl, #0x0030
	push	hl
	ld	l, #0x90
	push	hl
	ld	l, #0x60
	push	hl
	ld	l, #0x40
	push	hl
	ld	hl, #0x0180
	push	hl
	ld	hl, #0x0070
	push	hl
	call	_HMMM
	ld	hl, #12
	add	hl, sp
	ld	sp, hl
;src/man/game.c:553: PutText(20,180, "Press any key to continue",0);
	xor	a, a
	push	af
	inc	sp
	ld	hl, #___str_23
	push	hl
	ld	hl, #0x00b4
	push	hl
	ld	l, #0x14
	push	hl
	call	_PutText
	pop	af
	pop	af
	pop	af
	inc	sp
;src/man/game.c:554: WaitForKey();
	call	_WaitKey
;src/man/game.c:555: SpriteOn();
	call	_SpriteOn
;src/man/game.c:557: actual_world=0;
	ld	hl,#_actual_world + 0
	ld	(hl), #0x00
;src/man/game.c:561: world_change=1;
	ld	hl,#_world_change + 0
	ld	(hl), #0x01
;src/man/game.c:563: game_over=0;
	ld	hl,#_game_over + 0
	ld	(hl), #0x00
;src/man/game.c:564: }
	ret
___str_19:
	.ascii "The watchmen"
	.db 0x00
___str_20:
	.ascii "Eres un vigilante y como siempre estas durmiendo te han roba"
	.ascii "do."
	.db 0x00
___str_21:
	.ascii "Recoge las monedas que han ido perdiendo, atrapa a los ladro"
	.ascii "nes por la espalda"
	.db 0x00
___str_22:
	.ascii "Puedes esconderte en los divanes"
	.db 0x00
___str_23:
	.ascii "Press any key to continue"
	.db 0x00
;watchmen.c:3: void main(void) 
;	---------------------------------
; Function main
; ---------------------------------
_main::
;watchmen.c:5: man_game_init();
	call	_man_game_init
;watchmen.c:6: man_game_play();
;watchmen.c:7: }
	jp	_man_game_play
	.area _CODE
	.area _INITIALIZER
__xinit__fileNameSongEffects:
	.ascii "effects.afb"
	.db 0x00
__xinit__fileNameSong:
	.ascii "song1.pt3"
	.db 0x00
	.area _CABS (ABS)
