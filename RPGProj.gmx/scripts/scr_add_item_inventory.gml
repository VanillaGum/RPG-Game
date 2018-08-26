///scr_add_item_inventory
//Adds Items To Inventory
var itemId = argument0;
var quantity = argument1;
/*
Revamping Code
-Issues With Current Code-
Currently item just replaces each other in inventory
-New Version Requirements-
[While Quantity Above 0
Add to different inventory slots, eg
Fill Slot 1, then fill Slot 2]
[Find Slot that has item first and fill that first]
*/
//Find If Item Exist In Invetory Already

//Check If Item Quantity Exceeds
while(quantity > 0) {
    
}
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
//This Will Be Moved to another script
//Get Item Name
var itemName = ds_grid_get(obj_items.item_grid,itemId,1)
//Get Item Max Quantity
var itemMaxQuantity = ds_grid_get(obj_items.item_grid,itemId,3)
//Get Item Sprite
//var itemSprite = ds_grid_get(obj_items.item_grid,itemId,3)
//Add Item Id
ds_grid_set(obj_player_inventory.item_inv, 1, empty_slot, real(itemId));
//Add Item Quantity
ds_grid_set(obj_player_inventory.item_inv, 2, empty_slot, real(quantity));
//Add Item Sprite Name (Testing Getting from item list instead)
//ds_grid_set(obj_player_inventory.item_inv, 4, empty_slot, itemSprite);

