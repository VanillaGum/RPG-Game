///scr_add_rewards
//Adds Rewards Based On Quest Id
var quest_id = argument0;
//var grid_y = ds_grid_value_y(obj_quest.quest_grid, 0, 0, 0, ds_grid_height(obj_quest.quest_grid), quest_id) // Get Y value based on QuestID
var grid_y = scr_get_quest_y(quest_id);
var reward_string = ds_grid_get(obj_quest.quest_grid, 8, grid_y);
reward_queue = ds_queue_create();
scr_reward_decode(reward_string,);

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
        scr_add_item_inventory(itemId, quantity);
        no = 0;
    }
}
ds_queue_destroy(reward_queue);

