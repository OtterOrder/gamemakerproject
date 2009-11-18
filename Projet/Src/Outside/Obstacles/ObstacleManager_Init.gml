{
	//
	mObstaclesSpeed		= 2;
	mObstacleProba		= 20;
	mNbMaxObstacles		= 20;

	mNbSprites			= 3;
	mSprites[0]			= spr_Obstacle_01;
	mSprites[1]			= spr_Obstacle_02;
	mSprites[2]			= spr_Obstacle_03;

	mStartTimeMin		= 30*room_speed;	// x*room_speed;	x in seconds
	mStartTimeMax		= 40*room_speed;	// x*room_speed;	x in seconds

	mEndTimeMin			= 15*room_speed;	// x*room_speed;	x in seconds
	mEndTimeMax			= 20*room_speed;	// x*room_speed;	x in seconds

	mCurrentTime		= 0;
	mTimeMax			= mStartTimeMax;

	mState				= 0;	// 0 : Wait;  1 : Lauch obstacles
}