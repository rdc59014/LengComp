{-# LANGUAGE TypeSynonymInstances #-}
{-# LANGUAGE FlexibleInstances #-}

data Expr a = Const Int
            | Mas (Expr Int)  (Expr Int)
            | Prod (Expr Int) (Expr Int)
            | Div (Expr Int) (Expr Int)
            | Op (Expr Int)
            | Menor (Expr Int) (Expr Int)
            | Igual (Expr Int) (Expr Int)
            | Cons Bool
            | Neg (Expr Bool)
            | Conj  (Expr Bool) (Expr Bool)
            deriving (Show)

class DomSem dom where 
   sem :: Expr dom -> dom

instance DomSem Int where
    sem (Const n) = n
    sem (Mas e e') = sem e + sem e'
    sem (Prod e e') = sem e * sem e'
    sem (Div e e') = div (sem e) (sem e')
    sem (Op e) = -(sem e)

instance DomSem Bool where
    sem (Cons e) = e
    sem (Conj e e') = (sem e) && (sem e')
    sem (Menor e e') = (sem e) < (sem e')
    sem (Igual e e') = (sem e) == (sem e')
    sem (Neg (e)) = not (sem e)
