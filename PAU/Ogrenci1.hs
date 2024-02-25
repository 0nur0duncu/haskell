module Ogrenci where --Bu satırı değiştirmeyin/silmeyin
{-
* topla fonksiyonu parametre olarak verilen iki listenin
  elemanlarını sırasıyla toplayarak yeni bir liste döndürür.
  Birinci elemanlar kendi arasında toplanıp sonuç listesinin
  birinci elemanını oluşturur. İkinciler kendi arasında
  toplanarak ikinci elemanı oluşturur. Verilen listelerin 
  eleman sayıları aynıdır. Aşağıda topla fonksiyonunun örnek
  kullanımları verilmiştir. Bilmoodle sistemindeki testler
  sadece 1 parametre alan fonksiyonlar üzerinde çalışmaktadır.
  Bu nedenle iki ya da daha fazla parametre alan fonksiyonlar,
  bu parametreleri birer tuple olarak alacak şekilde düzenlenmişlerdir.

ghci> topla ([1,2,3],[4,5,6])
[5,7,9]

ghci> topla ([1,2,3],[4,5,6])
[5,7,9]

ghci> topla ([0..10],[10..20])
[10,12,14,16,18,20,22,24,26,28,30]

ghci> topla ([0, 1, 0, 2, 0, 3],[-1, 0, -2, 0, -3, 0])
[-1,1,-2,2,-3,3]

  
* İpucu: topla fonksiyonunun yazımında zip fonksiyonu ve 
         liste üreteçlerinden yararlanabilirsiniz.
-}
topla::([Int],[Int])->[Int]
topla (liste1, liste2) = [fst x + snd x| x <- zip liste1 liste2]
