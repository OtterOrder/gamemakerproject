{
	//......................................................
	// Update Current State

	if( mCurrentState != mNextState || mDirection != mPrevDirection )
	{
		if(mCurrentState != 4)
		{
			image_speed = 1;
			image_index = 0;
		}
		else
		{
			image_speed = mDirection;
		}

		mCurrentState = mNextState;

		// Update sprite
		sprite_index = mSprites[ mCurrentState, (mLastDirection-1) ];
	}
}