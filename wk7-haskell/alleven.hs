module Main where
  alleven_1 :: [Integer] -> [Integer]
  alleven_1 [] = []
  alleven_1 (h:t) = if (mod h 2) == 0 then h:alleven_1 t else alleven_1 t

  alleven_2 x = [a | a <- x, (mod a 2) == 0]

  alleven_3 :: [Integer] -> [Integer]
  alleven_3 (x:xs)
    | [] = []
    | (x:xs)
