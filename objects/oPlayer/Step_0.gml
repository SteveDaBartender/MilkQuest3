/// @description Insert description here
// You can write your code in this editor
if live_call() return live_result;
var carryZero = "";
if (!oPauseInGame.paused) global.levelTimer += (1 / 60);  
minutes = global.levelTimer div 60;  
seconds = global.levelTimer mod 60;  
if (string_length(round(seconds)) = 1) carryZero = "0";
displaymins = string_format(minutes, 2, 0);  
displaysecs = string_digits(string_format(seconds, 2, 0)); 
timeleft = global.levelTimer;
