
-- runhaskell ./lesson-2/task-2-3/Main.hs

some :: Integral a => a -> a
some n = if even n
         then n - 2
         else 3 * n + 1

main = do
  print("some 4 = ", some 4)
  print("some 5 = ", some 5)
