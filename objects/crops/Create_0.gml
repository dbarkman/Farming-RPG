ds_crops_types = 0;

enum crop {
	tomato, potato, carrot, artichoke, chilli, gourd, corn
}

create_crop_type(4, 40); //tomato
create_crop_type(3, 35); //potato
create_crop_type(2, 25); //carrot
create_crop_type(4, 45); //artichoke
create_crop_type(3, 30); //chilli
create_crop_type(2, 20); //gourd
create_crop_type(5, 50); //corn

planting = false;
select_crop = 0;

mx = 0;
my = 0;