module Web.Internal.FetchTypes

import JS

%default total


--------------------------------------------------------------------------------
--          Enums
--------------------------------------------------------------------------------

namespace RequestDestination

  public export
  data RequestDestination =
      Empty
    | Audio
    | Audioworklet
    | Document
    | Embed
    | Font
    | Frame
    | Iframe
    | Image
    | Manifest
    | Object
    | Paintworklet
    | Report
    | Script
    | Sharedworker
    | Style
    | Track
    | Video
    | Worker
    | Xslt

  export
  Show RequestDestination where
    show Empty = ""
    show Audio = "audio"
    show Audioworklet = "audioworklet"
    show Document = "document"
    show Embed = "embed"
    show Font = "font"
    show Frame = "frame"
    show Iframe = "iframe"
    show Image = "image"
    show Manifest = "manifest"
    show Object = "object"
    show Paintworklet = "paintworklet"
    show Report = "report"
    show Script = "script"
    show Sharedworker = "sharedworker"
    show Style = "style"
    show Track = "track"
    show Video = "video"
    show Worker = "worker"
    show Xslt = "xslt"

  export
  Eq RequestDestination where
    (==) = (==) `on` show

  export
  Ord RequestDestination where
    compare = compare `on` show

  export
  read : String -> Maybe RequestDestination
  read "" = Just Empty
  read "audio" = Just Audio
  read "audioworklet" = Just Audioworklet
  read "document" = Just Document
  read "embed" = Just Embed
  read "font" = Just Font
  read "frame" = Just Frame
  read "iframe" = Just Iframe
  read "image" = Just Image
  read "manifest" = Just Manifest
  read "object" = Just Object
  read "paintworklet" = Just Paintworklet
  read "report" = Just Report
  read "script" = Just Script
  read "sharedworker" = Just Sharedworker
  read "style" = Just Style
  read "track" = Just Track
  read "video" = Just Video
  read "worker" = Just Worker
  read "xslt" = Just Xslt
  read _ = Nothing

  export
  ToFFI RequestDestination String where
    toFFI = show

  export
  FromFFI RequestDestination String where
    fromFFI = read


namespace RequestMode

  public export
  data RequestMode = Navigate | SameOrigin | NoCors | Cors

  export
  Show RequestMode where
    show Navigate = "navigate"
    show SameOrigin = "same-origin"
    show NoCors = "no-cors"
    show Cors = "cors"

  export
  Eq RequestMode where
    (==) = (==) `on` show

  export
  Ord RequestMode where
    compare = compare `on` show

  export
  read : String -> Maybe RequestMode
  read "navigate" = Just Navigate
  read "same-origin" = Just SameOrigin
  read "no-cors" = Just NoCors
  read "cors" = Just Cors
  read _ = Nothing

  export
  ToFFI RequestMode String where
    toFFI = show

  export
  FromFFI RequestMode String where
    fromFFI = read


namespace RequestCredentials

  public export
  data RequestCredentials = Omit | SameOrigin | Include

  export
  Show RequestCredentials where
    show Omit = "omit"
    show SameOrigin = "same-origin"
    show Include = "include"

  export
  Eq RequestCredentials where
    (==) = (==) `on` show

  export
  Ord RequestCredentials where
    compare = compare `on` show

  export
  read : String -> Maybe RequestCredentials
  read "omit" = Just Omit
  read "same-origin" = Just SameOrigin
  read "include" = Just Include
  read _ = Nothing

  export
  ToFFI RequestCredentials String where
    toFFI = show

  export
  FromFFI RequestCredentials String where
    fromFFI = read


namespace RequestCache

  public export
  data RequestCache =
      Default
    | NoStore
    | Reload
    | NoCache
    | ForceCache
    | OnlyIfCached

  export
  Show RequestCache where
    show Default = "default"
    show NoStore = "no-store"
    show Reload = "reload"
    show NoCache = "no-cache"
    show ForceCache = "force-cache"
    show OnlyIfCached = "only-if-cached"

  export
  Eq RequestCache where
    (==) = (==) `on` show

  export
  Ord RequestCache where
    compare = compare `on` show

  export
  read : String -> Maybe RequestCache
  read "default" = Just Default
  read "no-store" = Just NoStore
  read "reload" = Just Reload
  read "no-cache" = Just NoCache
  read "force-cache" = Just ForceCache
  read "only-if-cached" = Just OnlyIfCached
  read _ = Nothing

  export
  ToFFI RequestCache String where
    toFFI = show

  export
  FromFFI RequestCache String where
    fromFFI = read


