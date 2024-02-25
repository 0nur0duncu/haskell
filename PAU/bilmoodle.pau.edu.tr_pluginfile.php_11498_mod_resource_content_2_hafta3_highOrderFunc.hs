--Haskell hafta 3--- Dr. Öğr. Üyesi İbrahim KÖK --
{- Körileme/currying: birden fazla argümanı alan bir fonksiyonu, her biri tek bir argüman alan bir dizi fonksiyona dönüştürme tekniğidir.
Haskell'deki her fonksiyon resmi olarak yalnızca bir parametre alır.
max 4 5

(max 4) 5
önce bir parametre alan ve hangisinin daha büyük olduğuna bağlı olarak 4 veya bu parametreyi döndüren bir fonsiyon oluşturur. Daha sonra bu fonksiyona 5 uygulanır ve bu fonk istediğimiz sonucu verir.
-}

multThree :: (Num a) => a -> a -> a -> a
multThree x y z = x * y * z


multThree1 :: (Num a) => a -> (a -> (a -> a))
multThree1 x y z = x * y * z

--multThree 3 5 9 or ((multThree 3) 5) 9


--

{- 
Çok az parametresi olan fonksiyonları çağırarak, anında yeni fonksiyonlar oluşturabiliriz.

let multTwoWithNine = multThree 9
multTwoWithNine 2 3

((multThree 9) 2) 10


let multWithEighteen = multTwoWithNine 2
multWithEighteen 10

-}
--compare 2 4
--return as LT :Less Than, GT Greater Than, EQ Equal



compareWithHundred :: (Num a, Ord a) => a -> Ordering  
compareWithHundred x = compare 100 x 

compareWithHundred1 :: (Num a, Ord a) => a -> Ordering  
compareWithHundred1 = compare 100 


--Ordering veri türü iki nesnenin kesin sırasını belirlemek için tek bir karşılaştırmaya izin verir

--Infix fonksiyonları, bölümler kullanılarak kısmen de uygulanabilir. Bir infix işlevini bölümlemek için, onu parantez içine alın ve yalnızca bir tarafta bir parametre sağlayın. Bu, bir parametre alan ve ardından bunu bir işlenenin eksik olduğu tarafa uygulayan bir işlev oluşturur.
divideByTen :: (Floating a) => a -> a  
divideByTen = (/10) 

isUpperAlphanum :: Char -> Bool  
isUpperAlphanum = (`elem` ['A'..'Z'])

-- call isUpperAlphanum 'b'

----Yüksek derecelei fonksiyonlar--
--Fonksiyonlar, fonksiyonları parametre olarak alabilir ve ayrıca fonksiyonlar döndürebilir.

--Tip tanımlamada parantez ihtiyacı vardır 

applyTwice :: (a -> a) -> a -> a
applyTwice f x = f (f x)



{--
applyTwice (+3) 10  = 10 + 3 + 3
16
applyTwice (++ " HAHA") "HEY" 
"HEY HAHA HAHA"
applyTwice (" HAHA" ++) "HEY"
--}


--zipWith: Parametre olarak bir işlevi ve iki listeyi alır ve ardından işlevi karşılık gelen öğeler arasına uygulayarak iki listeyi birleştirir.

myzipWith :: (a -> b -> c) -> [a] -> [b] -> [c]
myzipWith _ [] _ = []
myzipWith _ _ [] = []
myzipWith f (x:xs) (y:ys) = f x y : myzipWith f xs ys


{-
myzipWith (+) [6,3,2,1] [7,3,1,5]
myzipWith max [6,3,2,1] [7,3,1,5]
myzipWith (++) ["foo ", "bar ", "baz "] ["fighters","hoppers", "aldrin"]
myzipWith (*) (replicate 5 2) [1..]

myzipWith (*) [1,2,3][3,2,2]

myzipWith (myzipWith (*)) [[1,2,3],[3,5,6],[2,3,4]] ,[[3,2,2],[3,4,5],[5,4,3]]

-}
--map ve filter Fonksiyonları
--map bir işlev/fonk ve bir liste alır ve bu işlevi/fonklistedeki her öğeye uygulayarak yeni bir liste oluşturur.

