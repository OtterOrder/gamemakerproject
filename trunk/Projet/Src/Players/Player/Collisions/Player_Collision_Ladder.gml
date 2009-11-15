{
	//......................................................
	// Update Ladder management

	if( mNextState != 1 || instance_place( x, y, obj_Ground ) != noone )
	{
		if( mCurrentState == 4 )
		{
			mDirection = 0;
			mNextState = 4;
		}

		var Up, Down;
		Up		= keyboard_check(mKeyUp);
		Down	= keyboard_check(mKeyDown)

		if( Up ^^ Down )
		{
			if( Up )
				mDirection = -1;
			else
				mDirection = 1;
		
			if( instance_place( x, y + mDirection*sprite_height, obj_Ladder ) != noone )
				mNextState = 4;
			else
			{
				mNextState = 0;
				mDirection = 0;
			}
		}
	}
	
	if( mNextState == 4)
	{
		x = instance_place( x, y, obj_Ladder ).x;

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