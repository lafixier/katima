import
  tables,
  unicode

import
  kanji_table,
  types


type Katima = object
  new2oldKanjiTable: Table[string, seq[string]]
  old2newKanjiTable: Table[string, string]

func setKanjiTables(k: var Katima) =
  k.new2oldKanjiTable = new2oldKanjiTable
  for key, values in k.new2oldKanjiTable.pairs:
    for value in values:
      k.old2newKanjiTable[value] = key

func init(k: var Katima) =
  k.setKanjiTables()

func toAnotherForm(c: string, k: Katima, formType: FormType): string =
  case formType:
    of FormType.Old:
      if c in k.new2oldKanjiTable:
        return k.new2oldKanjiTable[c][0]
    of FormType.New:
      if c in k.old2newKanjiTable:
        return k.old2newKanjiTable[c]
  return c

func convert(k: Katima, str: string, destType: DestType): string =
  for character in str.toRunes:
    case destType:
      of DestType.Old:
        result &= ($character).toAnotherForm(k, FormType.Old)
      of DestType.New:
        result &= ($character).toAnotherForm(k, FormType.New)
      of DestType.Reversal:
        if $character == ($character).toAnotherForm(k, FormType.Old):
          result &= ($character).toAnotherForm(k, FormType.New)
        else:
          result &= ($character).toAnotherForm(k, FormType.Old)

var k = Katima()
k.init()

proc toOldCharForms*(s: string): string =
  ## Converts `s` to the old character forms.
  k.convert(s, DestType.Old)

proc toNewCharForms*(s: string): string =
  ## Converts `s` to the new character forms.
  k.convert(s, DestType.New)

proc toReversal*(s: string): string =
  ## Converts the old character forms to the new character forms, the new character forms to the old character forms .
  k.convert(s, DestType.Reversal)

proc isOldCharForm*(s: string): bool =
  ## Returns true if the first character of `s` is written in the old character form.
  s == ($s.toRunes[0]).toOldCharForms

proc isOldCharForm*(r: Rune): bool =
  ## Returns true if `r` is written in the old character form.
  $r == ($r).toOldCharForms

proc isNewCharForm*(s: string): bool =
  ## Returns true if the first character of `s` is written in the new character form.
  s == ($s.toRunes[0]).toNewCharForms

proc isNewCharForm*(r: Rune): bool =
  ## Returns true if `r` is written in the new character form.
  $r == ($r).toNewCharForms
