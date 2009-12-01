{
	//
	mHealthMax			= 120;
	mHealth				= mHealthMax;
	mHealthBonus		= 100;

	mDamageA			= 1/room_speed;	// Damages = A + B*time
	mDamageB			= 0.15/room_speed;

	mRepairHealthMax	= mHealthMax;

	// Objects
	mNbNeededObj		= 2;

	mNeededObj[0]		= 1;
	mNeededObj[1]		= 2;

	mRepairSpeed[0]		= 80;
	mRepairSpeed[1]		= 40;

	mEngineSpeedMax		= 4;
	mEngineSpeedMin 	= 0;

	// Depth
	mPlayerDepth		= 6;

	//Added Damages
	mNbAddedDamages		= 2;

	mPipeHealth[0]		= 0;
	mPipeHealth[1]		= 50;

	mAddedDamages[0]	= 2/room_speed;
	mAddedDamages[1]	= 1/room_speed;

	// Init
	image_speed			= 0;
}