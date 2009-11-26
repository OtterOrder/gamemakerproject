{
	//
	mHealthMax			= 100;
	mHealth				= mHealthMax;

	mDamageA			= 1/room_speed;	// Damages = A + B*time
	mDamageB			= 0.2/room_speed;
	mCollisionDamage	= 5;

	mRepairSpeed		= 5;
	mRepairHealthMax	= mHealthMax;

	mNeededObj			= -1;

	// Init
	image_speed			= 0;
}