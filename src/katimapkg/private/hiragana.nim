import
  std/sequtils,
  std/unicode


func isHiraganaLetter*(c: Rune): bool =
  ## Checks whether a rune is a hiragana letter or a small letter.
  ## Ref: Hiragana "Hiragana letters" and "Small letters"
  ## URL: https://www.unicode.org/charts/PDF/U3040.pdf
  c.int >= 0x3041 and c.int <= 0x3096


func isHiraganaLetter*(s: string): bool =
  ## Checks whether a string is consists only of hiragana letters or small letters.
  s.toRunes.all(isHiraganaLetter)


func isHiraganaIterationMark*(c: Rune): bool =
  ## Checks whether a rune is a hiragana iteration mark.
  ## Ref: Hiragana "Iteration marks"
  ## URL: https://www.unicode.org/charts/PDF/U3040.pdf
  c.int == 0x309D or c.int == 0x309E


func isHiraganaIterationMark*(s: string): bool =
  ## Checks whether a string is consists only of hiragana iteration marks.
  s.toRunes.all(isHiraganaIterationMark)


func isHiraganaDiagraph*(c: Rune): bool =
  ## Checks whether a rune is a hiragana diagraph.
  ## Ref: Hiragana "Hiragana diagraph"
  ## URL: https://www.unicode.org/charts/PDF/U3040.pdf
  c.int == 0x309F


func isHiraganaDiagraph*(s: string): bool =
  ## Checks whether a string is consists only of hiragana diagraphs.
  s.toRunes.all(isHiraganaDiagraph)


func isHistoricHiragana*(c: Rune): bool =
  ## Checks whether a rune is a historic hiragana.
  ## Ref: Kana Supplement "Historic Hiragana"
  ## URL: https://www.unicode.org/charts/PDF/U1B100.pdf
  c.int == 0x1B11F


func isHistoricHiragana*(s: string): bool =
  ## Checks whether a string is consists only of historic hiragana.
  s.toRunes.all(isHistoricHiragana)


func isHentaigana*(c: Rune): bool =
  ## Checks whether a rune is a hentaigana.
  ## Ref 1: Kana Supplement "Hentaigana"
  ## URL: https://www.unicode.org/charts/PDF/U1B000.pdf
  ## Ref 2: Kana Extended-A "Hentaigana"
  ## URL: https://www.unicode.org/charts/PDF/U1B100.pdf
  c.int >= 0x1B002 and c.int <= 0x1B0FF or ## Kana Supplement
  c.int >= 0x1B100 and c.int <= 0x1B11E    ## Kana Extended-A


func isHentaigana*(s: string): bool =
  ## Checks whether a string is consists only of hentaigana.
  s.toRunes.all(isHentaigana)


func isHiragana*(c: Rune): bool =
  ## Checks whether a rune is a hiragana.
  isHiraganaLetter(c) or
  isHiraganaIterationMark(c) or
  isHiraganaDiagraph(c) or
  isHistoricHiragana(c) or
  isHentaigana(c)


func isHiragana*(s: string): bool =
  ## Checks whether a string is consists only of hiragana.
  s.toRunes.all(isHiragana)
