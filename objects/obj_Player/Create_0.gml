/// @description Insert description here
// You can write your code in this editor

pl_runSpeed = 15;
pl_walkSpeed = 5;
pl_speed = pl_walkSpeed;

pl_stamina = 60;

x_frame = 1; // кадры в spritesheet of character
y_frame = 8;

x_spr_offset = sprite_get_xoffset(mask_index) //для сдвига рамки коллизии (mask_index это спрайт маски)
y_spr_offset = sprite_get_yoffset(mask_index)

spr_base = spr_male_base_dark;
spr_torso1 = spr_male_torso_gold_chest_male;
spr_torso2 = spr_male_torso_gold_arms_male;
spr_torso3 = spr_male_torso_gold_spikes_male;
spr_legs = spr_male_legs_golden_greaves_male;
spr_feet = spr_male_feet_golden_boots_male;
spr_hair = spr_male_hair_bedheadt_pink2;