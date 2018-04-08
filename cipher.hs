module Cipher where

import Data.Char

-- Only works for lower case
shift :: Int -> Char -> Char
shift _ ' ' = ' ' -- ignore spaces
shift amt c = chr $ d `mod` alph + offset
  where
    offset = 97                 -- where 'a' starts
    d = (ord c) - offset + amt  -- distance shifted
    alph = 26                   -- total size of alphabet

shiftStr :: Int -> String -> String
shiftStr _ [] = ""
shiftStr amt (x:xs) = (shift amt x) : (shiftStr amt xs)

caesar :: String -> String
caesar s = shiftStr 3 s

uncaesar :: String -> String
uncaesar s = shiftStr (-3) s