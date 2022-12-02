module Lib
  ( someFunc,
    mySum,
    maxCaloryElves,
    maxThreeCaloryElves
  )
where

import Data.List.Split (splitWhen)
import Data.List (sort)

someFunc :: IO ()
someFunc = do
  print . mySum $ [x | x <- [1 .. 99999], x `mod` 3 == 0 || x `mod` 5 == 0]

mySum :: [Int] -> Int
mySum xs = sum xs + sum (init xs)

newtype Elf = Elf {calories :: Int} deriving (Show, Eq, Ord)

maxCaloryElves :: String -> Int
maxCaloryElves = maximum . map (sum . map read) . splitWhen (== "") . lines

maxThreeCaloryElves :: String -> Int
maxThreeCaloryElves = sum . take 3 . reverse .sort . map (sum . map read) . splitWhen (== "") . lines

