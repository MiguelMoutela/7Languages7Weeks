module Main where
  reverse [] = []
  reverse (h:t) = t ++ [h]
