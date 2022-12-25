function generate_mqmc_code() {
	if live_call() return live_result;
	var str = "1"
	str += string(global.head)
	str += string(global.body)
	str += "3"
	str += string(global.arm)
	str += string(global.leg)
	str += "7"
	str += string(global.intro)
	var timeTemp = clamp(ceil(global.besttime),1,3600)
	if (timeTemp = 999999) timeTemp = 0;
	str += string(timeTemp)
	str = base_convert(str,10,32)
	//show_debug_message(base_convert(str,32,10))
	str = "MC" + str
	return str
	
}