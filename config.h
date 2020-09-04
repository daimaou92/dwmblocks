//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/
	{" ", "$DWMBLOCKS_SCRIPTS_DIR/has_updates.sh",120,0},

	{"", "$DWMBLOCKS_SCRIPTS_DIR/wttr.sh",1800,0},

	{"🧠 ", "free -h | awk '/^Mem/ { print $3\"/\"$2 }' | sed s/i//g",30,0},

	{"", "$DWMBLOCKS_SCRIPTS_DIR/volume.sh",0,10},

	{"🔆 ", "echo \"$(xbacklight -get)%\"" ,0,11},
	
	{"🌡 ", "sensors | awk '/^temp1:/{print $2}'",5,0},

	// {"📶 ", "$DWMBLOCKS_SCRIPTS_DIR/wifi.sh",30,0},

	{"🔋 ", "echo \"$(cat /sys/class/power_supply/BAT0/capacity)% [$(cat /sys/class/power_supply/BAT0/status)]\"",2,0},

	{"", "date \"+%a %d %b %Y %H:%M:%S\"",1,0}
};

//sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char delim = '|';
