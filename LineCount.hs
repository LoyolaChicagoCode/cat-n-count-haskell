import Data.List

count :: [String] -> [(Integer, String)]
count = scanl (\(n, _) -> \l -> (n + 1, l)) (0, "dummy")

pairToString :: (Integer, String) -> String
pairToString = \(n, l) -> (show n) ++ " " ++ l

main :: IO ()
main = interact $ unlines . (map pairToString) . (drop 1) . count . lines
