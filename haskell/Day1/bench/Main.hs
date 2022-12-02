module Main where

import Criterion.Main
import Lib (maxCaloryElves, maxThreeCaloryElves)

main :: IO ()
main =do
  case0 <- readFile "input/case0.txt"
  case1 <- readFile "input/case1.txt"
  defaultMain
    [ bench "Day1 - part 1 - case0" $ whnf maxCaloryElves case0,
      bench "Day1 - part 1 - case1" $ whnf maxCaloryElves case1,
      bench "Day1 - part 2 - case0" $ whnf maxThreeCaloryElves case0,
      bench "Day1 - part 2 - case1" $ whnf maxThreeCaloryElves case1
    ]

