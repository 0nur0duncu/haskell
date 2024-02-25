maximum' [] = error "bos listenin en büyüğü"
maximum' [x] = x
maximum' (x:xs)
    | x > maxKuyruk = x
    | otherwise = maxKuyruk
    where maxKuyruk = maximum' xs

maximum'' [] = error "bos listenin en büyüğü"
maximum'' [x] = x
maximum'' (x:xs) = max x (maximum' xs)

sansli 7 = "sansli sayi"
sansli x = "farklı"