{
	//......................................................
	// Update Next State
	if( vspeed < 0 )
    {
        mNextState = 2;
    }
    else
    if( vspeed >= 0 && gravity != 0 )
    {
        mNextState = 3;
    }
    else
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

			case 2:     // Jumping
					switch( mLastDirection )
					{
						case 1:
							CurrentSprite = spr_Player1_Jump_Right;
							break;
						
						case 2:
							CurrentSprite = spr_Player1_Jump_Left;
							break;
					}

					mCurrentState = 2;
					break;
					
			case 3:     // Falling
					switch( mLastDirection )
					{
						case 1:
							CurrentSprite = spr_Player1_Fall_Right;
							break;
						
						case 2:
							CurrentSprite = spr_Player1_Fall_Left;
							break;
					}

					mCurrentState = 3;
					break;
		}
		
		if( CurrentSprite != sprite_index )
			sprite_index = CurrentSprite;
	}
}