import
  std/sequtils,
  std/unicode


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
