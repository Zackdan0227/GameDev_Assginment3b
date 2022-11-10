/// @description replace
// You can write your code in this editor
if(replace_i< ds_list_size(cards)){
card_shuff =cards[|replace_i]
if(card_shuff!=noone){
	audio_play_sound(sound_deal,1,false)
card_shuff.target_x = 80
card_shuff.target_y = card_y
card_shuff.facedown = true
}
card_y+=5
replace_i++
if(replace_i<24){
alarm[8] = room_speed*0.05}
}

if(replace_i == ds_list_size(cards)){

alarm[0] = room_speed*0.2
}