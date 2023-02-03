import
  katima,
  types


type Repl* = object
  discard


proc quit*(repl: Repl) =
  quit(0)

proc run*(repl: Repl) =
  const prefix = "> "
  var destType = DestType.Old
  while true:
    stdout.write(prefix)
    let userInput = readLine(stdin)
    if userInput[0] == '/':
      destType = case userInput:
        of "/o", "/old":
          DestType.Old
        of "/n", "/new":
          DestType.New
        of "/r", "/reversal":
          DestType.Reversal
        of "/q", "/quit":
          repl.quit()
          destType
        else:
          echo "Unknown command: " & userInput
          destType
    else:
      echo case destType:
        of DestType.Old:
          userInput.toOldForm()
        of DestType.New:
          userInput.toNewForm()
        of DestType.Reversal:
          userInput.toReversal()
