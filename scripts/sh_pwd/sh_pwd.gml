function sh_pwd (args) {
	return string(working_directory)
}
function meta_pwd(){
	return {
		description: "Prints the \"Working Directory\"."
	}
}