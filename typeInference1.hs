module TypeInference1 where

f x y = x + y + 3

-- string
myConcat x = x ++ "yo"

-- fractional
myMult x = (x / 3) * 5

-- char
myTake x = take x "hey you"

-- int
myCom x = x > (length [1..10])

-- char
myAlph x = x < 'z'

bigNum = (^) 5
wahoo = bigNum 10

x = print
y = print "woohoo!"
z = x "hello world"

a = (+)
b = 5
c = a b 10
d = a c 200
