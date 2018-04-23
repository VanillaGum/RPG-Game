///scr_add_item_inventory
//Adds Items To Inventory
var itemId = argument0;
var quantity = argument1;
//Find If Item Exist

//Check If Item Quantity Exceeds

//Else 
//Find Empty Slots
var empty_slot = -1;
var i;
for(i=0;i < obj_player_inventory.size;i++) {
    compare = ds_grid_get(obj_player_inventory.item_inv,0,i)
    if (compare == -1) {
        empty_slot = i;
        i = obj_player_inventory.size;
    }    
}
if (empty_slot == -1) {
    return 0;
}
//Get Item Name
ds_grid_get(obj_items.item_grid,itemId,1)
//Get Item Max Quantity
ds_grid_get(obj_items.item_grid,itemId,3)
//Add Item Id
ds_grid_add(obj_player_inventory.item_inv, 1, empty_slot, real(itemId));
//Add Item Quantity
ds_grid_add(obj_player_inventory.item_inv, 2, empty_slot, real(quantity));


