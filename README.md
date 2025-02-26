# microzig-blinky
Working microzig blinky for Pico 2 - rp2350  
Derived from [source](https://github.com/ZigEmbeddedGroup/microzig/tree/main/examples/raspberrypi/rp2xxx) examples to target `raspberrypi.pico2_arm`  
Quite similar to the example at https://microzig.tech/

### usage
- git clone this repo
- `zig fetch .`
- `zig build`
- Flash the pico2 with zig-out/firmware/pico2_blinky.uf2

### note
[build.zig.zon](build.zig.zon) is pinned to recent microzig commit to avoid ZigEmbeddedGroup/microzig#389
