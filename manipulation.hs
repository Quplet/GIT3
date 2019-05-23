reverse' xs y = if odd y then reverse xs else xs

boustrophedon xs = boustrophedon' xs 1
boustrophedon' (xs:ys) z = (reverse' xs z):(boustrophedon' ys (z+1)) ++ []
boustrophedon' [] z = []

split (a:b:c:d:e:f:g:h:i:j:k:l:m:n:o:p:q:r:s:t:xs) = a:b:c:d:e:f:g:h:i:j:k:l:m:n:o:p:q:r:s ++ [t] ++ split xs
split xs = xs
