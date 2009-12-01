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

	// Init
	image_speed			= 0;
}