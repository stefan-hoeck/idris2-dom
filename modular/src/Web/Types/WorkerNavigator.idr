module Web.Types.WorkerNavigator

import JS
import Web.Types.NavigatorConcurrentHardware
import Web.Types.NavigatorID
import Web.Types.NavigatorLanguage
import Web.Types.NavigatorOnLine


%default total

export data WorkerNavigator : Type where [external]

export
ToFFI WorkerNavigator WorkerNavigator where toFFI = id

export
FromFFI WorkerNavigator WorkerNavigator where fromFFI = Just

export
SafeCast WorkerNavigator where
  safeCast = unsafeCastOnPrototypeName "WorkerNavigator"


export %inline
Cast WorkerNavigator Object where cast = believe_me


export %inline
Cast WorkerNavigator NavigatorConcurrentHardware where cast = believe_me


export %inline
Cast WorkerNavigator NavigatorID where cast = believe_me


export %inline
Cast WorkerNavigator NavigatorLanguage where cast = believe_me


export %inline
Cast WorkerNavigator NavigatorOnLine where cast = believe_me
