#pragma once
#include "src/man/entity.c"
#include "src/man/sprites.c"

typedef struct TWorld TWorld;
struct TWorld{
    char player_x,player_y;
    char door_x,door_y;
    char phone_x,phone_y;
}; 

typedef struct TCoordinate_enemy TCoordinate_enemy;
struct TCoordinate_enemy{
    unsigned int x;
    unsigned int y;
    unsigned char type;
}; 

typedef struct TCoordinate_object TCoordinate_object;
struct TCoordinate_object{
    unsigned int x;
    unsigned int y;
    unsigned char type;
}; 
/**************************************************************************************
****************************                     **************************************
******************** GAME POSITIONS=PLAYER, PONE & DOOR *******************************
****************************                     ************************************** 
***************************************************************************************/

TWorld world_coordenates[5]={
  {//World0
    1*8,19*8,  //Player initial position
    29*8,2*8,  //door position
    0,15*8    //Phone position
  },
  {//World1
    4*8,20*8,  //Player initial position
    2*8,4*8,  //door position
    28*8,10*8    //Phone position
  },
  {//World2
    3*8,20*8,  //Player initial position
    4*8,15*8,  //door position
    27*8,11*8    //Phone position
  },  
  {//World3
    2*8,20*8,  //Player initial position
    1*8,1*8,   //door position
    25*8,16*8  //Phone position
  },
  {//World4
    20*8,19*8,  //Player initial position
    1*8,1*8,  //door position
    29*8,20*8 //Phone position
  }
 };

/************************************************************************************
****************************                   **************************************
**************************** ENEMIES POSITIONS **************************************
****************************                   ************************************** 
*************************************************************************************/


//La variable MAX_enemies y MAx_objects está en entity.c
TCoordinate_enemy world_enemies[][MAX_enemies]={
  {//wolrd 0
    { //coordinate_enemy 0
      14*8,
      3*8,
      entity_type_enemy1
    },
    { //coordinate_enemy 1
      4*8,
      9*8,
      entity_type_enemy2 
    },
    { //coordinate_enemy 2
      6*8,
      15*8,
      entity_type_enemy1
    }
  },
  {//world 1
    { //coordinate_enemy 0
      4*8,
      1*8,
      entity_type_enemy1
    },
    { //coordinate_enemy 1
      5*8,
      5*8,
      entity_type_enemy1
    },
    { //coordinate_enemy 2
      15*8,
      10*8,
      entity_type_enemy1
    }
  },
  {//world 2
    { //coordinate_enemy 0
      23*8,
      2*8,
      entity_type_enemy1
    },
    { //coordinate_enemy 1
      28*8,
      6*8,
      entity_type_enemy1
    },
    { //coordinate_enemy 2
      23*8,
      16*8,
      entity_type_enemy1
    }
  },
  {//world 3
    { //coordinate_enemy 0
      23*8,
      2*8,
      entity_type_enemy1
    },
    { //coordinate_enemy 1
      10*8,
      6*8,
      entity_type_enemy1
    },
    { //coordinate_enemy 2
      10*8,
      15*8,
      entity_type_enemy1
    }
  }
};











/************************************************************************************
****************************                                    *********************
**************************** OBJECTS POSITIONS (MONEYS & DIVAN) *********************
****************************                                    *********************
************************************************************************************/




TCoordinate_object world_objects[][MAX_objects]={
  {//wolrd 0, las filas son 3,9,15,20
    { //coordinate_object 0
      1*8,
      3*8,
      entity_type_object_money
    },
    { //coordinate_object 1
      14*8,
      3*8,
      entity_type_object_money
    },
    { //coordinate_object 2
      1*8,
      9*8,
      entity_type_object_money
    },
    { //coordinate_enemy 3
      14*8,
      15*8,
      entity_type_object_divan
    }  
  },



  {//world 1
    { //coordinate_object 0
      28*8,
      1*8,
      entity_type_object_money
    },
    {//coordinate_object 1
      15*8,
      5*8,
      entity_type_object_money
    },
    { //coordinate_object 2
      2*8,
      10*8,
      entity_type_object_money
    },
    { //coordinate_object 4
      15*8,
      1*8,
      entity_type_object_divan
    },   
    { //coordinate__object 5
      1*8,
      27*8,
      entity_type_object_divan
    }
  },







  {//world 2
    { //coordinate_object 0
      26*8,
      2*8,
      entity_type_object_money
    },
    {//coordinate_object 1
      1*8,
      6*8,
      entity_type_object_money
    },
    { //coordinate_object 2
      21*8,
      6*8,
      entity_type_object_money
    },
    { //coordinate_object 3
      16*8,
      2*8,
      entity_type_object_divan
    },   
    { //coordinate_object 4
      3*8,
      27*8,
      entity_type_object_divan
    }
  },



  {//world 3
    { //coordinate_object 0
      11*8,
      2*8,
      entity_type_object_money
    },
    {//coordinate_object 1
      1*8,
      6*8,
      entity_type_object_money
    },
    { //coordinate_object 2
      28*8,
      15*8,
      entity_type_object_money
    },
    { //coordinate_enemy 2
      2*8,
      26*8,
      entity_type_object_divan
    },    { //coordinate_enemy 2
      14*8,
      11*8,
      entity_type_object_divan
    }
  }
};
