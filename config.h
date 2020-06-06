//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/
	{"MEM: ", "free -h | awk '/^Mem/ { print $3\"/\"$2 }' | sed s/i//g",30,0},

	{"VOL: ", "amixer sget Master | egrep -e \"[1-9]+[0-9]?[0-9]?\%\" -o | head -n1",0,10},

	{"BRT: ", "xbacklight | sed 's/\\..*//'",0,11},
	
	{"TEMP: ", "sensors | awk '/^temp1:/{print $2}'",5,0},

	{"WIFI: ", "$SCRIPT_DIR/wifi.sh",30,0},

	{"", "date \"+%a %d %b %Y %H:%M:%S\"",1,0}
};

//sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char delim = '|';
