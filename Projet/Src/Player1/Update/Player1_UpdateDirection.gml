{
	mPrevDirection = mDirection;

	//......................................................
	// Update mDirection
	var Right, Left;

	Right = keyboard_check(mKeyRight);
	Left  = keyboard_check(mKeyLeft);

	mDirection = 0;
	if( Right || Left)
	{
		if (Right && Left)	// No Direction
			mDirection = 0;
		else if (Right)		// Right
		{
			mDirection = 1;
			mLastDirection = 1;
		}
		else				// Left
		{
			mDirection = -1;
			mLastDirection = 2;
		}
	}
}