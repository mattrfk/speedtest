import sys

def isPrime(n):
    for x in range(2,n-1):
        if n % x is 0: 
            return False
    return True

def findPrimes(n):
    primes = []
    for x in range(1, n):
        if isPrime(x): primes.append(x)
    return primes

findPrimes(int(sys.argv[1]))
