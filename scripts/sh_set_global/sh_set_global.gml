function sh_set_global (args) {
	if (global.sv_cheats) {
		if (variable_global_exists(args[1])) {
			if (args[2] != "" && args[2]) {
				variable_global_set(args[1],args[2]);
				return args[1] + " set to " + args[2]
			} else return variable_global_get(args[1]);
		} else return "Variable doesn't exist."
	} else return "Please Enable Cheats."
}
function meta_set_global(){
	if live_call() return live_result;
	return {
		description: "Sets global variable to specified value. Inputing no value returns the variable's current value.",
		arguments: ["variable","value"],
	}
}