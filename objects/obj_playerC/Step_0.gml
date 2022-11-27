/// @description Insert description here
// You can write your code in this editor
var walking = false;
var s = 10;


if(keyboard_check(ord("W"))){
	y = y - s;
	walking = true;
}
if(keyboard_check(ord("S"))){
	y = y + s;
	walking = true;
}

if(keyboard_check(ord("A"))){
	x = x - s;
	walking = true;
}

if(keyboard_check(ord("D"))){
	x = x + s;
	walking = true;
}


depth = -y;

