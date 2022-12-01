module Lib
  ( someFunc,
    mySum,
  )
where

someFunc :: IO ()
someFunc = do
  print . mySum $ [x | x <- [1 .. 99999], x `mod` 3 == 0 || x `mod` 5 == 0]

mySum :: [Int] -> Int
mySum xs = sum xs + sum (init xs)
