module Promise

import JS
import JS.Promise

%default total

%foreign "javascript:lambda:(a,ms,val,w) => new Promise((f) => setTimeout(() => f(val(w)), Number(ms)))"
prim__delayed : Nat -> PrimIO a -> PrimIO (Promise a)

%foreign "javascript:lambda:(a,s,w) => new Promise ((resolve,reject) => reject(new Error(s)))"
prim__fail : String -> PrimIO (Promise a)

delayed : Nat -> IO a -> IO (Promise a)
delayed n act = primIO (prim__delayed n (toPrim act))

fail : String -> IO (Promise a)
fail s = primIO $ prim__fail s

export
test : IO ()
test = do
  putStrLn "delaying an error"
  p1 <- delayed 1000 (pure ())
  putStrLn "delayed an error"
  p2 <- onPromiseP p1 (\_ => fail "oops") (delayed 10 . putStrLn)
  p3 <-
    onPromise
      p2
      (\_ => putStrLn "all is well")
      (\x => putStrLn x >> putStrLn "at least I caught it")
  pure ()