namespace RequestRedirect

  public export
  data RequestRedirect = Follow | Error | Manual

  export
  Show RequestRedirect where
    show Follow = "follow"
    show Error = "error"
    show Manual = "manual"

  export
  Eq RequestRedirect where
    (==) = (==) `on` show

  export
  Ord RequestRedirect where
    compare = compare `on` show

  export
  read : String -> Maybe RequestRedirect
  read "follow" = Just Follow
  read "error" = Just Error
  read "manual" = Just Manual
  read _ = Nothing

  export
  ToFFI RequestRedirect String where
    toFFI = show

  export
  FromFFI RequestRedirect String where
    fromFFI = read


namespace ResponseType

  public export
  data ResponseType = Basic | Cors | Default | Error | Opaque | Opaqueredirect

  export
  Show ResponseType where
    show Basic = "basic"
    show Cors = "cors"
    show Default = "default"
    show Error = "error"
    show Opaque = "opaque"
    show Opaqueredirect = "opaqueredirect"

  export
  Eq ResponseType where
    (==) = (==) `on` show

  export
  Ord ResponseType where
    compare = compare `on` show

  export
  read : String -> Maybe ResponseType
  read "basic" = Just Basic
  read "cors" = Just Cors
  read "default" = Just Default
  read "error" = Just Error
  read "opaque" = Just Opaque
  read "opaqueredirect" = Just Opaqueredirect
  read _ = Nothing

  export
  ToFFI ResponseType String where
    toFFI = show

  export
  FromFFI ResponseType String where
    fromFFI = read


namespace ReferrerPolicy

  public export
  data ReferrerPolicy =
      Empty
    | NoReferrer
    | NoReferrerWhenDowngrade
    | SameOrigin
    | Origin
    | StrictOrigin
    | OriginWhenCrossOrigin
    | StrictOriginWhenCrossOrigin
    | UnsafeUrl

  export
  Show ReferrerPolicy where
    show Empty = ""
    show NoReferrer = "no-referrer"
    show NoReferrerWhenDowngrade = "no-referrer-when-downgrade"
    show SameOrigin = "same-origin"
    show Origin = "origin"
    show StrictOrigin = "strict-origin"
    show OriginWhenCrossOrigin = "origin-when-cross-origin"
    show StrictOriginWhenCrossOrigin = "strict-origin-when-cross-origin"
    show UnsafeUrl = "unsafe-url"

  export
  Eq ReferrerPolicy where
    (==) = (==) `on` show

  export
  Ord ReferrerPolicy where
    compare = compare `on` show

  export
  read : String -> Maybe ReferrerPolicy
  read "" = Just Empty
  read "no-referrer" = Just NoReferrer
  read "no-referrer-when-downgrade" = Just NoReferrerWhenDowngrade
  read "same-origin" = Just SameOrigin
  read "origin" = Just Origin
  read "strict-origin" = Just StrictOrigin
  read "origin-when-cross-origin" = Just OriginWhenCrossOrigin
  read "strict-origin-when-cross-origin" = Just StrictOriginWhenCrossOrigin
  read "unsafe-url" = Just UnsafeUrl
  read _ = Nothing

  export
  ToFFI ReferrerPolicy String where
    toFFI = show

  export
  FromFFI ReferrerPolicy String where
    fromFFI = read



--------------------------------------------------------------------------------
--          Interfaces
--------------------------------------------------------------------------------

export data Headers : Type where [external]

export
ToFFI Headers Headers where toFFI = id

export
FromFFI Headers Headers where fromFFI = Just

export
SafeCast Headers where
  safeCast = unsafeCastOnPrototypeName "Headers"

export data Request : Type where [external]

export
ToFFI Request Request where toFFI = id

export
FromFFI Request Request where fromFFI = Just

export
SafeCast Request where
  safeCast = unsafeCastOnPrototypeName "Request"

export data Response : Type where [external]

export
ToFFI Response Response where toFFI = id

export
FromFFI Response Response where fromFFI = Just

export
SafeCast Response where
  safeCast = unsafeCastOnPrototypeName "Response"


--------------------------------------------------------------------------------
--          Dictionaries
--------------------------------------------------------------------------------

export data RequestInit : Type where [external]

export
ToFFI RequestInit RequestInit where toFFI = id

export
FromFFI RequestInit RequestInit where fromFFI = Just

export data ResponseInit : Type where [external]

export
ToFFI ResponseInit ResponseInit where toFFI = id

export
FromFFI ResponseInit ResponseInit where fromFFI = Just


--------------------------------------------------------------------------------
--          Mixins
--------------------------------------------------------------------------------

export data Body : Type where [external]

export
ToFFI Body Body where toFFI = id

export
FromFFI Body Body where fromFFI = Just
