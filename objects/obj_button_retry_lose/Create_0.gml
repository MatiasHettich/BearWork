// Inherit the parent event
event_inherited();

text = "Retry"

action = {
	_type : button_actions.retry_game,
	_room_target : rm_game,
	_type_out : sq_fadeout,
	_type_in : sq_fadein
}