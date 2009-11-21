{
	//
	mObstaclesSpeed		= 3;
	mObstacleProba		= 1;
	mNbMaxObstacles		= 30;

	mNbSprites			= 3;
	mSprites[0]			= spr_Obstacle_01;
	mSprites[1]			= spr_Obstacle_02;
	mSprites[2]			= spr_Obstacle_03;

	mStartTimeMin		= 10*room_speed;	// x*room_speed;	x in seconds
	mStartTimeMax		= 10*room_speed;	// x*room_speed;	x in seconds

	mEndTimeMin			= 30*room_speed;	// x*room_speed;	x in seconds
	mEndTimeMax			= 40*room_speed;	// x*room_speed;	x in seconds

	mCurrentTime		= 0;
	mTimeMax			= mStartTimeMax;

	mState				= 0;	// 0 : Wait;  1 : Lauch obstacles
}