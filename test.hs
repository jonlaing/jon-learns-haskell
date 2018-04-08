module Learn where

sayHello :: String -> IO ()
sayHello x = putStrLn ("Hello, " ++ x ++ "!")

triple = (*3)

sqMultPi x = pi * x ^ 2

f1 = x * 3 + y
  where
    x = 3
    y = 1000

f2 = x * 5
  where
    y = 10
    x = 10 * 5 + y

f3 = z / x + y
  where
    x = 7
    y = negate x
    z = y * 10

waxOn = x * 5
  where
    z = 7
    y = z + 8
    x = y ^ 2

waxOff = (^2) . triple

main :: IO ()
main = do
  putStrLn "Count to four for me:"
  putStr "one, two"
  putStr ", three, and"
  putStrLn " four!"
