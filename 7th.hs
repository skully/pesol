module Main where


isprime :: Integer -> Bool
isprime x = length [ y | y<-[1..x] , x `mod` y == 0  ] == 2


primes :: Int  -> [Integer]
primes x = drop (x-1) ( take x [ y | y <- [1,2.. ] , isprime y == True ])


main :: IO ()
main = print ( primes 10001)
