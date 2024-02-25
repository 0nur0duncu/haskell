module Ogrenci where --Bu satırı değiştirmeyin/silmeyin

--uzunluk fonksiyonunu yazın(listenin uzunluğunu verir)
uzunluk::[a]->Int
uzunluk [] = 0
uzunluk (_:xs) = 1 + uzunluk xs

--ciftFaktoryel fonksiyonunu yazın
ciftFaktoryel::Integer->Integer
ciftFaktoryel 2 = 2
ciftFaktoryel 1 = 1
ciftFaktoryel n = n*ciftFaktoryel(n-2)

--panindrom fonksiyonunu yazın(bir listenin/metnin palindrom olup olmadığını verir)
palindrom::(Eq a)=>[a]->Bool
palindrom [] = True
palindrom [_] = True
palindrom (x:xs) = x == last xs && palindrom(init xs)

--indistekiEleman fonksiyonunu yazın(tuple olarak verilen liste ve indise göre bir eleman verir)
indistekiEleman::([a], Int)->a
indistekiEleman ([],_) = error "Gecersiz index"
indistekiEleman (x:_,0) = x
indistekiEleman (_:xs,indis) = indistekiEleman(xs,indis-1)

--compress fonksiyonunu yazın
compress::(Eq a)=>[a]->[a]
compress [] = []
compress [x] = [x]
compress (x:y:xs)
    | x==y = compress(y:xs)
    | otherwise = x:compress (y:xs)