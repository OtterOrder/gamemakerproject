{
	//......................................................
	// Update Physique

	if( mPhysical )
	{
		var GroundBlock;

		// Current position
		GroundBlock = instance_place( x, y, obj_Ground );
		
		if( GroundBlock != noone )	// If collision with ground
		{
			gravity = mGravity;
		}
		else
		{
			// Vertical
			GroundBlock = instance_place( x, y+vspeed, obj_Ground );

			if( GroundBlock != noone )	// If collision with ground
			{
				if( vspeed < 0 )			// If go up
				{
					y = GroundBlock.bbox_bottom + ( sprite_get_yoffset(sprite_index) - sprite_get_bbox_top(sprite_index)) +1;
				}
				else						// If go down
				{
					y = GroundBlock.bbox_top + ( sprite_get_yoffset(sprite_index) - sprite_get_bbox_bottom(sprite_index)) -1;

					gravity = 0;				// Stop gravity
				}

				vspeed = 0;						// Stop movement
			}

			{
				if( instance_place( x, y+1, obj_Ground ) == noone )		// If in air
					gravity = mGravity;			// Start gravity
			}


			// Horizontal
			GroundBlock = instance_place( x+hspeed, y, obj_Ground );

			if( GroundBlock != noone )	// If collision with ground
			{
				if( hspeed < 0 )			// If go left
				{
					x = GroundBlock.bbox_right + ( sprite_get_xoffset(sprite_index) - sprite_get_bbox_left(sprite_index)) +1;
				}
				else						// If go right
				{
					x = GroundBlock.bbox_left + ( sprite_get_xoffset(sprite_index) - sprite_get_bbox_right(sprite_index)) -1;
				}

				hspeed = 0;						// Stop movement
			}
		}
	}
	else
	{
		gravity = 0;
	}
}