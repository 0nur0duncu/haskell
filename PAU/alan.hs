silindir r h =
    let yanalAlan = 2 * pi * r * h
        ustAlan = pi * r ^2
    in yanalAlan + 2 * ustAlan

vkiHesapla l = [vki | (k, b) <- l, let vki = k / b ^ 2]

listeTanimla x = "Liste " ++ case x of [] -> "bos."
                                       [_] -> "tek elemanli."
                                       _ -> "birden çok elemanli."
