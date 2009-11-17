{
	//......................................................
	// Update Ladder management
	var CurrentLadder, GroundBlock;
	CurrentLadder	= instance_place( x, y, obj_Ladder );
	GroundBlock		= instance_place( x, y, obj_Ground );

	if( mDirection == 0 || GroundBlock != noone )
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

			mNextState = 4;

			if( GroundBlock == noone )
			{
				if( mDirection == -1 )
				{
					if( CurrentLadder.bbox_top > bbox_top &&
						instance_position( CurrentLadder.x, CurrentLadder.bbox_top -1, obj_Ladder) == noone )
					{
						mNextState = 0;
						mDirection = 0;
					}
				}
				else
				if( mDirection == 1 )
				{
					if( CurrentLadder.bbox_bottom < bbox_bottom &&
						instance_position( CurrentLadder.x, CurrentLadder.bbox_bottom +1, obj_Ladder) == noone )
					{
						mNextState = 0;
						mDirection = 0;
					}
				}
			}
		}
	}

	if( mNextState == 4)
	{
		x = CurrentLadder.x + sprite_xoffset;

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