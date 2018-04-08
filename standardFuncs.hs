module StandardFuncs where

myAnd :: [Bool] -> Bool
myAnd [] = True
myAnd (x:xs) = x && myAnd xs

myOr :: [Bool] -> Bool
myOr [] = False
myOr (x:xs) = x || myOr xs

myAny :: (a -> Bool) -> [a] -> Bool
myAny _ [] = False
myAny f (x:xs) = f x || myAny f xs

myElem :: Eq a => a -> [a] -> Bool
myElem a = myAny (== a)

myReverse :: [a] -> [a]
myReverse [] = []
myReverse (x:xs) = (myReverse xs) ++ [x]

squish :: [[a]] -> [a]
squish [] = []
squish (x:xs) = x ++ squish xs

squishMap :: (a -> [b]) -> [a] -> [b]
squishMap _ [] = []
squishMap f (x:xs) = (f x) ++ squishMap f xs

squishAgain :: [[a]] -> [a]
squishAgain = squishMap id

extremeBy :: Ordering -> (a -> a -> Ordering) -> [a] -> a
extremeBy _ _ [] = error "empty list"
extremeBy _ _ [x] = x
extremeBy o f (x:xs) = extreme x $ extremeBy o f xs
  where extreme a b = if f a b == o then a else b

myMaximumBy :: (a -> a -> Ordering) -> [a] -> a
myMaximumBy = extremeBy GT 

myMinimumBy :: (a -> a -> Ordering) -> [a] -> a
myMinimumBy = extremeBy LT

myMaximum :: (Ord a) => [a] -> a
myMaximum = myMaximumBy compare

myMinimum :: (Ord a) => [a] -> a
myMinimum = myMinimumBy compare