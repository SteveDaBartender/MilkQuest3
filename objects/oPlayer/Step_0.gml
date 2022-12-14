/// @description Insert description here
// You can write your code in this editor
var carryZero = "";
global.levelTimer += (1 / room_speed);  
minutes = global.levelTimer div 60;  
seconds = global.levelTimer mod 60;  
if (string_length(round(seconds)) = 1) carryZero = "0";
displaymins = string_format(minutes, 2, 0);  
displaysecs = string_digits(string_format(seconds, 2, 0)); 

if (global.levelTimer mod 60 == 0) timeleft += 1;