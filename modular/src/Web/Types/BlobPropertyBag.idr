module Web.Types.BlobPropertyBag

import JS


%default total

export data BlobPropertyBag : Type where [external]

export
ToFFI BlobPropertyBag BlobPropertyBag where toFFI = id

export
FromFFI BlobPropertyBag BlobPropertyBag where fromFFI = Just


export %inline
Cast BlobPropertyBag Object where cast = believe_me
