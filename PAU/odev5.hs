module Ogrenci where --Bu satırı değiştirmeyin/silmeyin
{-
* Bir plazada çalışan kişilerin plazaya girişleri kart sistemi ile 
gerçekleşmektedir ve bir çalışan giriş yaptığında çalışanın kimliği(ID)
kaydedilmektedir. Gün sonunda plazaya kaç farklı çalışanın giriş 
yaptığı belirlenmek istenmektedir. Bunun için sizden plazaya giriş 
yapan kişilerin kimlik listesini parametre olarak alan ve plazaya
giriş yapan farklı kişi sayını döndüren calisanSayisi fonksiyonunu
fold fonksiyonlarından bir tanesini kullanarak yazmanız istenmetedir.
Aşağıda fonksiyonun örnek kullanımları verilmiştir:

ghci> calisanSayisi [1,1,1,1,1]
1

ghci> calisanSayisi [1,1,1,1,1,2,1,2,1,2]
2

ghci> calisanSayisi [1,1,1,1,1,2,1,2,1,2,3,4]
4

ghci> calisanSayisi [1,1,1,1,1,2,1,2,1,2,3,4,3,4,3,4,4,4,5]
5
-}

calisanSayisi :: [Int] -> Int
calisanSayisi xs = length (foldl (\acc x -> if x `elem` acc then acc else acc ++ [x]) [] xs)