/// @description Insert description here
// You can write your code in this editor

if(ds_list_size(cards)>0){
curCards = cards[|0]
	ds_list_add(ai_cards, curCards)
	ds_list_delete(cards,0)
	
	audio_play_sound(sound_deal,1,false)
	with(curCards){
		target_x = other.ai1_x
		target_y = other.ai1_y
		owner = 0;
	}
	ai1_x += 100
	ai_hand++
if(ai_hand<3)alarm[0] = room_speed *0.25

if(ai_hand ==3) alarm[1]= room_speed*0.25
}else{
	ds_list_shuffle(dealcards)
	card_y = 420
	alarm[7] = room_speed*0.25 
}
