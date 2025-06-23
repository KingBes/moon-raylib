pub extern "C" fn core_init_window(width:Int,height:Int,title:Bytes) -> Unit = "InitWindow"

pub extern "C" fn core_window_should_close() -> Bool = "WindowShouldClose"

pub extern "C" fn core_begin_drawing() -> Unit = "BeginDrawing"

pub extern "C" fn core_end_drawing() -> Unit = "EndDrawing"

pub extern "C" fn core_close_window() -> Unit = "CloseWindow"

