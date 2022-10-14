#pragma once
/*
Cuando queremos dibujar un sprite tenemos que utilizar 2 instrucciones:        
SC5SpriteColors(divan1_plane, &COLOR_DATA_DIVAN[0]);
PutSprite(divan1_plane,object_divan1_pattern,divan1_x,divan1_y,0);
*/
//Definiendo planos
#define divan1_plane 0
#define divan2_plane 1
#define shot_plane 2
#define player_plane 5
#define enemy1_plane 6
#define object_plane 15
#define object_any 20


//Definiendo patrones
//Esto tiene que seguir el orden exacto en el que hemos metido los datos en la VRAM
//Divan
#define object_divan1_pattern 0 //Sprite 0
#define object_divan2_pattern 4 //Sprite 1
//Shots
#define shot_pattern 8 //Sprite 2
//Player
#define player_left_pattern 12 //Sprite 2
#define player_left_walking_pattern 16 //Sprite 3
#define player_right_pattern 20 //Sprite 4
#define player_right_walking_pattern 24 //Sprite 5
#define player_up1_pattern 28 //Sprite 6
#define player_up2_pattern 32 //Sprite 7
#define player_jump_left_pattern 36 //Sprite 8
#define player_Jump_right_pattern 40 //Sprite 9

//Enemies
#define enemy1_right_pattern 44 //Sprite 10
#define enemy1_right_walking_pattern 48 //Sprite 11
#define enemy1_left_pattern 52 //Sprite 12
#define enemy1_left_walking_pattern 56 //Sprite 13
//Objects
#define object_money_pattern 60 //Sprite 14
#define object_any_pattern 64 //Sprite 14


unsigned char COLOR_DATA_ANY[]={
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,
  0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
};


//Tiles
#define tile_empty 255 // vacio
//Objects
#define tile_phone1 160 // telefono
#define tile_phone2 161 // telefono
#define tile_end_level1 164 // La puerta cerrada
#define tile_end_level2 165 // La puerta cerrada
//Solids
#define tile_stairs1 192 // escalera
#define tile_stairs2 193 // escalera
#define tile_door_left 228 // muro que te deja pasar a la izquierda
#define tile_door_right 229 // escalera
#define tile_floor_tile 224 //suelo >224
#define tile_wall 226 //suelo >224
#define tile_desabled_divan 198 //suelo >224

/*
// SPRITE DATA
unsigned char SPRITE_DATA[]={};
*/


// SPRITE COLORS
/*
unsigned char COLOR_DATA[]={};
*/
unsigned char COLOR_DATA_PLAYER[]={
  0x09,0x08,0x08,0x0A,0x0A,0x0A,0x0A,0x0A,
  0x0A,0x0A,0x05,0x05,0x05,0x05,0x04,0x04
};
unsigned char COLOR_DATA_ENEMY[]={
  0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01,
  0x01,0x01,0x01,0x01,0x01,0x01,0x01,0x01
};

unsigned char COLOR_DATA_MONEY[]={
  0x0A,0x0A,0x0A,0x0A,0x0A,0x0A,0x0A,0x0A,
  0x09,0x09,0x09,0x09,0x08,0x08,0x08,0x08,
};
unsigned char COLOR_DATA_DIVAN1[]={
  0x0A,0x0A,0x0A,0x0A,0x0A,0x0A,0x0A,0x0A,
  0x0A,0x0A,0x0A,0x0A,0x0A,0x0A,0x0A,0x0A
};
unsigned char COLOR_DATA_DIVAN2[]={
  0x0F,0x0F,0x0F,0x0F,0x0F,0x0F,0x0F,0x0F,
  0x0F,0x0F,0x0F,0x0F,0x0F,0x0F,0x0F,0x0F
};

unsigned char COLOR_DATA_SHOT[]={
  0x0A,0x0A,0x08,0x0F,0x0F,0x0F,0x0F,0x0F,
  0x0F,0x0F,0x0F,0x0F,0x0F,0x0F,0x0F,0x0F
};

