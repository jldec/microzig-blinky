// derived from
// https://github.com/ZigEmbeddedGroup/microzig/blob/main/examples/raspberrypi/rp2xxx/build.zig

const std = @import("std");
const microzig = @import("microzig");

const MicroBuild = microzig.MicroBuild(.{
    .rp2xxx = true,
});

pub fn build(b: *std.Build) void {
    const optimize = b.standardOptimizeOption(.{});

    const mz_dep = b.dependency("microzig", .{});
    const mb = MicroBuild.init(b, mz_dep) orelse return;
    const firmware = mb.add_firmware(.{
        .name = "pico2_blinky",
        .target = mb.ports.rp2xxx.boards.raspberrypi.pico2_arm,
        .optimize = optimize,
        .root_source_file = b.path("src/main.zig"),
    });

    // Install firmware as in the original build.zig
    mb.install_firmware(firmware, .{});

    // For debugging, also install as ELF
    mb.install_firmware(firmware, .{ .format = .elf });
}
