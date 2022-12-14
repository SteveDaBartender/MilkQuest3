function sh_obj_list(args){
	var text = "All Objects";
	var step = 0;
	while (object_exists(step)) {
		text += ("\n"+string(step)+":"+object_get_name(step));
		step++;
	}
	return text;
}
function meta_obj_list() {
	return {
		description: "lists all objects",
		arguments: [""]
	}
}