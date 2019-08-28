event_inherited();
scr_create_hitbox(x,y,id)
hp=4;
mp_path = path_add();
dir_enemy = 1;
o = 0;
k =0;
seen_player = false;

start_x = x;
start_y = y;


ready_for_at = false;
coldown = false;

x_enemy_frame = 1; // кадры в spritesheet of character
y_enemy_frame = 8;

x_enemy_spr_offset = sprite_get_xoffset(mask_index) //для сдвига рамки коллизии (mask_index это спрайт маски)
y_enemy_spr_offset = sprite_get_yoffset(mask_index)



spr_enemy_base = spr_male_base_dark;
spr_enemy_torso1 = spr_male_torso_gold_chest_male;
spr_enemy_torso2 = spr_male_torso_gold_arms_male;
spr_enemy_torso3 = spr_male_torso_gold_spikes_male;
spr_enemy_legs = spr_male_legs_golden_greaves_male;
spr_enemy_feet = spr_male_feet_golden_boots_male;
spr_enemy_hair = spr_male_hair_bedheadt_pink;