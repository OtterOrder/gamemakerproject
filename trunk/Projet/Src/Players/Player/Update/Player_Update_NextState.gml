{
	//......................................................
	// Update NextState

	if( vspeed < 0 )
    {
        mNextState = 2;
    }
    else
    if( vspeed >= 0 && gravity != 0 )
    {
        mNextState = 3;
    }
    else
	if( hspeed != 0 )
	{
		mNextState = 1;
	}
	else
	{
		mNextState = 0;
	}
}