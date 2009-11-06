{
	// Speed
	mWalkSpeed			= 4;
	mJumpSpeed			= 10;
	mFallSpeed			= 10;
	mGravity			= 0.5;

	// State
	mCurrentState		= 0;
	mNextState			= 0;

	// Direction
	mDirection			= 0;
	mPrevDirection		= 0;
	mLastDirection		= -1;	// Last real Direction

	// Keys
	mKeyRight			= vk_numpad6;
	mKeyLeft			= vk_numpad4;
	mKeyUp				= vk_numpad8;

	// Init
	image_speed			= 0;
}