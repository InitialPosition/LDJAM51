/// @description Jump

if other.active {
	other.active = false;
	yy = -other.force;
	other.alarm[0] = other.reactivationTime;
	jumping = false;
}
