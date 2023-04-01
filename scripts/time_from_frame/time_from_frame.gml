function time_from_frame(frame){
	return string_replace(string_format(frame div 3600,2,0)," ","0") + ":" + string_replace(string_format(floor(frame/60)%60,2,0)," ","0") +"."+ string_copy(string(frac(frame/60)),3,2)
}