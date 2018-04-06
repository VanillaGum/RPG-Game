///scr_move_item
//For When User Moves A Item Into A Empty Slot
var sloty = argument0; //Current Slot
var newsloty = argument1; //New Slot

var i;
for (i=0; i < 3; i++) {
ds_grid_add(obj_player_inventory.item_inv, i, newsloty, ds_grid_get(obj_player_inventory.item_inv, i, sloty)); 
ds_grid_set(obj_player_inventory.item_inv, i, sloty, -1); // Clear Copied Grid Value
}
