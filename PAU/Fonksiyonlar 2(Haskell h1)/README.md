# README.md - Ogrenci Modülü

Bu modül, üç elemanlı bir demet (tuple) üzerinde işlemler yapmak için tasarlanmıştır. Modül içindeki fonksiyonlar, demetin her bir elemanına erişmek için kullanılabilir.

## Kullanım

### `ilk` Fonksiyonu

```haskell
ilk :: (a, b, c) -> a
```

Bu fonksiyon, üç elemanlı demetin ilk elemanına erişim sağlar. Örnek kullanım:

```haskell
-- Örnek
let demet = (42, "Merhaba", True)
print $ ilk demet
-- Çıktı: 42
```

### `ikinci` Fonksiyonu

```haskell
ikinci :: (a, b, c) -> b
```

Bu fonksiyon, üç elemanlı demetin ikinci elemanına erişim sağlar. Örnek kullanım:

```haskell
-- Örnek
let demet = (42, "Merhaba", True)
print $ ikinci demet
-- Çıktı: "Merhaba"
```

### `ucuncu` Fonksiyonu

```haskell
ucuncu :: (a, b, c) -> c
```

Bu fonksiyon, üç elemanlı demetin üçüncü elemanına erişim sağlar. Örnek kullanım:

```haskell
-- Örnek
let demet = (42, "Merhaba", True)
print $ ucuncu demet
-- Çıktı: True
```

## Hata Durumu

Her üç fonksiyon da, beklenmeyen durumlar için hata mesajları içermez. Eğer fonksiyonlara uygun olmayan bir parametre geçilirse, Haskell'ın doğal davranışı olan hata mesajları ile karşılaşılır.
