{-# LANGUAGE TypeSynonymInstances #-}
{-# LANGUAGE FlexibleInstances #-}

data Expr a = Const Int
            | Mas   (Expr Int)  (Expr Int)
            | Conj  (Expr Bool) (Expr Bool)
            | Cons Bool
            deriving (Show)

class DomSem dom where 
   sem :: Expr dom -> dom

instance DomSem Int where
   sem (Const n) = n
   sem (Mas (e) (e')) = sem e + sem e'

instance DomSem Bool where
--    sem (Cons True) = True
    sem (Conj (e) (e')) = sem e && sem e'



