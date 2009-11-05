{
	//......................................................
	// Update Next State
	if( hspeed != 0 )
	{
		mNextState = 1;
	}
	else
	{
		mNextState = 0;
	}

	//......................................................
	// Update Current State
	var CurrentSprite;
	CurrentSprite = 0;

	if( mCurrentState != mNextState || mDirection != mPrevDirection )
	{
		image_speed = 1;
		image_index = 0;

		switch( mNextState )
		{
			case 0:		// Idle
					switch( mLastDirection )
					{
						case 1:
							CurrentSprite = spr_Player1_Idle;
							break;
						
						case 2:
							CurrentSprite = spr_Player1_Idle;
							break;
					}
					image_speed = 0;
					
					mCurrentState = 0;
					break;
					
			case 1:		// Walking
					switch( mLastDirection )
					{
						case 1:
							CurrentSprite = spr_Player1_Walk_Right;
							break;
						
						case 2:
							CurrentSprite = spr_Player1_Walk_Left;
							break;
					}
					mCurrentState = 1;
					break;
		}
		
		if( CurrentSprite != sprite_index )
			sprite_index = CurrentSprite;
	}
}