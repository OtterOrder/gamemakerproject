{
	//
	mHealthMax			= 100;
	mHealth				= mHealthMax;

	mDamageA			= 0.2/room_speed;	// Damages = A + B*time
	mDamageB			= 0/room_speed;

	mRepairSpeed		= 6;
	mRepairHealthMax	= mHealthMax;

	mNeededObj			= -1;

	// Init
	image_speed			= 0;
}