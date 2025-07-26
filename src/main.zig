const c = @cImport({
    @cInclude("raylib.h");
    @cInclude("raymath.h");
});

pub fn main() !void {
    c.InitWindow(1280, 720, "Hola Catalina");
    defer c.CloseWindow();

    while (!c.WindowShouldClose()) {
        c.BeginDrawing();
        defer c.EndDrawing();

        c.ClearBackground(c.SKYBLUE);
    }
}
