# README.md - Ogrenci Modülü

Bu modül, `palindrom` fonksiyonunu içerir. `palindrom` fonksiyonu, parametre olarak gelen listenin tersten ve düzden okunuşunun aynı olup olmadığını kontrol eder. Örneğin, "level" için `True`, "session" için `False` döner. Bu fonksiyon, `foldl` fonksiyonlarından birini kullanmak zorunludur.

## Kullanım

### `palindrom` Fonksiyonu

```haskell
palindrom :: Eq a => [a] -> Bool
```

Bu fonksiyon, parametre olarak verilen listenin palindrom olup olmadığını kontrol eder. Palindrom bir kelime veya cümle, tersten ve düzden okunduğunda aynı olan ifadelerdir. Örnek kullanım:

```haskell
-- Örnek
let kelime = "level"
print $ palindrom kelime
-- Çıktı: True
```

## Testler

Bu modül, `palindrom` fonksiyonunu rastgele seçilen 5 kelime ile test etmektedir. Bu testler, fonksiyonun doğru çalıştığını doğrulamak için kullanılabilir.

## Not

Bu modüldeki `palindrom` fonksiyonunun içinde, `foldl` fonksiyonlarından biri kullanılmıştır. Fonksiyonunuzu test etmek için örnek kelimeler ekleyebilir veya kendi testlerinizi oluşturabilirsiniz.
