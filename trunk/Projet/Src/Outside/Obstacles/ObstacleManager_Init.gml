{
	//
	mObstaclesSpeedA	= 3;
	mObstaclesSpeedB	= 0.1;

	mObstacleProbaA		= 30;
	mObstacleProbaB		= -10;

	mNbMaxObstacles		= 30;

	mNbSprites			= 11;
	mSprites[0]			= spr_Obstacle_01;
	mSprites[1]			= spr_Obstacle_02;
	mSprites[2]			= spr_Obstacle_03;
	mSprites[3]			= spr_Obstacle_04;
	mSprites[4]			= spr_Obstacle_05;
	mSprites[5]			= spr_Obstacle_06;
	mSprites[6]			= spr_Obstacle_07;
	mSprites[7]			= spr_Obstacle_08;
	mSprites[8]			= spr_Obstacle_09;
	mSprites[9]			= spr_Obstacle_10;
	mSprites[10]		= spr_Obstacle_11;

	mStartTimeAMin		= 10*room_speed;	// x*room_speed;	x in seconds
	mStartTimeAMax		= 10*room_speed;	// x*room_speed;	x in seconds
	mStartTimeB			= -0.2;

	mEndTimeAMin		= 30*room_speed;	// x*room_speed;	x in seconds
	mEndTimeAMax		= 40*room_speed;	// x*room_speed;	x in seconds
	mEndTimeB			= 0.2;



	mCurrentTime		= 0;
	mTimeMax			= mStartTimeAMax;

	mState				= 0;	// 0 : Wait;  1 : Lauch obstacles
}