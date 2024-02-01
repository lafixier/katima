import
  std/sequtils,
  std/unicode


func isOrthographicHiragana*(c: Rune): bool =
  ## Checks whether a rune is a orthographic hiragana character
  c.int >= 0x3040 and c.int <= 0x309F


func isOrthographicHiragana*(s: string): bool =
  ## Checks whether a string is consists only of orthographic hiragana characters
  s.toRunes.all(isOrthographicHiragana)


func isHentaigana*(c: Rune): bool =
  ## Checks whether a rune is a hentaigana character
  c.int >= 0x1B000 and c.int <= 0x1B0FF or # Kana Supplement
  c.int >= 0x1B100 and c.int <= 0x1B122    # Kana Extended-A


func isHentaigana*(s: string): bool =
  ## Checks whether a string is consists only of hentaigana characters
  s.toRunes.all(isHentaigana)


func isHiragana*(c: Rune): bool =
  ## Checks whether a rune is a hiragana character
  c.isOrthographicHiragana or c.isHentaigana


func isHiragana*(s: string): bool =
  ## Checks whether a string is consists only of hiragana characters
  s.toRunes.all(isHiragana)


func isFullwidthKatakana*(c: Rune): bool =
  ## Checks whether a rune is a fullwidth katakana character
  c.int >= 0x30A0 and c.int <= 0x30FF


func isFullwidthKatakana*(s: string): bool =
  ## Checks whether a string is consists only of fullwidth katakana characters
  s.toRunes.all(isFullwidthKatakana)


func isHalfwidthKatakana*(c: Rune): bool =
  ## Checks whether a rune is a halfwidth katakana character
  c.int >= 0xFF65 and c.int <= 0xFF9F


func isHalfwidthKatakana*(s: string): bool =
  ## Checks whether a string is consists only of halfwidth katakana characters
  s.toRunes.all(isHalfwidthKatakana)


func isKatakana*(c: Rune): bool =
  ## Checks whether a rune is a katakana character
  c.isFullwidthKatakana or c.isHalfwidthKatakana


func isKatakana*(s: string): bool =
  ## Checks whether a string is consists only of katakana characters
  s.toRunes.all(isKatakana)
