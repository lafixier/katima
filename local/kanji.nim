import
  strutils


proc main() =
  let file = open("kanji.txt", FileMode.fmRead)
  defer: file.close()
  let text = file.readAll()
  for line in text.split("\n"):
    if line != "":
      let key = line.split("（")[0]
      let value = line.split("（")[1]
      echo '"' & key & '"' & ": @[" & '"' & value & '"' & "],"


when isMainModule:
  main()
