## dwmblocks
Modular status bar for dwm written in c.

## Modifying Blocks
The statusbar is made from text output from commandline programs.
Blocks are added and removed by editing the config.h header file.

## This fork
This fork tries to adhere to the suckless way of specifying configuration.
The defaults have also been replaced with ones that should work out of the box.
The original fork (at the time of forking) can always be found in the branch "orig-backup".

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
