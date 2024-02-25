module Ogrenci where --Bu satırı değiştirmeyin/silmeyin
{-
* minmaksfark fonksiyonu parametre olark verilen bir listenin 
  en büyük elemanı hariç diğer elemanlarının toplamı ile en küçük
  elemanı hariç diğer elemanlarının toplamının farkını hesaplar.
  minmaksfark fonksiyonunun örnek kullanımı ve geri dönüş değerleri
  aşağıda verilmiştir.

ghci> minMaksFark [1,2,3,4,5]
4
-- (2+3+4+5)-(1+2+3+4) = 4

ghci> minMaksFark [7,3,10,1]
9
-- (3+7+10)-(1+3+7) = 9

ghci> minMaksFark [46,31,44,27,1,80,2,21,79,63,23]
79
-- (2+21+23+27+31+44+46+63+79+80)-(1+2+21+23+27+31+44+46+63+79) = 79
-}

minMaksFark :: [Int] -> Int
minMaksFark x = (sum x -minimum x) - (sum x - maximum x)
--minMaksFark = error "minMaksFark fonksiyonu henuz yazilmadi"
