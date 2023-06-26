module Web.Types.NavigatorCookies

import JS


%default total

export data NavigatorCookies : Type where [external]

export
ToFFI NavigatorCookies NavigatorCookies where toFFI = id

export
FromFFI NavigatorCookies NavigatorCookies where fromFFI = Just

