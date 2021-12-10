
-- runhaskell ./Main.hs

isNumber :: String -> Bool
isNumber str =
    case (reads str) :: [(Double, String)] of
      [(_, "")] -> True
      _         -> False

evalExpr :: String -> Float
--evalExpr :: String -> [String]
evalExpr = read . head . foldl f [] . words
--evalExpr = foldl f [] . words
 where
   f :: [String] -> String -> [String]

   f (x:"(":rest)   ")" | isNumber x                 = (f rest x) -- eval expression as if there are no parentheses

   f ("+":x:rest)    y  | isNumber x && isNumber y   = (show ((read x :: Double) + (read y :: Double))):rest
   f ("-":x:rest)    y  | isNumber x && isNumber y   = (show ((read x :: Double) - (read y :: Double))):rest
   f ("*":x:rest)    y  | isNumber x && isNumber y   = (show ((read x :: Double) * (read y :: Double))):rest
   f ("/":x:rest)    y  | isNumber x && isNumber y   = (show ((read x :: Double) / (read y :: Double))):rest

   f rest            y                               = y:rest -- default behaviour: append token to front of list

main = do
  print(evalExpr "11 + ( ( 22 * 3 ) / 10 )")
