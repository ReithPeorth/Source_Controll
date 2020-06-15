///scr_tempo_end(rythm, sound, action)
//chequea si el tempo de argument[0] ha acabado y sincroniza accion y sonido 

//guarda el ritmo a chequear
if argument[0] == 0 {sinc_rythm = obj_tempo.compas;}
if argument[0] == 1 {sinc_rythm = obj_tempo.blanca;}
if argument[0] == 2 {sinc_rythm = obj_tempo.negra;}
if argument[0]== 3 {sinc_rythm = obj_tempo.corchea;}
sinc_sound = argument[1];   //guarda el sonido a activar
sinc_action = argument[2];  //guarda la animacion a activar

//chequea cuando la cuenta atras ha terminado y la accion se puede ejecutar, esta vez sincronizada con el tempo
if (tempo_action == 1) && ((sinc_rythm -1) == tempo_check)
{
    audio_play_sound(sinc_sound, 0, 0); //ejecuta el sonido
                                        //ejecuta una animacion
    tempo_action = 0;                   //estos 2 valores vuelven a 0 para poner de nuevo en marcha el ciclo
    tempo_check = 0;
}

//si es necesario se puede modificar para q haga un "return true" para chequeos posteriores
