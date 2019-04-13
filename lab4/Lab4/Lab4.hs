{-# LANGUAGE GADTs #-}

--         ∞
-- fix f = ⊔ fⁱ ⊥
--        i=0
fix :: (a -> a) -> a
fix f = let x = f x in x

type Iden = String
type Σ = Iden -> Int

data Σ' = Normal Σ | Abort Σ

update :: Σ -> Iden -> Int -> Σ
update st v n v' = if v == v' then n else st v'

data Expr a where
  Skip   :: Expr Σ'
  Const  :: Int       -> Expr Int
  Var    :: String    -> Expr Int
  Eq     :: Expr Int  -> Expr Int -> Expr Bool
  Plus   :: Expr Int  -> Expr Int -> Expr Int
  While  :: Expr Bool -> Expr Σ'  -> Expr Σ'

class DomSem dom where 
  sem :: Expr dom -> Σ -> dom

instance DomSem Int where
  sem (Const a)    = \_ -> a
  sem (Var iden)   = \st -> st iden
  sem (Plus e1 e2) = \st -> (+) (sem e1 st) (sem e2 st)

instance DomSem Bool where
  sem b = undefined

(*.) :: (Σ -> Σ') -> Σ' -> Σ'
(*.) = undefined

(†.) :: (Σ -> Σ) -> Σ' -> Σ'
(†.) = undefined

(+.) :: (Σ -> Σ') -> Σ' -> Σ'
(+.) = undefined

instance DomSem Σ' where
  sem (While b p) = fix f
    where f :: (Σ -> Σ') -> (Σ -> Σ')
          f w st | sem b st  = undefined
                 | otherwise = undefined
  sem p           = undefined
