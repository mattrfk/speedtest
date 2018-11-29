(defun isPrime(n)
	(loop for i from 2 to (- n 1)
				never (= 0 (mod n i))))

(defun findPrimes(n)
	(loop for i from 1 to n
				when (isPrime i)
				collect i))

(findPrimes (parse-integer 
					(nth 1 *posix-argv*)))
























;(print (primes (parse-integer 
;					(nth 1 *posix-argv*))))
