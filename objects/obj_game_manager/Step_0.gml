/// @description Insert description here
// You can write your code in this editor




if(play){


if(wait_for_player and mouse_check_button_pressed(mb_left)){
	
	if(obj_hit_button.player_hit){
			obj_hit_button.player_hit =false
			wait_for_player =false
			deal_cards = true
			alarm[1] = room_speed*0.5
			
	}else if (obj_stand_button.player_stand){
			obj_stand_button.player_stand =false
			deal_cards = false
			wait_for_player = false
			ai_deal_cards = true
			alarm[4] = room_speed*1
	}
	
	

}
}