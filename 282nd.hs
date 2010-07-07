module Main where

main = print $ (sum [ack x x | x<-[1..6]])
--main= print $ [ack 2 x | x<-[0..10]]

ack m n 
     | m==0 = n+1
     | m==1 = n+2
     | m==2 = 2*n+3
     | m== 3 = 2^(n+3)-3
     | m > 0 && n == 0 = ack (m-1) 1
     | m > 0 && n > 0 = ack (m-1) (ack m (n-1))
