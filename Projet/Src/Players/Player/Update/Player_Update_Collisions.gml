{
	//......................................................
	// Update Physique
	var Gravity;
	Gravity = 0;

	if( mPhysical )
	{
		var ColliObj;

		// Vertical
		ColliObj = instance_place( x, y+vspeed, argument[0] );

		if( ColliObj != noone )	// If collision with ground
		{
			if( vspeed < 0 )			// If go up
			{
				y = ColliObj.bbox_bottom + ( sprite_get_yoffset(sprite_index) - sprite_get_bbox_top(sprite_index)) +1;
			}
			else						// If go down
			{
				y = ColliObj.bbox_top + ( sprite_get_yoffset(sprite_index) - sprite_get_bbox_bottom(sprite_index)) -1;

				Gravity = 0;				// Stop Gravity
			}

			vspeed = 0;						// Stop movement
		}

		{
			if( instance_place( x, y+1, argument[0] ) == noone )		// If in air
				Gravity = mGravity;			// Start Gravity
		}


		// Horizontal
		ColliObj = instance_place( x+hspeed, y, argument[0] );

		if( ColliObj != noone )	// If collision with ground
		{
			if( hspeed < 0 )			// If go left
			{
				x = ColliObj.bbox_right + ( sprite_get_xoffset(sprite_index) - sprite_get_bbox_left(sprite_index)) +1;
			}
			else						// If go right
			{
				x = ColliObj.bbox_left + ( sprite_get_xoffset(sprite_index) - sprite_get_bbox_right(sprite_index)) -1;
			}

			hspeed = 0;						// Stop movement
		}
	}
	else
	{
		Gravity = 0;
	}
	
	if( argument[1] )
	{
		gravity = Gravity;
	}
}