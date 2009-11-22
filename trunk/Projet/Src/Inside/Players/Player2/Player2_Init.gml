{
	// Speed
	mWalkSpeed			= 4;
	mJumpSpeed			= 10;
	mFallSpeed			= 10;
	mClimbSpeed			= 2;
	mGravityCoef		= 0.5;

	// Keys
	mKeyRight			= ord('M');
	mKeyLeft			= ord('K');
	mKeyUp				= ord('O');
	mKeyDown			= ord('L');

	mKeyJump			= ord('N');
	mKeyAction			= ord('P');

	// Sprites
	mSprites[0, 0]		= spr_Player2_Idle_Right;
	mSprites[0, 1]		= spr_Player2_Idle_Left;

	mSprites[1, 0]		= spr_Player2_Walk_Right;
	mSprites[1, 1]		= spr_Player2_Walk_Left;

	mSprites[2, 0]		= spr_Player2_Jump_Right;
	mSprites[2, 1]		= spr_Player2_Jump_Left;

	mSprites[3, 0]		= spr_Player2_Fall_Right;
	mSprites[3, 1]		= spr_Player2_Fall_Left;

	mSprites[4, 0]		= spr_Player2_Ladder;
	mSprites[4, 1]		= spr_Player2_Ladder;

	mSprites[5, 0]		= spr_Player2_DoorIn_Right;
	mSprites[5, 1]		= spr_Player2_DoorIn_Left;

	mSprites[6, 0]		= spr_Player2_DoorOut_Right;
	mSprites[6, 1]		= spr_Player2_DoorOut_Left;

	// View
	mViewId				= 1;
}