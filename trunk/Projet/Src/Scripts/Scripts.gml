#define scr_Player_Update
{
    room_caption = string(fps);

    script_execute( scr_Player_Update_Init );

    script_execute( scr_Player_Update_Direction );
    script_execute( scr_Player_Update_Displacement );
}
#define scr_Player_Update_End
{
    script_execute( scr_Player_Update_NextState );

    script_execute( scr_Player_Update_Collisions, mColliObj[0], true);
    script_execute( scr_Player_Update_Collisions, mColliObj[1], false);

    script_execute( scr_Player_Update_Animation );
}
#define scr_Player_Update_Init
{
    mPrevDirection = mDirection;

    mNextState = 0;
    mDirection = 0;
    
    mPhysical = true;
}
#define scr_Player_Update_Direction
{
    //......................................................
    // Update Direction
    var Right, Left;

    Right	= keyboard_check(mKeyRight);
    Left	= keyboard_check(mKeyLeft);

    mDirection = 0;
    if( Right || Left)
    {
        if (Right && Left)      // No Direction
            mDirection = 0;
        else if (Right)         // Right
        {
            mDirection = 1;
            mLastDirection = 1;
        }
        else                    // Left
        {
            mDirection = -1;
            mLastDirection = 2;
        }
    }
}
#define scr_Player_Update_Displacement
{
    //......................................................
    // Update Displacement

    mHSpeed = mWalkSpeed * mDirection;

    if( keyboard_check(mKeyJump) && (mCurrentState == 0 || mCurrentState == 1) )
    {
        mVSpeed = -(mJumpSpeed);
    }

    if( mVSpeed > mFallSpeed )
    {
        mVSpeed = mFallSpeed;
    }

    // Keep object in room
    if( x < 0)
        x = 0;
    else
    if( x > room_width - sprite_width )
        x = room_width - sprite_width;

    if( y < 0)
        y = 0;
    else
    if( y > room_height - sprite_height )
        y = room_height - sprite_height;
}
#define scr_Player_Update_NextState
{
    //......................................................
    // Update NextState
    if ( mNextState >= 4 )
        return 0;

    if( mVSpeed < 0 )
    {
        mNextState = 2;
    }
    else
    if( mVSpeed >= 0 && mGravity != 0 )
    {
        mNextState = 3;
    }
    else
    if( mHSpeed != 0 )
    {
        mNextState = 1;
    }
    else
    {
        mNextState = 0;
    }
}
#define scr_Player_Update_Animation
{
    //......................................................
    // Update Current State
    x += mHSpeed;
    mVSpeed += mGravity;
    y += mVSpeed;

    if( mCurrentState != mNextState || mDirection != mPrevDirection )
    {
        if(mCurrentState != 4)
        {
            image_speed = 1;
            image_index = 0;
        }
        else
        {
            image_speed = mDirection;
        }

        mCurrentState = mNextState;

        // Update sprite
        sprite_index = mSprites[ mCurrentState, (mLastDirection-1) ];
    }
}
#define scr_Player_Update_Collisions
{
    //......................................................
    // Update Physique
    var Gravity;
    Gravity = 0;

    if( mPhysical )
    {
        var ColliObj;

        // Vertical
        ColliObj = instance_place( x, y+mVSpeed, argument[0] );

        if( ColliObj != noone )	// If collision with ground
        {
            if( mVSpeed < 0 )			// If go up
            {
                y = ColliObj.bbox_bottom + ( sprite_get_yoffset(sprite_index) - sprite_get_bbox_top(sprite_index)) +1;
            }
            else						// If go down
            {
                y = ColliObj.bbox_top + ( sprite_get_yoffset(sprite_index) - sprite_get_bbox_bottom(sprite_index)) -1;

                Gravity = 0;				// Stop Gravity
            }

            mVSpeed = 0;						// Stop movement
        }

        if( instance_place( x, y+1, argument[0] ) == noone )		// If in air
            Gravity = mGravityCoef;			// Start Gravity

        // Horizontal
        ColliObj = instance_place( x+mHSpeed, y, argument[0] );

        if( ColliObj != noone )	// If collision with ground
        {
            if( mHSpeed < 0 )			// If go left
            {
                x = ColliObj.bbox_right + ( sprite_get_xoffset(sprite_index) - sprite_get_bbox_left(sprite_index)) +1;
            }
            else						// If go right
            {
                x = ColliObj.bbox_left + ( sprite_get_xoffset(sprite_index) - sprite_get_bbox_right(sprite_index)) -1;
            }

            mHSpeed = 0;						// Stop movement
        }
    }
    else
    {
        Gravity = 0;
    }

    if( argument[1] )
    {
        mGravity = Gravity;
    }
}
#define scr_Player_Collision_Machine
{
    if( keyboard_check_pressed(mKeyAction) )
        (instance_place( x, y, obj_Machine )).mHealth += mRepairSpeed;
}
#define scr_Player_Collision_Ladder
{
    //......................................................
    // Update Ladder management
    var CurrentLadder, GroundBlock;
    CurrentLadder   = instance_place( x, y, obj_Ladder );
    GroundBlock     = instance_place( x, y, obj_Ground );

    if( mDirection == 0 || GroundBlock != noone )
    {
        if( mCurrentState == 4 )
        {
            mDirection = 0;
            mNextState = 4;
        }

        var Up, Down;
        Up      = keyboard_check(mKeyUp);
        Down    = keyboard_check(mKeyDown)

        if( Up ^^ Down )
        {
            if( Up )
                mDirection = -1;
            else
                mDirection = 1;

            mNextState = 4;

            if( GroundBlock == noone )
            {
                if( mDirection == -1 )
                {
                    if( CurrentLadder.bbox_top >= (bbox_top - mClimbSpeed -1) &&
                        instance_position( CurrentLadder.x, CurrentLadder.bbox_top -1, obj_Ladder) == noone )
                    {
                        mNextState = 0;
                        mDirection = 0;
                    }
                }
                else
                if( mDirection == 1 )
                {
                    if( CurrentLadder.bbox_bottom <= (bbox_bottom + mClimbSpeed +1) &&
                        instance_position( CurrentLadder.x, CurrentLadder.bbox_bottom +1, obj_Ladder) == noone )
                    {
                        mNextState = 0;
                        mDirection = 0;
                    }
                }
            }
        }
    }

    if( mNextState == 4)
    {
        x = CurrentLadder.x + sprite_xoffset;

        mOnLadder = true;
        mPhysical = false;

        mHSpeed = 0;
        mVSpeed = mDirection * mClimbSpeed;
    }
    else
    {
        mPhysical = true;
        mOnLadder = false;
    }
}
#define scr_Machine_Update
{
    mHealth -= mDamageSpeed;

    // Crop Health
    if (mHealth < 0)
        mHealth = 0;
    else
    if (mHealth > 10)
        mHealth = 10;

    // Update frame
    image_index = mHealth;
}
