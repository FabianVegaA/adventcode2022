module Main where

import Criterion.Main
import Lib (mySum)

main :: IO ()
main =
  defaultMain
    [ bench "Day1" $ whnf mySum [1 .. 99999]
    ]
