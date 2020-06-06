///scr_light(light to create)
//define como cada personaje va a arrojar luz. 
//el escript crea un objeto obj_light especifica del personaje como "argument0" o "argument[0]"
light_create= argument[0];
instance_create(x, y, light_create);
