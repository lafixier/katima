import
  katimapkg/katima,
  katimapkg/repl


proc runRepl() =
  let r = Repl()
  r.run()


when isMainModule:
  echo "医学".toOldForm
  echo "醫學".toNewForm
  echo "医學".toReversal
  runRepl()