map' :: (a -> b) -> [a] -> [b]  
map' _ [] = []  
map' f (x:xs) = f x : map f xs  




--filter, bir karşılaştırma ifadesi (predicate) alan bir işlevdir (bir predicate bir şeyin doğru olup olmadığını söyleyen bir işlevdir(bir boolean değeri döndüren bir işlev) ve bir liste ve ardından p'yi(işlevi) karşılayan öğelerin listesini döndürür.

filter' :: (a -> Bool) -> [a] -> [a]  
filter' _ [] = []  
filter' p (x:xs)   
    | p x       = x : filter' p xs  
    | otherwise = filter' p xs  


--let notNull x = not (null x) in filter notNull [[1,2,3],[],[3,4,5],[2,2],[],[],[]]


--filter (`elem` ['a']) "Pamukkale"


--we'll be dealing with Collatz sequences.
chain :: (Integral a) => a -> [a]
chain 1 = [1]
chain n
    | even n = n:chain (n `div` 2)
    | odd n = n:chain (n*3 + 1)


--map chain [1..5]
numLongChains :: Int
numLongChains = length (filter' isLong (map' chain [1..5]))
    where isLong xs = length xs > 7
    

{--Lambda λ \
\ parametreler -> fonksiyon gövdesi
fonksiyon ismi verden daha az kodla düzenli kod yazma 

--}

--sum,product,elem
numLongChainsL :: Int
numLongChainsL = length (filter (\xs -> elem 2 xs) (map chain [1..5]))

--Normal fonk gibi, lambdalar da herhangi bir sayıda parametre alabilir:sum
--zipWith (\a b -> (a * 30 + 3) / b) [5,4,3,2,1]
--map (\(a,b) -> a + b) [(1,2),(3,5),(6,3),(2,6),(2,5)]

notNullL :: Int
notNullL = length (filter (\xs ->  length xs < 1 )([[1,2,3],[],[3,4,5],[2,2],[],[],[]]))


--Fold  foldl - foldr ****
--fold:bileşen parçalarını özyinelemeli olarak işleyerek işlem sonuçlarını birleştirerek bir dönüş değeri oluşturan bir üst düzey fonksiyon ailesini ifade eder.
-- fold takes a binary function, a starting value (I like to call it the ACCumulator-toplayıcı) and a list
--0 is the starting value and xs is the list to be folded up

{-- 

foldl: Listeyi sol taraftan yukarı katlar.
foldr: Sağ katlama, sol katla benzer şekilde çalışır, yalnızca toplayıcı, değerleri sağdan yer.

f :: a -> a -> a
--[a1,a2,a3,a4]
Left fold  : f (f (f (f a1 a2) a3) a4) 
Right fold :: f( a1 (f a2 (f a3 a4)))

foldl1 and foldr1 için açık bir başlangıç değeri sağlamanız gerekmez.

--}




sum' :: (Num a) => [a] -> a  
sum' xs = foldl (\acc x -> acc + x) 0 xs 

sum'' :: (Num a) => [a] -> a
sum'' = foldl (+) 0 

elem' :: (Eq a) => a -> [a] -> Bool  
elem' y ys = foldl (\acc x -> if x == y then True else acc) False ys 

map'' :: (a -> b) -> [a] -> [b]  
map'' f xs = foldr (\x acc -> f x : acc) [] xs 

reverse' :: [a] -> [a]
reverse' = foldl (\acc x -> x : acc) []

filter'' :: (a -> Bool) -> [a] -> [a]
filter'' p = foldr (\x acc -> if p x then x : acc else acc) []

--foldl1 and foldr1 için açık bir başlangıç değeri sağlamanız gerekmez.
maximum' :: (Ord a) => [a] -> a
maximum' = foldr1 (\x acc -> if x > acc then x else acc)

product' :: (Num a) => [a] -> a
product' = foldr1 (*)

head' :: [a] -> a
head' = foldr1 (\x _ -> x)

last' :: [a] -> a
last' = foldl1 (\_ x -> x)

