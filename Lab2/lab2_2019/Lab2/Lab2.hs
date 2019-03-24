{-# LANGUAGE TypeSynonymInstances #-}
{-# LANGUAGE FlexibleInstances #-}

data Expr a = Const Int
            | Mas   (Expr a) (Expr a)
            | Conj  (Expr a) (Expr a)

class DomSem dom where 
  sem :: Expr dom -> dom

instance DomSem Int where
  sem x = undefined

instance DomSem Bool where
  sem x = undefined

type Iden = String
type State = Iden -> Int

instance DomSem (State -> Int) where 
  sem x = undefined

instance DomSem (State -> Bool) where
  sem x = undefined
