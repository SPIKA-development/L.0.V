var cpm1 = collision_platform(x, y+1, vspeed)

gravity = (cpm1 ? 0 : 0.132);   //player jump
vspeed = (cpm1 ? 0 : vspeed);

if ( keyboard_check_pressed(vk_space)&&cpm1) { //player jumping
	vspeed = -1.4;
	jc = true;
}
if ( keyboard_check(vk_space) && jc) {
	if ( abs(vspeed) >= 3.8 ) { jc = false; }
	vspeed -= 0.4;
}
if ( keyboard_check_released(vk_space)) {
	jc = false;
}

if collision_platform(x, y, vspeed){y -= 1}

if ( keyboard_check(vk_left) ) {                   //player move
	x -= (collision_platform(x+1, y, vspeed) ? 0 : 3)
}
if ( keyboard_check(vk_right) ) {
	x += (collision_platform(x-1, y, vspeed) ? 0 : 3)
}

if ( keyboard_check_pressed(vk_f1) ) {
	game_restart()
}
if ( keyboard_check_pressed(vk_f2) ) {
	ChangePlatform()
}
