module Web.Types.Navigator

import JS
import Web.Types.NavigatorConcurrentHardware
import Web.Types.NavigatorContentUtils
import Web.Types.NavigatorCookies
import Web.Types.NavigatorID
import Web.Types.NavigatorLanguage
import Web.Types.NavigatorOnLine
import Web.Types.NavigatorPlugins


%default total

export data Navigator : Type where [external]

export
ToFFI Navigator Navigator where toFFI = id

export
FromFFI Navigator Navigator where fromFFI = Just

export
SafeCast Navigator where
  safeCast = unsafeCastOnPrototypeName "Navigator"


export %inline
Cast Navigator Object where cast = believe_me


export %inline
Cast Navigator NavigatorConcurrentHardware where cast = believe_me


export %inline
Cast Navigator NavigatorContentUtils where cast = believe_me


export %inline
Cast Navigator NavigatorCookies where cast = believe_me


export %inline
Cast Navigator NavigatorID where cast = believe_me


export %inline
Cast Navigator NavigatorLanguage where cast = believe_me


export %inline
Cast Navigator NavigatorOnLine where cast = believe_me


export %inline
Cast Navigator NavigatorPlugins where cast = believe_me

