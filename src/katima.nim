import
  katimapkg/katima,
  katimapkg/repl as replModule


proc runRepl() =
  let r = Repl()
  r.run()

proc repl(args: seq[string]) =
  ## start the REPL mode
  runRepl()

proc convert(
  oldCharFormsSrc = "", newCharFormsSrc = "",
    reversalSrc = "", args: seq[string]) =
  if oldCharFormsSrc != "": echo oldCharFormsSrc.toOldForm
  if newCharFormsSrc != "": echo newCharFormsSrc.toNewForm
  if reversalSrc != "": echo reversalSrc.toReversal


when isMainModule:
  import cligen
  dispatchMulti([repl], [convert])
  # echo "医学".toOldForm
  # echo "醫學".toNewForm
  # echo "医學".toReversal
  # runRepl()
