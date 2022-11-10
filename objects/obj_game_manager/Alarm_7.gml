/// @description restart
// You can write your code in this editor
if(restart_i< 24){
card_shuff = burn_cards[|restart_i]
if(card_shuff!=noone){
	audio_play_sound(sound_deal,1,false)
card_shuff.target_x = 80
card_shuff.target_y = card_y
card_shuff.facedown = true
card_shuff.card_type = dealcards[|restart_i]
ds_list_add(cards, card_shuff)

card_y-=5
}
restart_i++
if(restart_i<23)alarm[7] = room_speed*0.05
}

if(restart_i == 23){
	card_shuff = burn_cards[|restart_i]
if(card_shuff!=noone){
	audio_play_sound(sound_deal,1,false)
card_shuff.target_x = 80
card_shuff.target_y = card_y
card_shuff.facedown = true
card_shuff.card_type = dealcards[|restart_i]
ds_list_add(cards, card_shuff)

card_y-=5
}
	ds_list_clear(burn_cards)
replace_i = 0
card_y = 300
alarm[8] = room_speed*0.05
}

