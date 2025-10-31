/// 核心类
pub(all) struct Core {}

/// 初始化窗口
pub fn Core::init_window(width : Int, height : Int, title : String) -> Unit {
  core_init_window(width, height, c_str(title))
}

///|
pub fn Core::window_should_close() -> Bool {
  core_window_should_close()
}

///|
pub fn Core::begin_drawing() -> Unit {
  core_begin_drawing()
}

///|
pub fn Core::end_drawing() -> Unit {
  core_end_drawing()
}

///|
pub fn Core::close_window() -> Unit {
  core_close_window()
}
