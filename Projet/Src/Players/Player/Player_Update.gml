{
	execute_file(gSrcDirectory + "Players\Player\Update\" + "Player_Update_Direction.gml");
	execute_file(gSrcDirectory + "Players\Player\Update\" + "Player_Update_Displacement.gml");
	

	execute_file(gSrcDirectory + "Players\Player\Update\" + "Player_Update_Collisions.gml", mColliObj[0], true);
	execute_file(gSrcDirectory + "Players\Player\Update\" + "Player_Update_Collisions.gml", mColliObj[1], false);
	
	execute_file(gSrcDirectory + "Players\Player\Update\" + "Player_Update_NextState.gml");
}