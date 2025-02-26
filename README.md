# microzig-blinky
Working microzig blinky for RP Pico 2 with rp2350

Quite similar to the example at https://microzig.tech/

Derived from [source](https://github.com/ZigEmbeddedGroup/microzig/tree/main/examples/raspberrypi/rp2xxx) examples to target `raspberrypi.pico2_arm`

### Usage
- git clone this repo
- zig fetch
- zig build
- Flash zig-out/firmware/pico2_blinky.uf2

> [!NOTE]
> [build](build.zig.zon) is pinned to recent microzig commit to avoid #389