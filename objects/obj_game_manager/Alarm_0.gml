/// @description deal AI
// You can write your code in this editor
if(ai_deal_cards){
ai_hand++
curCards = cards[|0]
if(ai_hand >=2){
	curCards.facedown = false
}

	ai_hand_value += curCards.cardValue
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
			ai_deal_cards = false
			alarm[1] = room_speed*0.25
	}
}

if(ai_hand_value<=16){
if(ai_hand <5 and ai_hand_value <21){
	
	alarm[0] = room_speed*0.25	
}

}
if(ai_hand ==5 || ai_hand_value >16){
	ai_deal_cards = false
	alarm[5] = room_speed*1.5
}