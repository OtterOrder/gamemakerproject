{
	//......................................................
	// Update Displacement
	var XDisplacement;
	XDisplacement = mHSpeed*mDirection;

	if (place_free(x + XDisplacement, y))
	{
		hspeed = XDisplacement;
	}
}