hanoi :: Integer -> a -> a -> a -> [(a, a)]
hanoi 0 _ _ _ = []
hanoi n start target extra = hanoi (n-1) start extra target ++ [(start, target)] ++ hanoi (n-1) extra target start
