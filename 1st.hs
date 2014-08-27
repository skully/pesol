module Main where


main = do print( sum [ n | n<-[1..999], mod n 3 == 0 || mod n 5 == 0 ])
