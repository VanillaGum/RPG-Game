//string_split
//Splits Strings Based On A Delimiter
str = argument0;
delimiter = argument1;

var slot = 0;
var splits; //array to hold all splits
var str2 = ""; //var to hold the current split we're working on building

var i;
for (i = 1; i < (string_length(str)+1); i++) {
    var currStr = string_copy(str, i, 1);
    
    if (currStr == delimiter) { // Add String To Array
        splits[slot] = str2;
        slot++;
        str2 = ""; // Empty String To Hold Next String
    } else {
        str2 = str2 + currStr;
        splits[slot] = str2;
    }
}
return splits;
