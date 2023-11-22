import Data.List (nub)

findPairs :: [Int] -> Int -> [(Int, Int)]
findPairs lst sum = nub [(x, y) | x <- lst, y <- lst, x < y, x + y == sum]

-- Example usage
main :: IO ()
main = do
  let numbers = [1, 3, 8, 12, 7, 11, 9, 4, 2, 10, 5]
  let targetSum = 12
  print $ findPairs numbers targetSum