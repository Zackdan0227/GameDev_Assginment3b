/// @description Insert description here
// You can write your code in this editor
curCards = cards[|0]
	ds_list_add(player_cards, curCards)
	ds_list_delete(cards,0)
	audio_play_sound(sound_deal,1,false)
	with(curCards){
		target_x = other.p1_x
		target_y = other.p1_y
		owner = 0;
		deal = true;
	}
	p1_x += 100
	p_hand ++
	
	if(p_hand <3) alarm[1] = room_speed*0.25
	if(p_hand = 3) alarm [2] = room_speed*1