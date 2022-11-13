/// @description endround
// You can write your code in this editor

//draw condition
if(ai_hand ==5 and p_hand ==5){
	
	alarm[6] = room_speed *0.25	
}

else if(player_hand_value == 21 and ai_hand_value == 21){
	alarm[6] = room_speed *0.25	
} else{
if(ai_hand_value >21 and player_hand_value>21){
	audio_play_sound(sound_takedamage,1,false)
	obj_score_ai.myscore = obj_score_ai.myscore - (ai_hand_value-21)
	obj_score_p.myscore = obj_score_p.myscore- (player_hand_value-21)
	obj_shake.shake_magnitude = 10;
}
else if(ai_hand_value >21){
	obj_score_ai.myscore = obj_score_ai.myscore - (ai_hand_value-21)
	obj_score_ai.myscore -= player_hand_value
}

else if(player_hand_value>21){
	audio_play_sound(sound_takedamage,1,false)
	obj_shake.shake_magnitude = 10;
	obj_score_p.myscore = obj_score_p.myscore- (player_hand_value-21)
	obj_score_p.myscore -= ai_hand_value
}else{
	if(player_hand_value>ai_hand_value){
		obj_score_ai.myscore -= player_hand_value-ai_hand_value
	}else if(player_hand_value<ai_hand_value){
		audio_play_sound(sound_takedamage,1,false)
		obj_shake.shake_magnitude = 10;
		obj_score_p.myscore -= ai_hand_value-player_hand_value
	}
	
}

alarm[6] = room_speed *0.25
}


