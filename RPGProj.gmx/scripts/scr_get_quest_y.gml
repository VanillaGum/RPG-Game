var value = argument0;
var grid_height = ds_grid_height(obj_quest.quest_grid);
for(i=0; i < grid_height; i++) {
    var grid_val = ds_grid_get(obj_quest.quest_grid,0,i);
    if (grid_val == value) {
        return i;
    }
}
