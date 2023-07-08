/// @description Cam init

cam = view_camera[0];

follow = oBoss;
viewWidthHalf	= RESOLUTION_W * 0.5//camera_get_view_width(cam) * 0.5;
viewHeightHalf	= RESOLUTION_H * 0.5//camera_get_view_height(cam) * 0.5;
xTo = xstart;
yTo = ystart;

shakeLength		= 0;
shakeMagnitude	= 0;
shakeRemain		= 0;
