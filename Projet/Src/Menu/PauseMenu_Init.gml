{
	// Init
	
	mPauseButton = vk_space;
	
	mPaused = false;
	
	instance_create(0, 0, obj_PauseMenu_Fond);
	instance_deactivate_object(obj_PauseMenu_Fond);
}