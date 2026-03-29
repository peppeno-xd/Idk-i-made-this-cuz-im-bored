function cobj(xc = 0, yc = 0, step_event_c =@'
	x += random_range(-1, 1)
	y += random_range(-1, 1)
', persistent_c = false, visible_c = true)
{
	var CC_custom_obj = instance_create(xc, yc, obj_custom_object);
	
	with (CC_custom_obj)
	{
		step_event = step_event_c;
		persistent = persistent_c;
		visible = visible_c;
	}
}

function load_gml_file(filename)
{
	var _CCoutput = ""
	if file_exists(filename)
	{
		var _file = buffer_load(filename)
		if buffer_get_size(_file) > 0
			_CCoutput = buffer_read(_file, buffer_string)
		buffer_delete(_file); 
	}
	return _CCoutput
}

function shake(_intensityorsum = 1)
{
	return x + random_range(_intensityorsum, -_intensityorsum), y + random_range(_intensityorsum, -_intensityorsum)
}

function new_sprite(_name,  _link, _extension, _speed = 50)
{
	http_get_file(_link, "sprites/" + _name + _extension)
	var CCsprite = sprite_add("sprites/" + _name + _extension, 0, 0, 0, 50, 50)
	sprite_set_speed(global.sprite, _speed, 0)
    return CCsprite
}
// Credits to YoyleGateto||Lucy for pointing out that im stupid


// Down here is testing
/*
global.help = new_sprite("testing hell 1234", "https://static.wikia.nocookie.net/pizzatower/images/b/b9/Spr_titlepep_forward_0.png/revision/latest?cb=20230218210231", ".png")

with (obj_player)
	spr_idle = global.CCsprite
*\
