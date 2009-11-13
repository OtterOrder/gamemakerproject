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
	mLastDirection		= 1;	// Last real Direction

	// Keys
	mKeyRight			= ord('D');
	mKeyLeft			= ord('Q');
	mKeyUp				= ord('Z');
	
	mKeyAction			= ord('E');
	
	// Machines
	mRepairSeed			= 0.6;

	// Init
	image_speed			= 0;
}