/// @description Insert description here
// You can write your code in this editor



if(facedown){
		sprite_index = spr_card_back	
	}else{
		switch(card_type){
			case 0:
				sprite_index = spr_A
				value = 1
				break;
			case 1:
				sprite_index = spr_2
				value = 2
				break;
			case 2: 
				sprite_index = spr_3
				value = 3
				break;
			case 3:
				sprite_index = spr_4
				value = 4
				break;
			case 4:
				sprite_index = spr_5
				value = 5
				break;
			case 5:
				sprite_index = spr_6
				value = 6
				break;
			case 6:
				sprite_index = spr_7
				value = 7
				break;
			case 7:
				sprite_index = spr_8
				value = 8
				break;
			case 8:
				sprite_index = spr_9
				value = 9
				break;
			case 9:
				sprite_index = spr_10
				value = 10
				break;
			case 10:
				sprite_index = spr_J
				value = 10
				break;
			case 11:
				sprite_index = spr_Q
				value = 10
				break;
			case 12:
				sprite_index = spr_K
				value = 10
				break;
		}
		
	}

	if(target_x >0 and target_y >0)	{
		x = lerp(x, target_x, 0.2)
		y = lerp(y, target_y, 0.2)
	}
