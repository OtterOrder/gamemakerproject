{
	// Speed
	mWalkSpeed			= 5;
	mJumpSpeed			= 10;
	mFallSpeed			= 10;
	mClimbSpeed			= 4;
	mGravityCoef		= 1;

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

	mSprites[7, 0]		= spr_Player2_HandleObject_Right;
	mSprites[7, 1]		= spr_Player2_HandleObject_Left;


	mMachineSprites[0]	= spr_Player2_Zeus;			// Zeus
	mMachineSprites[1]	= spr_Player2_Pipes;		// Pipes
	mMachineSprites[2]	= spr_Player2_Engine_Right;	// Engine Right
	mMachineSprites[3]	= spr_Player2_Engine_Left;	// Engine Left
	mMachineSprites[4]	= spr_Player2_Rudder;		// Rudder

	// View
	mViewId				= 1;

	// Depth
	mDepth				= 11;
}