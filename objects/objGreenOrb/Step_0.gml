/// @description Animation and logic

currentAnimationTime += hoverSpeed;

if currentAnimationTime > pi * 2 {
	currentAnimationTime = 0;
}

animationHeight = baseHeight + sin(currentAnimationTime);
