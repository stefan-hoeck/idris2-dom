module Web.Types.ARIAMixin

import JS


%default total

export data ARIAMixin : Type where [external]

export
ToFFI ARIAMixin ARIAMixin where toFFI = id

export
FromFFI ARIAMixin ARIAMixin where fromFFI = Just
