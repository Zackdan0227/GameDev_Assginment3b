/// @description Insert description here
// You can write your code in this editor



if(facedown){
		sprite_index = spr_card_back	
	}else{
		if( card_type ==0){
			sprite_index  = spr_rock;	
		}else if (card_type ==1){
			sprite_index = spr_paper	
		}else {
			sprite_index = spr_sicsor	
		}
		
	}

	if(target_x >0 and target_y >0)	{
		x = lerp(x, target_x, 0.2)
		y = lerp(y, target_y, 0.2)
	}
