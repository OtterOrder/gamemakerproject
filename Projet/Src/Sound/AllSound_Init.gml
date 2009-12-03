{
	// Logo team
	
	// Introduction
	
	// Menu & Options
	
		global.sd_HUD_Ok 			= sound_add ( "Datas/Sounds/SND__HUD__OK.wav", 0, true);

		global.sd_HUD_Select		= sound_add ( "Datas/Sounds/SND__HUD__SELECT.wav", 0, true);
	
	// Start game
	
		global.sd_Start_Game 		= sound_add ( "Datas/Sounds/MUSIC__START_GAME__FULL.wav", 3, true);
		
		global.sd_Take_Off 			= sound_add ( "Datas/Sounds/SND__EVENT__TAKEOFF.wav", 3, true);
	
	// Phases de jeu
	
	// DENOUEMENT
		
		global.sd_End1				= sound_add ( "Datas/Sounds/MUSIC__END_1.wav", 3, true);
		sound_volume(global.sd_End1, 1 );
		
		global.sd_End2				= sound_add ( "Datas/Sounds/MUSIC__END_2.wav", 3, true);
		sound_volume(global.sd_End2, 1 );
	
	// Perso : Déplacements
	
		global.sd_Ladder			= sound_add ( "Datas/Sounds/SND__ACTION__LADDER.wav", 0, true);
		sound_volume(global.sd_Ladder, 0.9 );
	
		global.sd_Ladder_Move1 		= sound_add ( "Datas/Sounds/SND__ACTION__LADDER_MOVE.wav", 0, true);
		sound_volume(global.sd_Ladder_Move1, 0.9 );
		
		global.sd_Ladder_Move2 		= sound_add ( "Datas/Sounds/SND__ACTION__LADDER_MOVE.wav", 0, true);
		sound_volume(global.sd_Ladder_Move2, 0.9 );
		
		global.sd_Jump	 			= sound_add ( "Datas/Sounds/SND__ACTION__JUMP.wav", 0, true);
		sound_volume(global.sd_Jump, 0.9 );
		
		global.sd_Jump_Reception	= sound_add ( "Datas/Sounds/SND__ACTION__JUMP_RECEPTION.wav", 0, true);
		sound_volume(global.sd_Jump_Reception, 0.9 );
		
	// Perso : Actions
	
		global.sd_Action_Drop  		= sound_add ( "Datas/Sounds/SND__ACTION__DROP.wav", 0, true);
		sound_volume(global.sd_Action_Drop, 0.9 );
		
		global.sd_Action_Catch 		= sound_add ( "Datas/Sounds/SND__ACTION__CATCH.wav", 0, true);
		sound_volume(global.sd_Action_Catch, 0.9 );
	
		global.sd_Action_Pour		= sound_add ( "Datas/Sounds/SND__ACTION__POUR.wav", 3, true);
		sound_volume(global.sd_Action_Pour, 0.9 );
	
		global.sd_Action_WC			= sound_add ( "Datas/Sounds/SND__ACTION__WC.wav", 0, true);
		sound_volume(global.sd_Action_WC	, 0.9 );

		global.sd_Action_Pray		= sound_add ( "Datas/Sounds/SND__ACTION__PRAY.wav", 0, true);
		sound_volume(global.sd_Action_Pray, 0.9 );

		global.sd_Action_Maintenance	= sound_add ( "Datas/Sounds/SND__ACTION__MAINTENANCE.wav", 3, true);
		sound_volume(global.sd_Action_Maintenance, 0.9 );
	
	// Machines
	
	// Fusée
	
		global.sd_Fusee_Hit_1		= sound_add ( "Datas/Sounds/SND__WPN__HIT1.wav", 0, true);
		sound_volume(global.sd_Fusee_Hit_1, 0.9 );
		
		global.sd_Fusee_Hit_2		= sound_add ( "Datas/Sounds/SND__WPN__HIT2.wav", 0, true);
		sound_volume(global.sd_Fusee_Hit_2, 0.9 );
	
		global.sd_Fusee_Fire_1		= sound_add ( "Datas/Sounds/SND__WPN__FIRE1.wav", 0, true);
		sound_volume(global.sd_Fusee_Fire_1, 0.9 );
		
		global.sd_Fusee_Fire_2		= sound_add ( "Datas/Sounds/SND__WPN__FIRE2.wav", 0, true);
		sound_volume(global.sd_Fusee_Fire_2, 0.9 );
		
		global.sd_Fusee_Fire_3		= sound_add ( "Datas/Sounds/SND__WPN__FIRE3.wav", 0, true);
		sound_volume(global.sd_Fusee_Fire_3, 0.9 );
		
		global.sd_Fusee_Fire_4		= sound_add ( "Datas/Sounds/SND__WPN__FIRE4.wav", 0, true);
		sound_volume(global.sd_Fusee_Fire_4, 0.9 );
	
		global.sd_Fusee_Colli_1		= sound_add ( "Datas/Sounds/SND__EVENT__COLLISION_1.wav", 0, true);
		sound_volume(global.sd_Fusee_Colli_1, 0.9 );
		
		global.sd_Fusee_Colli_2		= sound_add ( "Datas/Sounds/SND__EVENT__COLLISION_2.wav", 0, true);
		sound_volume(global.sd_Fusee_Colli_2, 0.9 );

	// Ambiances (ne pas modifier les sons)
	
		global.sd_Ambiance_Rocket_Room	= sound_add ( "Datas/Sounds/AMBIANCE__ROCKET_ROOM.wav", 0, true);
		
		global.sd_Ambiance_Temple		= sound_add ( "Datas/Sounds/AMBIANCE__TEMPLE.wav", 0, true);
		
		global.sd_Ambiance_Cockpit		= sound_add ( "Datas/Sounds/AMBIANCE__COCKPIT.wav", 0, true);
		
		global.sd_Ambiance_Engine_Room	= sound_add ( "Datas/Sounds/AMBIANCE__ENGINE_ROOM.wav", 0, true);


}