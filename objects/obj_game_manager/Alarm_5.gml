/// @description endround
// You can write your code in this editor
if(end_i<6){
burn_card = battle_cards[|end_i]
if(burn_card != noone){
burn(burn_card, burncard_y)
ds_list_add(burn_cards, burn_card)
burn_card.deal = false
burncard_y -= 2
end_i++
}
if(end_i<6)
alarm[5]= room_speed*0.25
}

if(end_i ==5){
	alarm[6] = room_speed*1
}