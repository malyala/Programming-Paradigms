--map
--filter
--fold

k :: Int -> Float -> Float
k x y = (fromIntegral x) + y

guess = (+1) . (f 8)
	where f x y = x-y