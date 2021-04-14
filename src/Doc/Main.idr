module Doc.Main

import JS
import Doc.Tutorial

main : IO ()
main = runJS Doc.Tutorial.prog
