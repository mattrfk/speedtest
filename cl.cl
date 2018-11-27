(defun isPrime(n)
	(loop for i from 2 to (- n 1)
				never (= 0 (mod n i))))

(defun primes(n)
	(loop for i from 1 to n
				when (isPrime i)
				collect i))

(primes (parse-integer 
					(car *args*)))
