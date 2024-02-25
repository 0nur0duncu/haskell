quickSort [] = []
quickSort (x:xs) = quickSort([y | y <-xs, y <= x]) ++ [x] ++ quickSort([y | y <-xs, y > x])


applyTwice f x = f (f x)

maP _ [] = []
maP f (x:xs) = f x : maP f xs


filteR _ [] = []
filteR f (x:xs)
    | f x = x : filteR f xs
    | otherwise = filteR f xs

quickSortOther [] = []
quickSortOther (x:xs) =
    let smaller = quickSortOther(filteR (<=x) xs)
        greater = quickSortOther(filteR (>x) xs)
    in smaller ++ [x] ++ greater


chain 1 = [1]
chain n
    | even n = n:chain (n `div` 2)
    | odd n = n:chain (n*3 + 1)

numLongChains = length (filter (\xs -> length xs > 15) (map chain [1..100]))


{- topla xs = foldl(\acc y -> acc + y) 0 xs -}

topla xs = foldl (+) xs
