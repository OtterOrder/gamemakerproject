{
	if( keyboard_check_pressed(mKeyAction) )
		(instance_place( x, y, obj_Machine )).mHealth += mRepairSpeed;
}