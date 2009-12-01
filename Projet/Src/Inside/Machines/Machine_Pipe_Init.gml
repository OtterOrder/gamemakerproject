{
	//
	mHealthMax			= 100;
	mHealth				= mHealthMax;

	mDamageA			= 0.4/room_speed;	// Damages = A + B*time
	mDamageB			= 0.05/room_speed;
	mCollisionDamage	= 5;

	mRepairHealthMax	= mHealthMax;

	// Objects
	mNbNeededObj		= 0;
	mRepairSpeed		= 2;

	// Depth
	mPlayerDepth		= 14;

	// Init
	image_speed			= 0;
}