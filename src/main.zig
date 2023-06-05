const std = @import("std");

pub fn main() anyerror!void {
    var gpa = std.heap.GeneralPurposeAllocator(.{}){};
    const allocator = gpa.allocator();
    var bios_dump_file = try std.fs.cwd().openFile(
        "data/GameCube BIOS Images/gc-dvd-20010608.bin", .{});
    defer bios_dump_file.close();

    const reader = bios_dump_file.reader();
    const data = reader.readAllAlloc(allocator, 10000000);
    
    std.log.info("read {any}", .{data});
}

test "basic test" {
    try std.testing.expectEqual(10, 3 + 7);
}
