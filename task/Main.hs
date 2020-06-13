
-- Варіант 1

-- 1. Визначте функцію , яка для двійкового дерева повертає список з усіх його парних елементів . 
-- Реалізуйте цю функцію так , щоб вона мала лінійну складність .

data BinTree a = Leaf a | Branch a (BinTree a) (BinTree a) deriving Show

evenList :: Integral a => BinTree a -> [a]
evenList tree = filter even $ inorder tree
  where inorder :: BinTree a -> [a]
        inorder (Leaf x) = [x]
        inorder (Branch x l r) = (inorder l) ++ [x] ++ (inorder r)


-- 2. Опишіть функцію , яка для даного нескінченного списку [ x1 , x2 , x3 , x4 , ...] 
-- повертає нескінченний список з часткових сум : [ x1 , x1 + x2 , x1 + x2 + x3 , x1 + x2 + x3 + x4 , . .. ]

partialSum :: Num a => [a] -> [a]
partialSum xs = map f $ zip [1..] xs
  where f (n, x) = sum $ take n xs

main :: IO ()
main = do 
  putStrLn "Exam"
  print $ partialSum [1 .. 10]

  let tree = Branch 10 (Leaf 5) (Leaf 12)
  print $ evenList tree