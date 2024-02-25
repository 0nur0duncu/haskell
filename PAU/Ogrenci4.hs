module Ogrenci where --Bu satırı değiştirmeyin/silmeyin
{-
* Bir fabrikada üretilen çoraplar yığın halinde kutularda saklanmaktadır
 Çorap çiftlerinin renklerine göre gruplanıp çorap çifti sayısının bulunması 
 istenmektedir. Çorapların renklerinin bulunduğu listeyi parametre
 olarak alan ve çift çorap sayısını döndüren ciftCorapSayisi fonksiyonunu
 yazınız. Fonksiyonun örnek kullanımı aşağıda verilmiştir.

ghci> ciftCorapSayisi [10, 20, 20, 10, 10, 30, 50, 10, 20]
3

ghci> ciftCorapSayisi [1,3,2,8,5]
0

ghci> ciftCorapSayisi [6,7,3,8,3,7,7,2,7,3,3,4,6,8,8,4]
7
-}

ciftCorapSayisi :: [Int] -> Int
ciftCorapSayisi [] = 0
ciftCorapSayisi [_] = 0
--ciftCorapSayisi (x:xs) = if x `elem` xs  then 1 + ciftCorapSayisi xs else ciftCorapSayisi xs
--ciftCorapSayisi (x:xs) = length [ y | y <- xs , y == x] `div` 2
--ciftCorapSayisi (x:xs) = length [ y | y <- xs , y == x] `div` 2 + ciftCorapSayisi [ y | y <- xs , y /= x]
ciftCorapSayisi (x:xs) = (length [ y | y <- xs , y == x] + 1) `div` 2 + ciftCorapSayisi [ z | z <- xs , z /= x]