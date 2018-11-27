#include<stdio.h>
#include<stdlib.h>

int isPrime(int n) {
	for(int i = 2; i < n-1; i++) {
		if( n % i == 0){
			return 0;
		}
	}
	return 1;
}

int *findPrimes(int n){
	int *primes = malloc(n/2);
	int index = 0;

	for(int i = 1; i <= n; i++) {
		if(isPrime(i)) {
			primes[index] = i;
			++index;
		}
	}
	return primes;
}

int main(int argc, char **argv){
	int n = atoi(argv[1]);
	int *primes = findPrimes(n);

	free(primes);
	return 0;
}
