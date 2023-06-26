module Web.Types.VoidFunction

import JS


%default total

export data VoidFunction : Type where [external]

export
ToFFI VoidFunction VoidFunction where toFFI = id

export
FromFFI VoidFunction VoidFunction where fromFFI = Just

