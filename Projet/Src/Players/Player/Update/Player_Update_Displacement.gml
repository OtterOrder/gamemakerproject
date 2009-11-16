{
	//......................................................
	// Update Displacement

	hspeed = mWalkSpeed * mDirection;

	if( keyboard_check(mKeyJump) && (mCurrentState == 0 || mCurrentState == 1) )
	{
        vspeed = -(mJumpSpeed);
	}

	if( vspeed > mFallSpeed )
	{
		vspeed = mFallSpeed;
	}

	// Keep object in room
    if( x < 0)
        x = 0;
    else
    if( x > room_width - sprite_width )
        x = room_width - sprite_width;

    if( y < 0)
        y = 0;
    else
    if( y > room_height - sprite_height )
        y = room_height - sprite_height;
}