function sh_room_list(args){
	var text = "All Rooms";
	var step = 0;
	while (room_exists(step)) {
		text += ("\n"+string(step)+":"+room_get_name(step));
		step++;
	}
	return text;
}
function meta_room_list() {
	return {
		description: "lists all rooms",
		arguments: [""]
	}
}