///scr_rewards_decode
//Decodes reward string from obj_quest's ds_grid
//Returns array with item id and quantity
encoded_string = argument0; //Gets Encoded String

//Split By Comma(",") First
var split = string_split(encoded_string , ","); 
//Split By Multiplier Next(Amt Of The Item)
var length = array_length_1d(split); // Get Split 1's Length
var split2; // For Holding The 2nd Split Up
var rtnSplit = ds_queue_create(); // Return the decoded rewards

var i;
for(i=0; i < length; i++) {
    split2 = string_split(split[i], "x");
    //split2 is a array of [0] = Item id, [1] = Item Quantity    
    ds_queue_enqueue(rtnSplit, split2[0]); // Add Item Id To Queue
    ds_queue_enqueue(rtnSplit, split2[1]); // Add Item Quantity To Queue
}
return rtnSplit;
