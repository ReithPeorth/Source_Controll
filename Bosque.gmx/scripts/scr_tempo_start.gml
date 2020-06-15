///scr_tempo_start(0 compas, 1 blanca, 2 negra, 3 corch)
//asigna las variables para q la accion se sincronice con el tiempo dado en "argument[0]"

tempo_action = 1;                       //guarda que la accion se acaba de ejecutar
   
//guarda el momento exacto en el q se ejecuta la accion
if argument[0] == 0 {tempo_check = obj_tempo.compas;}
if argument[0] == 1 {tempo_check = obj_tempo.blanca;}
if argument[0] == 2 {tempo_check = obj_tempo.negra;}
if argument[0]== 3 {tempo_check = obj_tempo.corchea;}
