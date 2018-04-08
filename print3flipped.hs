module Print3Flipped where

myGreeting :: String
myGreeting = (++) "hello" " world!"

hello :: String
hello = "hello"

world :: String
world = "world!"

a :: String -> String
a s = s ++ "!"

b :: String -> String
b = take 1 . drop 4

c :: String -> String
c = drop 9

thirdLetter :: String -> Char
thirdLetter x = x !! 2

letterIndex :: Int -> Char
letterIndex = (!!) "Curry"

rvrs :: String -> String
rvrs s = (drop 9 s) ++ ((take 4 . drop 5) s) ++ (take 5 s)

main :: IO ()
main = do
  putStrLn myGreeting
  putStrLn secondGreeting
  where secondGreeting =
          (++) hello ((++) " " world)
