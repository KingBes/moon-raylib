///|
pub fn c_str(s : String) -> Bytes {
  let s = s.to_array()
  s.push('\u{0000}')
  return s.map(fn(c) { c.to_int().to_byte() }) |> Bytes::from_array
}
