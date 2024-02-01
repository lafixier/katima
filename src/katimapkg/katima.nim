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


func isCjkUnifiedIdeographs*(c: Rune): bool =
  ## Checks whether a rune is a CJK Unified Ideograph
  c.int >= 0x4E00 and c.int <= 0x9FFF or   # CJK Unified Ideographs
  c.int >= 0x3400 and c.int <= 0x4DBF or   # CJK Unified Ideographs Extension A
  c.int >= 0x20000 and c.int <= 0x2A6DF or # CJK Unified Ideographs Extension B
  c.int >= 0x2A700 and c.int <= 0x2B738 or # CJK Unified Ideographs Extension C
  c.int >= 0x2B740 and c.int <= 0x2B81D or # CJK Unified Ideographs Extension D
  c.int >= 0x2B820 and c.int <= 0x2CEA1 or # CJK Unified Ideographs Extension E
  c.int >= 0x2CEB0 and c.int <= 0x2EBE0 or # CJK Unified Ideographs Extension F
  c.int >= 0x30000 and c.int <= 0x3134A or # CJK Unified Ideographs Extension G
  c.int >= 0x31350 and c.int <= 0x323AF or # CJK Unified Ideographs Extension H
  c.int >= 0x2EBF0 and c.int <= 0x2EE5F    # CJK Unified Ideographs Extension I


func isCjkUnifiedIdeographs*(s: string): bool =
  ## Checks whether a string is consists only of CJK Unified Ideographs
  s.toRunes.all(isCjkUnifiedIdeographs)


func isCjkCompatibilityIdeographs*(c: Rune): bool =
  ## Checks whether a rune is a CJK Compatibility Ideographs
  c.int >= 0xF900 and c.int <= 0xFA6D or
  c.int >= 0xFA70 and c.int <= 0xFAD9


func isCjkCompatibilityIdeographs*(s: string): bool =
  ## Checks whether a string is consists only of CJK Compatibility Ideographs
  s.toRunes.all(isCjkCompatibilityIdeographs)


func isCjkIdeographs*(c: Rune): bool =
  ## Checks whether a rune is a CJK Ideograph
  c.isCjkUnifiedIdeographs or c.isCjkCompatibilityIdeographs


func isCjkIdeographs*(s: string): bool =
  ## Checks whether a string is consists only of CJK Ideographs
  s.toRunes.all(isCjkIdeographs)
