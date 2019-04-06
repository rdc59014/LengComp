{-# LANGUAGE TypeSynonymInstances #-}
{-# LANGUAGE FlexibleInstances #-}

data Expr a = Const Int
            | Var Iden
            | Mas  (Expr Int) (Expr Int)
            | Cons Bool
            | Conj (Expr Bool) (Expr Bool)
            | Menor (Expr Int) (Expr Int)
            deriving(Show)

class DomSem dom where 
    sem :: Expr dom -> State -> dom

instance DomSem Int where
    sem (Const n) state = n
    sem (Var e) state = state e
    sem (Mas e e') state = (sem e state) + (sem e' state)

instance DomSem Bool where
    sem (Cons e) state = e
    sem (Conj e e') state = (sem e state) && (sem e' state)
    sem (Menor e e') state = (sem e state) < (sem e' state)

type Iden = String
type State = Iden -> Int

state::State
state "x" = 3
state "y" = 2
state _ = 0

