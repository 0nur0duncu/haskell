vkiSoyle vki
    | vki <= 18.5 = "Çok zayifsiniz"
    | vki <= 25 = "Normal kilodasiniz"
    | vki <= 30 = "Kilolusunuz, biraz dikkat!"
    | otherwise = "Tebrikler!"

vkiSoyle2 kilo boy
    | kilo / boy ^ 2 <= 18.5 = "Cok zayifsiniz"
    | kilo / boy ^ 2 <= 25 = "Normal kilodasiniz"
    | kilo / boy ^ 2 <= 30 = "Kilolusunuz, biraz dikkat!"
    | otherwise = "Tebrikler!"

vkiSoyle3 kilo boy
    | vki <= zayif = "Cok zayifsiniz"
    | vki <= normal = "Normal kilodasiniz"
    | vki <= sisman = "Kilolusunuz, biraz dikkat!"
    | otherwise = "Tebrikler!"
    where vki = kilo / boy ^ 2
          (zayif,normal,sisman) = (18.5 , 25.0 , 30.0)
{- vkiSoyle3 kilo boy
    | vki <= zayif = "Cok zayifsiniz"
    | vki <= normal = "Normal kilodasiniz"
    | vki <= sisman = "Kilolusunuz, biraz dikkat!"
    | otherwise = "Tebrikler!"
    where vki = kilo / boy ^ 2
          zayif = 18.5
          normal = 25.0
          sisman = 30.0 -}

vkiHesapla l = [vki k b | (k, b) <- l]
    where vki k b = k / b ^ 2