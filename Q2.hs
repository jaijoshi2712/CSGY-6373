import qualified Data.Map as Map

findAllPairs :: [Int] -> Map.Map Int [(Int, Int)]
findAllPairs lst = foldl insertPair Map.empty [(x, y) | x <- lst, y <- lst, x < y]
  where
    insertPair m (x, y) = Map.insertWith (++) (x + y) [(x, y)] m

-- Example usage
main :: IO ()
main = do
  let numbers = [1, 3, 8, 12, 7, 11, 9, 4, 2, 10, 5]
  print $ findAllPairs numbers