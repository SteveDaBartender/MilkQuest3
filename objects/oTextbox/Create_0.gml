//This textbox is copied from DTRPG. 
//wil be used for story cutscenes.
icon = sBox;
text = "[no text defined.]";
script = dDefault;
boxWidth = sprite_get_width(sTextbox);
stringHeight = string_height(text);
page = 0;
charCount = 0;
textSpeed = 1;
x = oCamera.x;
y = oCamera.y;
yv = -13;
fade =false;
global.gameLock = true;
global.character.hsp = 0;
global.character.vsp = 0;
offset = -50;
getInput();