{

	mSound[0] = global.sd_Ambiance_Cockpit;
	sound_play(mSound[0]);
	sound_volume (mSound[0], 0);
	
	mSound[1] = global.sd_Ambiance_Temple;
	sound_play(mSound[1]);
	sound_volume (mSound[1], 0);
	
	mSound[2] = global.sd_Ambiance_Engine_Room;
	sound_play(mSound[2]);
	sound_volume (mSound[2], 0);
	
	mSound[3] = global.sd_Ambiance_Rocket_Room;
    sound_play(mSound[3]);
	sound_volume (mSound[3], 0);

	
	mNbSources = 4;
	
	mSources[0] = obj_Source_Cockpit;
	mSources[1] = obj_Source_Temple;
	mSources[2] = obj_Source_Engine;
	mSources[3] = obj_Source_Rocket;
}
