//Horizontal Colision

if (place_meeting(x+hsp, y, obj_ground))
{
    y_push = 0; //esta variable cuenta el maximo de pixeles en Y q se levanta el obj
    while (place_meeting(x+hsp, y-y_push, obj_ground) && y_push <= abs(3))      //esta linea checkea si es un muro o una rampa 
    {
        y_push += 1;
    }
    if place_meeting(x+hsp, y-y_push, obj_ground)   //si es un muro
    {
        while (!place_meeting(x+sign(hsp), y, obj_ground))
        {
            x += sign(hsp);
            
        }
        hsp=0;
    }
    else        //si es una rampa
    {
        y -= y_push;
    }
}



if (place_meeting(x, y+vsp, obj_ground))
{
    while (!place_meeting(x, y+sign(vsp), obj_ground))
    {
        y += sign(vsp);
    }
    vsp=0;
}


