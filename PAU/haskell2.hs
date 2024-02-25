module Ogrenci where --Bu satırı değiştirmeyin/silmeyin

--ilk fonksiyonunu yazın
ilk::(a,b,c)->a
ilk (x,_,_) = x
--ilk (x,y,z) = x
--ilk _ = error "ilk henuz tanimlanmadi"


--ikinci fonksiyonunu yazın
ikinci::(a,b,c)->b
ikinci (_,y,_) = y
--ikinci (x,y,z) = y
--ikinci _ = error "ilk henuz tanimlanmadi"

--ucuncu fonksiyonunu yazın
ucuncu::(a,b,c)->c
ucuncu (_,_,z) = z
--ucuncu (x,y,z) = z
--ucuncu _ = error "ilk henuz tanimlanmadi"
