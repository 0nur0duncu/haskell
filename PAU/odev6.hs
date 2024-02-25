module Ogrenci where --Bu satırı değiştirmeyin/silmeyin
{-
* Bir e-ticaret firmasında o gün içinde farklı kategorilerde satılan ürünlerin
  listesi verilmektedir. Listenin her bir elemanı satılan ürünün adı, satış
  tutarı ve ürünün bulunduğu kategori olmak üzere üçlü bir demet(tuple) 
  halinde bulunur. Örnek bir ürün satış listesi aşağıda verilmiştir:
  [("Item 1",99,"Tupperware"),
   ("Item 2",96,"Tupperware"),
   ("Item 3",96,"Clothing & Apparel"),
   ("Item 4",67,"Clothing & Apparel")]
  
  Ürün listesini ve bir kategoriyi parametre olarak alan ve o kategoride
  yapılan toplam satış tutarını hesaplayan kategoriSatisToplami fonksiyonunu
  map ve filter fonksiyonları kullanarak gerçekleştirin.
  Not: Fonksiyonun yapısına dikkat ederseniz, liste ve kategori bir demet(tuple)
  içinde tek bir parametre olarak verilmektedir.
  Aşağıda fonksiyonun örnek kullanımı vardır: 

ghci> kategoriSatisToplami ([("Item 1",99,"Tupperware"),("Item 2",96,"Tupperware"),("Item 3",96,"Clothing & Apparel"),("Item 4",67,"Clothing & Apparel")], "Tupperware")
195

ghci> kategoriSatisToplami ([("Item 1",99,"Tupperware"),("Item 2",96,"Tupperware"),("Item 3",96,"Clothing & Apparel"),("Item 4",67,"Clothing & Apparel")], "Clothing & Apparel") 
163

ghci> kategoriSatisToplami ([("Item 1",99,"Tupperware"),("Item 2",96,"Tupperware"),("Item 3",96,"Clothing & Apparel"),("Item 4",67,"Clothing & Apparel")], "Furniture")
0

-}


kategoriSatisToplami :: ([(String, Int, String)], String) -> Int
--kategoriSatisToplami (liste, kategori) = error "kategoriSatisToplami henuz yazilmadi"
kategoriSatisToplami ([],_) = 0
{-kategoriSatisToplami (x:xs, kategori) 
    | z == kategori = y + kategoriSatisToplami(xs,kategori)
    | otherwise = kategoriSatisToplami(xs,kategori)
    where (_,y,z) = x -}

--deneme t = sum [k | (k,v) <- [(y,z) | (_,y,z) <- fst t],  v == snd t]
deneme t = sum [y | (_,y,z) <- fst t, not(null(filter (== snd t) [z]))]
