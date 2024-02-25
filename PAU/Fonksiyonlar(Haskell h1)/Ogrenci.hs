module Ogrenci where --Bu satırı değiştirmeyin/silmeyin

--enSonEleman fonksiyonunu yazın
enSonEleman::[a]->a
enSonEleman = last
--enSonEleman _ = error "enSonEleman henuz tanimlanmadi"

--sondanIkinci fonksiyonunu yazın(listenin sondan ikinci elemanını verir)
sondanIkinci::[a]->a
sondanIkinci = last . init
--sondanIkinci = last (init x)
--sondanIkinci _ = error "sondanIkinci henuz tanimlanmadi"

--ortanca fonksiyonunu yazın
ortanca::[a]->a
ortanca x = x !! div (length x) 2
--ortanca _ = error "ortanca henuz tanimlanmadi"