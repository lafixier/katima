import
  strformat

import
  katima,
  types


type Repl* = object
  discard


func quit(repl: Repl) =
  quit(0)

proc showHelp(repl: Repl) =
  echo "Commands:"
  echo "  /h, /help:      show this help"
  echo "  /o, /old:       switch to old character form mode (default)"
  echo "  /n, /new:       switch to new character form mode"
  echo "  /r, /reversal:  switch to reversal mode"
  echo "  /q, /quit:      quit"

proc run*(repl: Repl) =
  const prefix = "> "
  var destType = DestType.Old
  repl.showHelp()
  while true:
    let currentMode = case destType:
      of DestType.Old:
        "New->Old"
      of DestType.New:
        "Old->New"
      of DestType.Reversal:
        "New -> Old, Old -> New"
    stdout.write(fmt"({currentMode}) {prefix}")
    let userInput = readLine(stdin)
    if userInput[0] == '/':
      destType = case userInput:
        of "/h", "/help":
          repl.showHelp()
          destType
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
          userInput.toOldCharForms()
        of DestType.New:
          userInput.toNewCharForms()
        of DestType.Reversal:
          userInput.toReversal()
