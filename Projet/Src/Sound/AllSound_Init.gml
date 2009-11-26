{
	// Logo team
	
	// Introduction
	
	// Menu & Options
	
		//global.sd_HUD_Ok 			= sound_add ( "Datas/Sounds/SND__HUD__OK.wav", 0, true);
		global.sd_HUD_ok 			= sound_add ( "Datas/Sounds/SND__HUD__OK.wav", 0, true);

		global.sd_HUD_Select		= sound_add ( "Datas/Sounds/SND__HUD__SELECT.wav", 0, true);
		
			//sound_volume (global.sd_HUD_Ok, 0.8);
			sound_volume (global.sd_HUD_ok, 0.8);
	
	// Start game
	
		global.sd_Start_Game 		= sound_add ( "Datas/Sounds/MUSIC__START_GAME__FULL.wav", 3, true);
		
		global.sd_Take_Off 			= sound_add ( "Datas/Sounds/SND__EVENT__TAKEOFF.wav", 3, true);
	
	// Phases de jeu
	
	// DENOUEMENT
	
	// Perso : Déplacements
	
		global.sd_Ladder			= sound_add ( "Datas/Sounds/SND__ACTION__LADDER.wav", 0, true);
	
		global.sd_Ladder_Move1 		= sound_add ( "Datas/Sounds/SND__ACTION__LADDER_MOVE.wav", 0, true);
		
		global.sd_Ladder_Move2 		= sound_add ( "Datas/Sounds/SND__ACTION__LADDER_MOVE.wav", 0, true);
		
		global.sd_Jump	 			= sound_add ( "Datas/Sounds/SND__ACTION__JUMP.wav", 0, true);
		
		global.sd_Jump_Reception		= sound_add ( "Datas/Sounds/SND__ACTION__JUMP_RECEPTION.wav", 0, true);
		
	// Perso : Actions
	
		global.sd_Action_Pour		= sound_add ( "Datas/Sounds/SND__ACTION__POUR.wav", 3, true);
	
		global.sd_Action_WC			= sound_add ( "Datas/Sounds/SND__ACTION__WC.wav", 3, true);

		global.sd_Action_Pray		= sound_add ( "Datas/Sounds/SND__ACTION__PRAY.wav", 3, true);

		global.sd_Action_Maintenance	= sound_add ( "Datas/Sounds/SND__ACTION__MAINTENANCE.wav", 3, true);
	
	// Machines
	
	// Fusée
	
		global.sd_Fusee_Fire_1		= sound_add ( "Datas/Sounds/SND__WPN__FIRE1.wav", 0, true);
		
		global.sd_Fusee_Fire_2		= sound_add ( "Datas/Sounds/SND__WPN__FIRE2.wav", 0, true);
		
		global.sd_Fusee_Fire_3		= sound_add ( "Datas/Sounds/SND__WPN__FIRE3.wav", 0, true);
		
		global.sd_Fusee_Fire_4		= sound_add ( "Datas/Sounds/SND__WPN__FIRE4.wav", 0, true);
	
		global.sd_Fusee_Colli_1		= sound_add ( "Datas/Sounds/SND__EVENT__COLLISION_1.wav", 0, true);
		
		global.sd_Fusee_Colli_2		= sound_add ( "Datas/Sounds/SND__EVENT__COLLISION_2.wav", 0, true);
}