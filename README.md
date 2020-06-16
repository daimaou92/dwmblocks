## dwmblocks
Modular status bar for dwm written in c.

## Modifying Blocks
The statusbar is made from text output from commandline programs.
Blocks are added and removed by editing the config.h header file.

## This fork
This fork tries to adhere to the suckless way of specifying configuration.
The defaults have also been replaced with ones that should work out of the box.
The original fork (at the time of forking) can always be found in the branch "orig-backup".

Exclusive stuff:

1. Spaced separator
2. A new branch "ignore-empty". This essentialy hides a block that has empty or no output. Merged into my "release" branch
3. New blocks are periodically added removed as I change the way i use it in the release branch. Adviced to maintain your own branch for one-liner blocks you want to keep using
4. `export DWMBLOCKS_SCRIPTS_DIR="some directory"` before dwmblocks is launched. This is to use my release branch directly. Otherwise export whatever else you want to use - just modify config.h accordingly.

## SIGNALS
dwmblocks can receive update events called signals for each block. These signal numbers need to be pre-configured in the config.h file.
As an example - if you want to update the volume on keypress please configure your handler to pass on one of the following commands along with raising or lowering the volume

```bash
pkill -RTMIN+10 dwmblocks
```
or

```bash
kill -44 $(pidof dwmblocks)
# Add 34 to the pre-configured signal for the block in config.h
# When dwmblocks is not running -  $(pidof dwmblocks) will not return anything,
# causing this command to exit with a non-zero value.
# Be mindful if you're chaining with `&&`
```

If you look at the default config.h (config.def.h), volume block has been pre-configured with the signal 10 - as used above.
