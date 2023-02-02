import
  tables,
  unicode


type DestType* {.pure} = enum
  Old
  New
  Reversal

type FormType* {.pure.} = enum
  Old
  New

type Katima* = object
  new2oldKanjiTable: Table[string, string]
  old2newKanjiTable: Table[string, string]

proc setKanjiTables(k: var Katima) =
  k.new2oldKanjiTable = {"医": "醫", "学": "學"}.toTable
  for key, value in k.new2oldKanjiTable.pairs:
    k.old2newKanjiTable[value] = key

proc init(k: var Katima) =
  k.setKanjiTables()

proc toAnotherForm(c: string, k: Katima, formType: FormType): string =
  case formType:
    of FormType.Old:
      if c in k.new2oldKanjiTable:
        return k.new2oldKanjiTable[c]
    of FormType.New:
      if c in k.old2newKanjiTable:
        return k.old2newKanjiTable[c]
  return c

proc convert*(k: var Katima, str: string, destType: DestType): string =
  k.init()
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
