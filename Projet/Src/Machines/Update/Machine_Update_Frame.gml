{
	// Crop Health
	if (mHealth < 0)
		mHealth = 0;
	else
	if (mHealth > 10)
		mHealth = 10;
	

	// Update frame
	image_index = mHealth;
}