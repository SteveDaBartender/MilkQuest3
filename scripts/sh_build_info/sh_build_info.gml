function sh_build_info (args) {
	var osType = "Unknown Target"
	switch os_type {
		case os_windows: osType = "Windows"; break;
		case os_macosx: osType = "Mac OS X"; break;
		case os_linux: osType = "Linux"; break;
		case os_operagx: osType = "Opera GX"; break;
		case os_uwp: osType = "Universal Windows Platform"; break;
		case os_ios: osType = "iOS"; break;
		case os_tvos: osType = "Apple tvOS"; break;
		case os_android: osType = "Android"; break;
		case os_ps3: osType = "Playstation 3 (how??)"; break;
		case os_ps4: osType = "Playstation 4"; break;
		case os_ps5: osType = "Playstation 5"; break;
		case os_psvita: osType = "Playstation Vita (why would you do that)"; break;
		case os_xboxone: osType = "Xbox One"; break;
		case os_xboxseriesxs: osType = "Xbox Series X/S"; break;
		case os_switch: osType = "Nintendo Switch (lmao every indie game is on switch)"; break;
		case os_unknown:
			switch os_browser {
				case browser_ie: osType = "Internet Explorer"; break;
				case browser_ie_mobile: osType = "Internet Explorer... on mobile???"; break;
				case browser_firefox: osType = "Firefox"; break;
				case browser_chrome: osType = "Chrome"; break;
				case browser_safari: osType = "Safari"; break;
				case browser_opera: osType = "Opera"; break;
				case browser_tizen: osType = "Tizen Mobile Browser (what even is this)"; break;
				case browser_safari_mobile: osType = "Safari Mobile"; break;
				case browser_windows_store: osType = "Windows Store"; break;
				case browser_unknown: osType = "Browser (Unknown)"; break;
				case browser_not_a_browser: osType = "Unknown Target"; break;
			}
			break;
		
	}
	return "Build Date:  " + date_date_string(GM_build_date) + "\nBuild Time: " +date_time_string(GM_build_date)+ "\nBuild Target: "+osType+"\nRuntime Version " + GM_runtime_version
}
function meta_build_info() {
	return {
		description: "gets info of current build",
		arguments: [""]
	}
}