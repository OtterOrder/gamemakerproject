{
	//......................................................
	// Update Ladder management

	if( mNextState != 1 )
	{
		if( mCurrentState == 4 )
		{
			mDirection = 0;
			mNextState = 4;
		}

		if( keyboard_check(mKeyUp) && instance_place( x, y-sprite_height, obj_Ladder ) != noone)
		{
			mDirection = -1;
			mNextState = 4;
		}
	
		if( keyboard_check(mKeyDown) && instance_place( x, y+sprite_height, obj_Ladder ) != noone)
		{
			mDirection = 1;
			mNextState = 4;
		}
	}
	
	if( mNextState == 4)
	{
		x = obj_Ladder.xstart;

		mOnLadder = true;
		mPhysical = false;

		hspeed = 0;
		vspeed = mDirection * mClimbSpeed;
	}
	else
	{
		mPhysical = true;
		mOnLadder = false;
	}
}