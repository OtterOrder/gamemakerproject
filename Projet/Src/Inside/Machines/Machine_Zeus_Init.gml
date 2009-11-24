{
	//
	mHealthMax			= 100;
	mHealth				= mHealthMax;

	mDamageA			= 1/room_speed;	// Damages = A + B*time
	mDamageB			= 0.2/room_speed;

	mShootDamage		= 10;

	mRepairSpeed		= 1;
	mRepairHealthMax	= mHealthMax;

	mNeededObj			= -1;

	// Init
	image_speed			= 0;
}