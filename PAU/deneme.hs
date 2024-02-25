buyukolan x y = if x > y then show x ++" daha buyuktur" else show y ++" daha buyuktur" 

sort [] = []
sort (x:xs) = sort [y | y<-xs,y <=x] ++ [x] ++ sort [y| y<-xs,y > x]

ilk (x,_) = x

son (_,y) = y

sonuncu x = last

sansli 0 = "sayi sifirdir"
sansli 1 = "sayi birdir"
sansli x = "sayi " ++ show x

fakt 0 = 1
fakt x = x * fakt (x-1)

orta (x:y:z:xs) = z

vektorTopla a b = (fst a + fst b, snd a + snd b)

vektorTopla2 (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)

soyle [] = "Liste bos"
soyle (x:[]) = "Listenin bir elemani var: " ++ show x
soyle (x:y:[]) = "Listenin iki elemani var: " ++ show x ++ " ve " ++ show y
soyle (x:y:_) = "Liste uzun. İlk iki eleman: " ++ show x ++ " ve " ++ show y

toplam [] = 0
toplam (x:xs) = x + toplam xs

ilkharf tumu@(x:xs) = tumu ++ " kelimesinin ilk harfi " ++ [x] ++ " dir"

vkiSoyle vki
    | vki <= 18.5 = "cok zayif"
    | vki <= 25 = "normal kilo"
    | vki <= 30 = "kilolusunuz"
    | otherwise = "tebrikler"

vkiSoyle2 kilo boy
    | vki <= zayif = "Çok zayifsiniz"
    | vki <= normal = "Normal kilodasiniz"
    | vki <= sisman = "Kilolusunuz, biraz dikkat!"
    | otherwise = "Tebrikler!"
    where vki = kilo / boy ^ 2
          zayif = 18.5
          normal = 25.0
          sisman = 30.0

vkiHesapla l = [vkiSoyle2 k b | (k, b) <- l]
    where vkiSoyle2 k b = k / b ^ 2

silindir r h =
    let yanAlan = 2 * pi * r * h
        ustAlan = pi * r * r
    in yanAlan + 2 * ustAlan

vkiHesapla2 l = [vki | (k, b) <- l, let vki = k / b ^ 2]

uzunluk [] = 0
uzunluk (x:xs) = 1 + uzunluk xs

palindrom [] = True
palindrom [x] = True
palindrom (x:xs) = x == last xs && palindrom (init xs)

ayirt (x:xs) = length [y | y <- xs , x == y]