module Ogrenci where --Bu satırı değiştirmeyin/silmeyin
{-
* ortanca2 fonksiyonu parametre olark verilen bir listenin konum olarak
ortasında bulunan elemanı geri döndürmelidir. Derste anlatılan
ortanca fonksiyonuna benzerlik göstermektedir fakat listenin eleman
sayısı çift olduğunda daha farklı davranmaktadır. Örneğin 5 elemanlı
bir listenin 3. elemanını(indeks olarak 2) döndürürken 6 elemanlı bir
listenin de 3. elemanını(konum olarak 2) döndürmelidir. Aşağıda ortanca2
fonksiyonunun kullanımına örnekler verilmiştir.

ghci> ortanca2 [9,7,4]
7
ghci> ortanca2 [89,54,66,55,43,92,22,21,34,73,94,41,30,86,75,93,50,30,58,51]
73
ghci> ortanca2 [1,2,3,4,5,6]
3

* İpucu: if-else yapısından ve even, odd fonksiyonlarından yararlanabilirsiniz
-}

ortanca2 :: [a] -> a
ortanca2 x = if odd (length x) then x !! (div (length x) 2) else x !! ((div (length x) 2) - 1)
