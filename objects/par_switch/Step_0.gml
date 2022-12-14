///@description Do not touch this

// Switch disable if layer is not visible
if (!layer_get_visible(layer)) {visible = false}

// Change button state (hovering mouse fix)
if (position_meeting(mouse_x, mouse_y, id) and enable)
{
	switch(value)
	{
		case true:
			state = switch_states.active_on
			break
			
		case false:
			state = switch_states.active_off
			break
	}
}

else
{
	switch(value)
	{
		case true:
			state = switch_states.idle_on
			break
			
		case false:
			state = switch_states.idle_off
			break
	}
}

// Set switch sprite according state
if (visible)
	switch(state)
	{
		case switch_states.idle_on:
			sprite_index = switch_sprites.idle_on
			break
			
		case switch_states.idle_off:
			sprite_index = switch_sprites.idle_off
			break
			
		case switch_states.active_on:
			if (!global.mid_transition)
				sprite_index = switch_sprites.active_on
			break
			
		case switch_states.active_off:
			if (!global.mid_transition)
				sprite_index = switch_sprites.active_off
			break
			
		default:
			sprite_index = switch_sprites.idle_on
			break
	}