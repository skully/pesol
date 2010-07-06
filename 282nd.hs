module Main where

main = print $ (sum [ack x x | x<-[1..6]]) `rem` (14^8)


ack m n 
     | m==0 = n+1
     | m > 0 && n == 0 = ack (m-1) 1
     | m > 0 && n > 0 = ack (m-1) (ack m (n-1))
