function isPrime(n){
	for(let i = 2; i < n-1; i++){
		if( n % i === 0) { 
			return false 
		}
	}
	return true
}

function findPrimes(n) {
	let primes = []
	for(let i = 1; i <= n; i++){
		if(isPrime(i)) { 
			primes.push(i) 
		} 
	}
	return primes
}

let p = findPrimes(process.argv[2])

