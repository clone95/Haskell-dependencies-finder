import System.IO
import Data.Char
import Data.List (sortBy)
import Data.Ord (comparing)

data Packet = Packet {id::Int, dep::Int} deriving (Show,Eq,Ord)

main = do 
 lettura_deps <- readFile "diependencies.txt"
 let deps = [Pacchetto (read((words x)!!0)::Int) (read((words x)!!1)::Int) | x <- (lines lettura_deps)]
 lettura_inst <- readFile "installed.txt"
 let lista_inst = words lettura_inst
 let lista_rich = words lettura_rich
 let l_installati = map converti lista_inst
 let l_richiesti = map converti lista_rich
 print deps
 print l_installati
 print l_richiesti

maxf f (x:xs) = let maxr = maxf f xs
                in if (f maxr) > (f x) then maxr else x

removeDuplicates :: Eq a => [a] -> [a]
removeDuplicates = rdHelper []
    where rdHelper seen [] = seen
          rdHelper seen (x:xs)
              | x `elem` seen = rdHelper seen xs
              | otherwise = rdHelper (seen ++ [x]) xs
converti x = read x ::Int


dipendenti_da_16 installati lista_dip = [ x | x <- installati, (dipende x lista_dip) == True,  ]

dipende _ [] = False
dipende pacchetto (r:rs) = if (dip pacchetto r) == True then True else dipende pacchetto rs

dip pacc dipendenza = if (pacc == (dep dipendenza)) then True else False