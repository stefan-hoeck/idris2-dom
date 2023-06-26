module Web.Types.ReferrerPolicy

import JS

%default total

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
