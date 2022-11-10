/// @description Insert description here
// You can write your code in this editor
randomize()
play = false
deal = false
ai1_x = 200
ai1_y = 150
dealcards = ds_list_create()
p1_x = 200
p1_y = 580
wait_for_player = false
faceup_cards = ds_list_create()
num_cards = 24
ai_hand = 0;
p_hand = 0;
ai_cards = ds_list_create()
player_cards = ds_list_create()
battle_cards = ds_list_create()
ai_decision = -1
ai_play = true
ai_chose_x = 300
ai_chose_y = 300;
p_chose_x = 300
p_chose_y = 450
ai_chose_card = -1
p_chose_card = -1
cards = ds_list_create()
card_y = 300
dep = 0
burn_cards = ds_list_create()
for(i=0; i< num_cards; i++){
n = i%3;

ds_list_add(dealcards, n)
}
ds_list_shuffle(dealcards)
for(i=0; i< num_cards; i++){
card_inst = instance_create_layer( 80 , card_y, "Instances", obj_card)
card_inst.card_type = dealcards[|i];

ds_list_add(cards, card_inst)
card_y +=5
}

burncard_y = 440
//AI
	
	deal = true
	curCards = cards[|0]
	ds_list_add(ai_cards, curCards)
	ds_list_delete(cards,0)
	
	with(curCards){
		target_x = other.ai1_x
		target_y = other.ai1_y
		owner = 0;
	}
	ai1_x += 100
	ai_hand ++
	
	alarm[0] = room_speed *0.25	
	
//player

aidealsound = true
