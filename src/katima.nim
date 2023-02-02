import
  katimapkg/katima


when isMainModule:
  var k = Katima()
  echo k.convert("医学", DestType.Old)
  echo k.convert("醫學", DestType.New)
  echo k.convert("医學", DestType.Reversal)
