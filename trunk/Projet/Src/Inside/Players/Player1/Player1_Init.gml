{
	// Speed
	mWalkSpeed			= 5;
	mJumpSpeed			= 10;
	mFallSpeed			= 10;
	mClimbSpeed			= 4;
	mGravityCoef		= 1;

	// Keys
	mKeyRight			= ord('D');
	mKeyLeft			= ord('Q');
	mKeyUp				= ord('Z');
	mKeyDown			= ord('S');

	mKeyJump			= vk_lcontrol;
	mKeyAction			= ord('E');

	// Sprites
	mSprites[0, 0]		= spr_Player1_Idle_Right;
	mSprites[0, 1]		= spr_Player1_Idle_Left;

	mSprites[1, 0]		= spr_Player1_Walk_Right;
	mSprites[1, 1]		= spr_Player1_Walk_Left;

	mSprites[2, 0]		= spr_Player1_Jump_Right;
	mSprites[2, 1]		= spr_Player1_Jump_Left;

	mSprites[3, 0]		= spr_Player1_Fall_Right;
	mSprites[3, 1]		= spr_Player1_Fall_Left;

	mSprites[4, 0]		= spr_Player1_Ladder;
	mSprites[4, 1]		= spr_Player1_Ladder;

	mSprites[5, 0]		= spr_Player1_DoorIn_Right;
	mSprites[5, 1]		= spr_Player1_DoorIn_Left;

	mSprites[6, 0]		= spr_Player1_DoorOut_Right;
	mSprites[6, 1]		= spr_Player1_DoorOut_Left;

	mSprites[7, 0]		= spr_Player1_HandleObject_Right;
	mSprites[7, 1]		= spr_Player1_HandleObject_Left;


	mMachineSprites[0]	= spr_Player1_Zeus;			// Zeus
	mMachineSprites[1]	= spr_Player1_Pipes;		// Pipes
	mMachineSprites[2]	= spr_Player1_Engine_Right;	// Engine Right
	mMachineSprites[3]	= spr_Player1_Engine_Left;	// Engine Left
	mMachineSprites[4]	= spr_Player1_Rudder;		// Rudder

	// View
	mViewId				= 0;

	// Depth
	mDepth				= 10;
}