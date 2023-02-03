# Package

version       = "0.1.0"
author        = "lafixier"
description   = "A tool to convert kbetween kyūjitai (old character forms) and shinjitai (new character forms)"
license       = "MIT"
srcDir        = "src"
installExt    = @["nim"]
bin           = @["katima"]


# Dependencies

requires "nim >= 1.6.10"
requires "cligen >= 1.5.38"
