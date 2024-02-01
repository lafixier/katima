import
  std/unicode


func isOrthographicHiragana*(c: Rune): bool =
  ## Checks whether a rune is a orthographic hiragana character
  c.int >= 0x3040 and c.int <= 0x309F


func isHentaigana*(c: Rune): bool =
  ## Checks whether a rune is a hentaigana character
  c.int >= 0x1B000 and c.int <= 0x1B0FF or # Kana Supplement
  c.int >= 0x1B100 and c.int <= 0x1B122    # Kana Extended-A


func isHiragana*(c: Rune): bool =
  ## Checks whether a rune is a hiragana character
  c.isOrthographicHiragana or c.isHentaigana
