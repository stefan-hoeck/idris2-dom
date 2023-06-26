module Web.Types.FilePropertyBag

import JS
import Web.Types.BlobPropertyBag


%default total

export data FilePropertyBag : Type where [external]

export
ToFFI FilePropertyBag FilePropertyBag where toFFI = id

export
FromFFI FilePropertyBag FilePropertyBag where fromFFI = Just


export %inline
Cast FilePropertyBag BlobPropertyBag where cast = believe_me


export %inline
Cast FilePropertyBag Object where cast = believe_me

