import
  katimapkg/katima,
  katimapkg/repl as replModule


proc runRepl() =
  let r = Repl()
  r.run()

proc repl(args: seq[string]) =
  ## start the REPL mode
  runRepl()


when isMainModule:
  import cligen
  dispatchMulti([repl])
  # echo "医学".toOldForm
  # echo "醫學".toNewForm
  # echo "医學".toReversal
  # runRepl()
