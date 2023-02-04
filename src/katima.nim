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
  oldCharFormsMode = false, newCharFormsMode = false, reversalMode = false,
    args: seq[string]) =
  ## convert the input to the specified forms
  let src =
    if args.len == 0:
      stdin.readLine
    else:
      let srcFilePath = args[0]
      var file = open(srcFilePath, FileMode.fmRead)
      defer:
        file.close()
      file.readAll()

  let dest =
    if oldCharFormsMode:
      src.toOldCharForms
    elif newCharFormsMode:
      src.toNewCharForms
    elif reversalMode:
      src.toReversal
    else:
      src

  stdout.write(dest)


when isMainModule:
  import cligen
  dispatchMulti([repl], [convert])
  # echo "医学".toOldForm
  # echo "醫學".toNewForm
  # echo "医學".toReversal
  # runRepl()
