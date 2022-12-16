if live_call() return live_result;
draw_sprite(sCharacterBlock,0,x,y)

draw_sprite(sCharacterBlockIcons,0,x+7,y+9)
if (global.unlockConehead) draw_sprite(sCharacterBlockIcons,1,x+25,y+5)
if (global.unlockKid) draw_sprite(sCharacterBlockIcons,2,x+43,y+9)