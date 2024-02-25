ikikati x= x + x
ikikatitoplam x y = x*2 +y*2
kucukikikati x = if x >100 then x else 2*x
quickshort [] = []
quickshort (x:xs) = quickshort [y | y<- xs, y <= x] ++ [x] ++ quickshort [y | y <- xs, y > x]
enSonElemen = last
sondanIkinci = last . init
ortanca x = x !! div (length x) 2

ilk (a,_,_) = a
ikinci (_,b,_) = b
ucuncu (_,_,c) = c