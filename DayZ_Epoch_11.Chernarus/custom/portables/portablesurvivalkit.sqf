(FindDisplay 106) closeDisplay 1;
systemChat("You have a complete survival kit in your toolbelt but you loose the backpack ");

removeBackpack player;  
player playActionNow "Medic";
player addWeapon "ItemKnife";
player addWeapon "ItemMatchbox";
player addWeapon "ItemMachete";
player addWeapon "ItemHatchet";
player addWeapon "Binocular";
player addWeapon "ItemMatchbox";
player addWeapon "ItemFishingPole";







