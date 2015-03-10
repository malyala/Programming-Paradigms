data Family = Steve | Dawn | Scott | Keith | Dana
	deriving (Eq, Ord, Bounded, Enum, Show, Read)

data Education = Engineering | Math | Accounting | Programming | Commerce
	deriving (Eq, Ord, Bounded, Enum, Show, Read)

data Level =  Level Family Education
	deriving (Eq, Show, Read)