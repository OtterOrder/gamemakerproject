{
	if( mCurrentState == 4 )
		vspeed = 0;

	if( keyboard_check(mKeyUp))
	{
		mOnLadder = true;
		mPhysical = false;
		x = obj_Ladder.xstart;
		vspeed = -(mClimbSpeed);
		
		if(instance_place( x, y-sprite_height, obj_Ladder ) == noone)
		{
			mPhysical = true;
			mOnLadder = false;
		}
	}
		
	if( keyboard_check(mKeyDown) )
	{
		mOnLadder = true;
		mPhysical = false;
		x = obj_Ladder.xstart;
		vspeed = (mClimbSpeed);
		
		if(instance_place( x, y+sprite_height, obj_Ladder ) == noone)
		{
			mPhysical = true;
			mOnLadder = false;
		}
	}
}