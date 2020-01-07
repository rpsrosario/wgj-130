/// @description Setup Projectile Launcher

event_inherited();

launcher_direction = 0;
projectile_type = noone;

delay = irandom(LAUNCHER_MAX_DELAY);
link = id;
