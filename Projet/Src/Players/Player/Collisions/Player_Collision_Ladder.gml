{
	mCurrentState = 4;
	if( keyboard_check(mKeyUp))
		vspeed = -(mClimbSpeed);
		
	if( keyboard_check(mKeyDown))
		vspeed = (mClimbSpeed);
}