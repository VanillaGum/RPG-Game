///scr_add_rewards
//Adds Rewards Based On Quest Id
var quest_id = argument0;
var grid = obj_quest.quest_grid;
var grid_y = ds_grid_value_y(grid, 0, 0, 0, ds_grid_height(grid), quest_id) // Get Y value based on QuestID
var reward_string = ds_grid_get(grid, 7, grid_y);
var reward_queue = scr_reward_decode(reward_string);

var i;
var no = 0;
var itemId = -1;
for (i=0; i < ds_queue_size(reward_queue); i++) {
    if (no == 0) {
        //Item Id Is At Head Of Queue
        itemId = ds_queue_dequeue(reward_queue);
        no++;
    }else {
        var quantity = ds_queue_dequeue(reward_queue);
        scr_add_item_inventory(itemId, quanttiy);
        no = 0;
    }
}
