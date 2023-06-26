module Web.Types.XPathNSResolver

import JS


%default total

export data XPathNSResolver : Type where [external]

export
ToFFI XPathNSResolver XPathNSResolver where toFFI = id

export
FromFFI XPathNSResolver XPathNSResolver where fromFFI = Just
