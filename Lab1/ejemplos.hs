data Trafficlight = Red 
                  | Yellow
                  | Green
                  deriving(Show)

instance Eq Trafficlight where
    Red == Red = True
    Green == Green = True
    Yellow == Yellow = True
    _ == _ = False


