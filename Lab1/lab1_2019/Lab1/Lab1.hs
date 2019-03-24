{-# LANGUAGE TypeSynonymInstances #-}
{-# LANGUAGE FlexibleInstances #-}

data Expr a = Const Int
            | Mas   (Expr Int)  (Expr Int)
            | Conj  (Expr Bool) (Expr Bool)
            | Cons Bool
            | Neg (Expr Bool)
            deriving (Show)

class DomSem dom where 
   sem :: Expr dom -> dom

instance DomSem Int where
   sem (Const n) = n
   sem (Mas (e) (ep)) = sem e + sem ep

instance DomSem Bool where
    sem (Cons False) = False
    sem (Cons True) = True
    sem (Conj (e) (ep)) = sem (e) && sem (ep) 
