///|
fn main {
  @lib.init_window(800, 600, "raylib")
  while @lib.window_should_close() != true {
    @lib.begin_drawing()
    @lib.end_drawing()
  }
  @lib.close_window()
}
