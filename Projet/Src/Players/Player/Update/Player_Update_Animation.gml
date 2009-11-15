{
	//......................................................
	// Update Next State
	
	if(mOnLadder == true)
	{
		mNexState = 4;
	}
	else
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

		mCurrentState = mNextState;

		// Update sprite
		sprite_index = mSprites[ mCurrentState, (mLastDirection-1) ];
	}
}