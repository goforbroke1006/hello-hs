
-- runhaskell ./lesson-2/task-2-2/Main.hs

inc :: Integer -> Integer
inc x = x + 1

double :: Num a => a -> a
double x = x + x

square :: Num a => a -> a
square x = x ^ 2

main = do
  print("inc 10 = ", inc 10)
  print("double 4 = ", double 4)
  print("double 4.2 = ", double 4.2)
  print("square 3 = ", square 3)