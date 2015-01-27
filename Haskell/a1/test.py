def isPerfect(start, n):
    if(n < 1):
        return False        
    total = isPerfect(start, n-1)
    if(start % n == 0):
        total = total + n
    if(start == n):
        if(total == (start * 2)):
            return True
        else:
            return False
    return total

def findFactor(start, n):
    if(n < 1):
        return 0
    else:
        past = findFactor(n-1)
        if(start % n == 0):
            past = past + n
        return past
    


def isPerfect(n):
    if(n < 1):
        return
    
    
    
def test():
    t1 = isPerfect(28, 28)
    print (t1)
    t2 = isPerfect(10, 10)
    print (t2)
    t3 = isPerfect((-4),(-4))
    print (t3)
    t4 = isPerfect(0, 0)
    print (t4)
    t5 = isPerfect(6, 6)
    print (t5)
    t6 = isPerfect(7,7)
    print (t6)

def intSqrt(n):
    if(n < 0):
        print("ERROR: Num is negative")
        return 0
    else:
        return (n * n)
    
def hasFactor(n, low, high):
    if(low > high):
        return False
    elif(n % low == 0):
        return True
    else:
        hasFactor(n, (low+1), high)


def isPrime(n):
    if(n <= 1):
        return False
    else:
        result =  hasFactor(n, 2, intSqrt(n))
        if(result == True):
            return False
        else:
            return True

def test2():
    t1 = isPrime(6)
    print(t1)
    t2 = isPrime(7)
    print(t2)

def nthTrue(n):
    #wants the value when it returns true,
    
    


    

