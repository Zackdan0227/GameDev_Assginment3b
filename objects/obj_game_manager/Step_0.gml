/// @description Insert description here
// You can write your code in this editor



if(ai_decision != -1 and ai_play){
	if(aidealsound){
		audio_play_sound(sound_deal,1,false)	
		aidealsound = false;
	}
	ai_choice = ai_cards[|ai_decision]
	if(ai_choice!=noone){
		ai_chose_card = ai_choice
		
	with(ai_choice){
			target_x = other.ai_chose_x
			target_y= other.ai_chose_y
	}
	}
}
if(play){
for(i = 0; i< ds_list_size(player_cards); i++){
	playerCard = player_cards[|i]
	if(playerCard != noone){
	with(playerCard){
		if(facedown){
		facedown = false;
		
		}
	}
	}
}
if(wait_for_player and mouse_check_button_pressed(mb_left)){
	
	card_inst = instance_position(mouse_x,mouse_y, obj_card)
	
	if(card_inst != noone){
		if(card_inst.deal){
		p_chose_card = card_inst
		audio_play_sound(sound_deal,1,false)
		with(card_inst){
			target_x = other.p_chose_x
			target_y = other.p_chose_y
		}
		play = false
		wait_for_player = false
	}	
	}
	
	alarm[4] = room_speed*1
}
}