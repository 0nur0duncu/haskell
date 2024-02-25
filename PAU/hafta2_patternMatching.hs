sansli :: (Integral a) => a -> String
sansli 7 = "SANSLI SAYI 7!"
sansli x = "Uzgunum, sansiniz yok!"


soyle :: (Integral a) => a -> String
soyle 1 = "Bir"
soyle 2 = "Iki"
soyle 3 = "Uc"
soyle 4 = "Dort"
soyle x = "Bir ile Dort arasında degil"


faktoryel :: (Integral a) => a -> a 
faktoryel 0 = 1
faktoryel n = n * faktoryel (n - 1)

-- 5! = 5 * 4 * 3 * 2 * 1
-- 5! = 5 * 4!


-- Örüntü esleme yöntemi listeler ve çokuzlular üzerinde de kullanılabilmektedir. 
-- tuple-çokuzlu kullanımı
-- a  (2,3)
-- b  (4,7)


vektorTopla a b = (fst a + fst b, snd a + snd b)

vektorTopla2 (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)


--Listelerde örüntü esleme kullanılırken bas ve kuyrugu birbirinden ayırmak için : sembolleri kullanılır.
lsoyle [] = "Liste bos deneme bos liste"
lsoyle (x:[]) = "Listenin bir elemani var: " ++ show x
lsoyle (x:y:[]) = "Listenin iki elemani var: " ++ show x ++ " ve " ++ show y
lsoyle (x:y:_) = "Liste uzun. Ilk iki eleman: " ++ show x ++ " ve " ++ show y


toplam [] = 0
toplam (x:xs) = x + toplam xs



--işlev gövdesinde her şeyi tekrar kullanmak zorunda olduğumuzda, daha büyük bir kalıpla eşleşirken kendimizi tekrar etmekten kaçınmak için kalıplar olarak kullanırız.  kalıp için @ kullanırız
 
ilkharf "" = "bos string!" 
ilkharf tumu@(x:xs) =tumu ++ " kelimesinin ilk harfi " ++ [x] ++ " dir" 

-- Muhafızlar
--Örüntü esleme bir degerin bir biçime uygun oldugu dogrular
-- Muhafızlar ise degerlerin bazı özelliklerinin dogru veya yanlıslıgını test eder
--if yapısına benzerlik gösterir fakat daha okunur özelliktedir


--vkiSoyle :: (RealFloat a) => a -> a -> String 
-- vki (kg/m²) 

vkiSoyle vki
    | vki <= 18.5 = "Cok zayifsiniz"
    | vki <= 25 = "Normal kilodasiniz"
    | vki <= 30 = "Kilolusunuz, biraz dikkat!"
    | otherwise = "Tebrikler!, Sen bir balinasin :)"
  
vkiSoyle2 kilo boy
   | kilo / boy ^ 2 <= 18.5 = "Cok zayıfsiniz"
   | kilo / boy ^ 2 <= 25 = "Normal kilodasiniz"
   | kilo / boy ^ 2 <= 30 = "Kilolusunuz, biraz dikkat!"
   | otherwise = "Tebrikler!, Sen bir balinasin :)"

vkiSoyle3 kilo boy
   | vki <= zayif = "Cok zayifsiniz"
   | vki <= normal = "Normal kilodasiniz"
   | vki <= sisman = "Kilolusunuz, biraz dikkat!"
   | otherwise = "Tebrikler!, Sen bir balinasin :)"
   where vki = kilo / boy ^ 2
         (zayif, normal, sisman) = (18.5, 25.0, 30.0)
         --zayif = 18.5
         --normal = 25.0
         --sisman = 30.0
         

-- liste= [(2,5)]  l

vkiHesapla :: (RealFloat a) => [(a, a)] -> [a]  

vkiHesapla l = [vki k b | (k, b) <- l]
    where vki k b = k / b ^ 2
    
-- call vkiHesapla [(70,1.7)]    

----LET----
--where ifadesine benzer olan, yerel bir kapsamda ifade veya degerleri isimlere baglamaya yarayan bir ifadedir
--let baglamalar in ifade seklinde tanımlanır
--let içinde örüntü esleme kullanılabilir

silindir :: (RealFloat a) => a -> a -> a  
silindir r h = 
    let yanAlan = 2 * pi * r * h  
        ustAlan = pi * r ^2  
    in  yanAlan + 2 * ustAlan 

--uzun :: (RealFloat a) => [a] -> [a] 
--uzun l = 
  --  [u | let u = length l ]
    


vkiHesaplaInList l = [vki | (k, b) <- l, let vki = k / b ^ 2]





--4 * (let a = 9 in a + 1) + 2
--[let square x = x * x in (square 5, square 3, square 2)]

--zoot x y z = x * y + z


--CASE= Diger dillerdeki case ifadelerine benzerdir. Birden fazla seçenek içinden seçimi saglar.
{--
case expression of pattern -> result  
                   pattern -> result  
                   pattern -> result  --}
                   

listeTanimla :: [a] -> String  
listeTanimla xs = "Bu liste " ++ case xs of [] -> "bos."  
                                            [x] -> "tek elemanli list."   
                                            xs -> "birden cok elemanli list."  
                                            


  

--OZYINELEME---
--[3, 40, 5, 6]

--The Ord class is used for totally ordered datatypes.
maximum' :: (Ord a) => [a] -> a  
maximum' [] = error "bos listenin en büyügü"  
maximum' [x] = x  
maximum' (x:xs)   
    | x > maxTail = x  
    | otherwise = maxTail  
    where maxTail = maximum' xs 



maximum'' :: (Ord a) => [a] -> a  
maximum'' [] = error "bos listenin en büyügü"  
maximum'' [x] = x  
maximum'' (x:xs) = max x (maximum' xs) 



-- diğer örnekler
replicate' :: (Num i, Ord i) => i -> a -> [a]  
replicate' n x  
    | n <= 0    = []  
    | otherwise = x:replicate' (n-1) x
    
    
mytake :: (Num i, Ord i) => i -> [a] -> [a]  
mytake n _  
    | n <= 0   = []  
mytake _ []     = []  
mytake n (x:xs) = x : mytake (n-1) xs 



reverse' :: [a] -> [a]  
reverse' [] = []  
reverse' (x:xs) = reverse' xs ++ [x]  

--[4,5,6,90,12,45] 

repeat' :: a -> [a]  
repeat' x = x:repeat' x  


zip' :: [a] -> [b] -> [(a,b)]  
zip' _ [] = []  
zip' [] _ = []  
zip' (x:xs) (y:ys) = (x,y):zip' xs ys  


--elem 5 [5,6,7,8,0]
myelem :: (Eq a) => a -> [a] -> Bool  
myelem a [] = False  
myelem a (x:xs)  
    | a == x    = True  
    | otherwise = a `myelem` xs  
    


--haskell type Classes
--factional kesirli   (Float, Double)
--RealFrac kesirli   (Float, Double)








my_length :: [Integer] -> Integer
my_length [] = 0
my_length (_:xs) = 1 + my_length xs 