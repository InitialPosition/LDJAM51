/// @description Handle fading

if fadingIn {
	if a < 1 {
		a += fadeSpeed;
	} else {
		a = 1;
	}
} else {
	if a > 0 {
		a -= fadeSpeed;
	} else {
		instance_destroy();
	}
}
