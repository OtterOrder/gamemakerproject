{
	// Init
	
	mPauseButton = vk_escape;
	
	mKeyUp		   = vk_up;
	mKeyDown	   = vk_down;
	mKeySelect	   = vk_enter;
	
	mQuit = false;
	
	mPaused = false;
	
	instance_create(0, 0, obj_PauseMenu_Fond);
	instance_deactivate_object(obj_PauseMenu_Fond);
	
	instance_create(700, 212, obj_PauseMenu_Reprendre);
	obj_PauseMenu_Reprendre.image_speed = 0;
	obj_PauseMenu_Reprendre.image_index = 1;
	instance_deactivate_object(obj_PauseMenu_Reprendre);
	
	instance_create(700, 262, obj_PauseMenu_Quitter);
	obj_PauseMenu_Quitter.image_speed = 0;
	instance_deactivate_object(obj_PauseMenu_Quitter);
	
	instance_create(0, 0, obj_PauseMenu_Manager);
	instance_deactivate_object(obj_PauseMenu_Manager);
	
}