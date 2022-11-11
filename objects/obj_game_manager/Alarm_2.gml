/// @description AI decision
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