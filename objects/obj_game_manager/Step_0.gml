/// @description Insert description here
// You can write your code in this editor




if(play){


if(wait_for_player ){
	
	if(player_hit){
			player_hit = false
			wait_for_player = false
			deal_cards = true
			alarm[1] = room_speed*0.25	
		
	}

	if (player_stand){
			
			player_stand =false
			deal_cards = false
			wait_for_player = false
			ai_deal_cards = true
			play = false
			alarm[4] = room_speed*1
		
	}
	
	

}
}

if(obj_score_ai.myscore <=0){
alarm[10] = room_speed*0.25
}else if (obj_score_p.myscore<=0){
alarm[2] = room_speed * 0.25
}

