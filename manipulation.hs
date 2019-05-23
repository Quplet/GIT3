reverse' xs y = if odd y then reverse xs else xs

boustrophedon xs = boustrophedon' xs 1
boustrophedon' (xs:ys) z = (reverse' xs z):(boustrophedon' ys (z+1)) ++ []
boustrophedon' [] z = []
