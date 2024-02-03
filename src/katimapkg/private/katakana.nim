import
  std/sequtils,
  std/unicode


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
