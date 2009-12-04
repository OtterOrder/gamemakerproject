{
	//
	mHealthMax			= 120;
	mHealth				= mHealthMax;
	mHealthBonus		= 100;

	mDamageA			= 0.8/room_speed;	// Damages = A + B*time
	mDamageB			= 0.1/room_speed;

	mCollisionDamage	= 3;

	mRepairHealthMax	= mHealthMax;

	// Objects
	mNbNeededObj		= 2;

	mNeededObj[0]		= 1;
	mNeededObj[1]		= 2;

	mRepairSpeed[0]		= 80;
	mRepairSpeed[1]		= 40;

	mEngineSpeedMax		= 3;
	mEngineSpeedMin 	= 0.5;

	// Depth
	mPlayerDepth		= 8;

	//Added Damages
	mNbAddedDamages		= 2;

	mPipeHealth[0]		= 0;
	mPipeHealth[1]		= 50;

	mAddedDamages[0]	= 2/room_speed;
	mAddedDamages[1]	= 1/room_speed;

	// Init
	image_speed			= 0;
}