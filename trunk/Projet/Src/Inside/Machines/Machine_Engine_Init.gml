{
	//
	mHealthMax			= 120;
	mHealth				= mHealthMax;
	mHealthBonus		= 100;

	mDamageA			= 0.02;	// Damages = A + B*time
	mDamageB			= 0;

	mRepairHealthMax	= mHealthMax;

	// Objects
	mNbNeededObj		= 2;

	mNeededObj[0]		= 1;
	mNeededObj[1]		= 2;

	mRepairSpeed[0]		= 90;
	mRepairSpeed[1]		= 45;

	mEngineSpeedMax		= 4;
	mEngineSpeedMin 	= 0;

	// Init
	image_speed			= 0;
}