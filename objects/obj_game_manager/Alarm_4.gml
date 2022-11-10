/// @description play game
// You can write your code in this editor

ai_sprite = -1;
p_sprite = -1;
if(ai_chose_card!=-1 and p_chose_card !=-1){
	with(ai_chose_card){
		if(facedown) {facedown = false}
		if( card_type ==0){
			other.ai_sprite  = spr_rock;	
		}else if (card_type ==1){
			other.ai_sprite = spr_paper	
		}else {
			other.ai_sprite = spr_sicsor	
		}
	}
	
	with(p_chose_card){
		other.p_sprite =  sprite_index
	}
}



show_debug_message(p_sprite)
show_debug_message(ai_sprite)
switch(p_sprite){
	case spr_paper:	
		if(ai_sprite == spr_paper){
			break;
		}else if (ai_sprite == spr_sicsor){
			audio_play_sound(sound_lost,1,false)
			obj_score_ai.myscore ++;
			break;
		}else if (ai_sprite == spr_rock){
			audio_play_sound(sound_correct,1,false)
			obj_score_p.myscore++
			break;
		}
		case spr_sicsor:	
		if(ai_sprite == spr_paper){
			audio_play_sound(sound_correct,1,false)
			obj_score_p.myscore++
			break;
		}else if (ai_sprite == spr_sicsor){
			
			break;
		}else if (ai_sprite == spr_rock){
			audio_play_sound(sound_lost,1,false)
			obj_score_ai.myscore ++;
			break;}
		
		case spr_rock:	
		if(ai_sprite == spr_paper){
			audio_play_sound(sound_lost,1,false)
			
			obj_score_ai.myscore ++;
			break;
		}else if (ai_sprite == spr_sicsor){
			audio_play_sound(sound_correct,1,false)
			obj_score_p.myscore++
			break;
		}else if (ai_sprite == spr_rock){
			break;
		}
	
}
ds_list_add(battle_cards, ai_chose_card)
ds_list_add(battle_cards, p_chose_card);

for(i=0; i<3; i++){
	if(ai_cards[|i] != ai_chose_card){
ds_list_add(battle_cards, ai_cards[|i])	}
}
for(i=0; i<3; i++){
	if(player_cards[|i] != p_chose_card){
ds_list_add(battle_cards, player_cards[|i])	}
}

end_i = 0;

for(i = 0; i<ds_list_size(battle_cards); i++){
	dep--
	burn_card = battle_cards[|i]
	with(burn_card){
		if(facedown){
			facedown = false	
		}
		depth = other.dep
	}
}



alarm[5] = room_speed*1