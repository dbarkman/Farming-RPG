///@description instance_create_crop
///@arg x
///@arg y
///@arg crop_type


var crop_instance = instance_create_layer(argument0, argument1, "Instances", object_crop);

with(crop_instance) {
	crop_type = argument2;
	growth_stage_duration = crops.ds_crops_types[# 0, crop_type];
	
}

return crop_instance;