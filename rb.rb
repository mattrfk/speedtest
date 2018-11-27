def isPrime(n)
	for x in (2..n-1)
		return false if n % x == 0
	end
	return true
end

def findPrimes(n)
	primes = []
	for x in (1..n)
		primes.push(x) if isPrime x
	end
	return primes
end

findPrimes(ARGV[0].to_i)
