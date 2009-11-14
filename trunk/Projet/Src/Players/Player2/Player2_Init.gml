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
	mLastDirection		= 2;	// Last real Direction

	// Keys
	mKeyRight			= ord('M');
	mKeyLeft			= ord('K');
	mKeyUp				= ord('O');
	
	mKeyAction			= ord('P');

	// Sprites
	mSprites[0, 0]		= spr_Player2_Idle;
	mSprites[0, 1]		= spr_Player2_Idle;
                
	mSprites[1, 0]		= spr_Player2_Walk_Right;
	mSprites[1, 1]		= spr_Player2_Walk_Left;
                
	mSprites[2, 0]		= spr_Player2_Jump_Right;
	mSprites[2, 1]		= spr_Player2_Jump_Left;
                
	mSprites[3, 0]		= spr_Player2_Fall_Right;
	mSprites[3, 1]		= spr_Player2_Fall_Left;
	
	// Machines
	mRepairSeed			= 0.6;

	// Init
	image_speed			= 0;
}