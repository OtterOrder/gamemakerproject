{
	//
	mHealthMax			= 100;
	mHealth				= mHealthMax;

	mDamageA			= 1/room_speed;	// Damages = A + B*time
	mDamageB			= 0.2/room_speed;
	mCollisionDamage	= 5;

	mRepairHealthMax	= mHealthMax;

	// Objects
	mNbNeededObj		= 0;
	mRepairSpeed		= 5;

	// Depth
	mPlayerDepth		= 14;

	// Init
	image_speed			= 0;
}