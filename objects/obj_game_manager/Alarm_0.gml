/// @description deal AI
// You can write your code in this editor
if(deal_cards){
ai_hand++
curCards = cards[|0]
if(ai_hand >=2){
	curCards.facedown = false	
}
	ds_list_add(ai_cards, curCards)
	ds_list_delete(cards,0)
	
	audio_play_sound(sound_deal,1,false)
	with(curCards){
		target_x = other.ai1_x
		target_y = other.ai1_y
		owner = 0;
	}
	ai1_x += 50
	if(ai_hand == 2){
			alarm[1] = room_speed*0.25
	}
}

