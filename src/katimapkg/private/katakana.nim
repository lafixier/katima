import
  std/sequtils,
  std/unicode


func isFullwidthKatakanaPunctuation*(c: Rune): bool =
  ## Checks whether a rune is a fullwidth katakana punctuation
  ## Ref: Katakana "Katakana punctuation"
  ## URL: https://www.unicode.org/charts/PDF/U30A0.pdf
  c.int == 0x30A0


func isFullwidthKatakanaPunctuation*(s: string): bool =
  ## Checks whether a string is consists only of fullwidth katakana punctuations
  s.toRunes.all(isFullwidthKatakanaPunctuation)


func isFullwidthKatakanaLetter*(c: Rune): bool =
  ## Checks whether a rune is a fullwidth katakana letter
  ## Ref: Katakana "Katakana letters"
  ## URL: https://www.unicode.org/charts/PDF/U30A0.pdf
  c.int >= 0x30A1 and c.int <= 0x30FA


func isFullwidthKatakanaLetter*(s: string): bool =
  ## Checks whether a string is consists only of fullwidth katakana letters
  s.toRunes.all(isFullwidthKatakanaLetter)


func isFullwidthConjunctionOrLengthMark*(c: Rune): bool =
  ## Checks whether a rune is a fullwidth conjunction or length mark
  ## Ref: Katakana "Conjunction and length marks"
  ## URL: https://www.unicode.org/charts/PDF/U30A0.pdf
  c.int == 0x30FB or c.int == 0x30FC


func isFullwidthConjunctionOrLengthMark*(s: string): bool =
  ## Checks whether a string is consists only of fullwidth conjunction or
  ##  length marks
  s.toRunes.all(isFullwidthConjunctionOrLengthMark)


func isKatakanaIterationMark*(c: Rune): bool =
  ## Checks whether a rune is a katakana iteration mark
  ## Ref: Katakana "Iteration marks"
  ## URL: https://www.unicode.org/charts/PDF/U30A0.pdf
  c.int == 0x30FD or c.int == 0x30FE


func isKatakanaIterationMark*(s: string): bool =
  ## Checks whether a string is consists only of katakana iteration marks
  s.toRunes.all(isKatakanaIterationMark)


func isKatakanaDiagraph*(c: Rune): bool =
  ## Checks whether a rune is a katakana diagraph
  ## Ref: Katakana "Katakana diagraph"
  ## URL: https://www.unicode.org/charts/PDF/U30A0.pdf
  c.int == 0x30FF


func isKatakanaDiagraph*(s: string): bool =
  ## Checks whether a string is consists only of katakana diagraphs
  s.toRunes.all(isKatakanaDiagraph)


func isHistoricKatakana*(c: Rune): bool =
  ## Checks whether a rune is a historic katakana character
  ## Ref 1: Kana Supplement "Historic Katakana"
  ## URL: https://www.unicode.org/charts/PDF/U1B000.pdf
  ## Ref 2: Kana Extended-A "Historic Katakana"
  ## URL: https://www.unicode.org/charts/PDF/U1B100.pdf
  c.int == 0x1B000 or                    ## Kana Supplement
  c.int >= 0x1B120 and c.int <= 0x1B122  ## Kana Extended-A


func isHistoricKatakana*(s: string): bool =
  ## Checks whether a string is consists only of historic katakana characters
  s.toRunes.all(isHistoricKatakana)


func isFullwidthKatakana*(c: Rune): bool =
  ## Checks whether a rune is a fullwidth katakana character
  c.isFullwidthKatakanaLetter or
  c.isFullwidthKatakanaPunctuation or
  c.isFullwidthConjunctionOrLengthMark or
  c.isKatakanaIterationMark or
  c.isKatakanaDiagraph or
  c.isHistoricKatakana


func isFullwidthKatakana*(s: string): bool =
  ## Checks whether a string is consists only of fullwidth katakana characters
  s.toRunes.all(isFullwidthKatakana)


func isHalfwidthKatakanaLetter*(c: Rune): bool =
  ## Checks whether a rune is a halfwidth katakana character
  ## Ref: Halfwidth and Fullwidth Forms "Halfwidth Katakana variants"
  ##  FF66 to FF6F and FF71 to FF9D
  ## URL: https://www.unicode.org/charts/PDF/UFF00.pdf
  c.int >= 0xFF66 and c.int <= 0xFF6F or
  c.int >= 0xFF71 and c.int <= 0xFF9D


func isHalfwidthKatakanaLetter*(s: string): bool =
  ## Checks whether a string is consists only of halfwidth katakana characters
  s.toRunes.all(isHalfwidthKatakanaLetter)


func isHalfwidthKatakanaConjunctionOrLengthMark*(c: Rune): bool =
  ## Checks whether a rune is a halfwidth conjunction or length mark
  ## Ref: Halfwidth and Fullwidth Forms "Halfwidth Katakana variants"
  ##  FF65 and FF70
  ## URL: https://www.unicode.org/charts/PDF/UFF00.pdf
  c.int == 0xFF65 or c.int == 0xFF70


func isHalfwidthKatakanaConjunctionOrLengthMark*(s: string): bool =
  ## Checks whether a string is consists only of halfwidth conjunction or
  ##  length marks
  s.toRunes.all(isHalfwidthKatakanaConjunctionOrLengthMark)


func isHalfwidthKatakanaVoicingMarks*(c: Rune): bool =
  ## Checks whether a rune is a halfwidth voicing mark
  ## Ref: Halfwidth and Fullwidth Forms "Halfwidth Katakana variants"
  ##  FF9E and FF9F
  ## URL: https://www.unicode.org/charts/PDF/UFF00.pdf
  c.int == 0xFF9E or c.int == 0xFF9F


func isHalfwidthKatakanaVoicingMarks*(s: string): bool =
  ## Checks whether a string is consists only of halfwidth voicing marks
  s.toRunes.all(isHalfwidthKatakanaVoicingMarks)


func isHalfwidthKatakana*(c: Rune): bool =
  ## Checks whether a rune is a halfwidth katakana character
  c.isHalfwidthKatakanaLetter or
  c.isHalfwidthKatakanaConjunctionOrLengthMark or
  c.isHalfwidthKatakanaVoicingMarks


func isHalfwidthKatakana*(s: string): bool =
  ## Checks whether a string is consists only of halfwidth katakana characters
  s.toRunes.all(isHalfwidthKatakana)


func isKatakana*(c: Rune): bool =
  ## Checks whether a rune is a katakana character
  c.isFullwidthKatakana or
  c.isHalfwidthKatakana


func isKatakana*(s: string): bool =
  ## Checks whether a string is consists only of katakana characters
  s.toRunes.all(isKatakana)
