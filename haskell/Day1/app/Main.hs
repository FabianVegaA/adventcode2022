module Main (main) where

import Lib (maxCaloryElves, maxThreeCaloryElves)
import System.Environment (getArgs)

main :: IO ()
main = do
    args <- getArgs
    let input = head args
    contents <- readFile input
    let result =  maxCaloryElves contents
    putStr "Max calory elves: "
    print result
    putStr "Max three calory elves: "
    print $ maxThreeCaloryElves contents



