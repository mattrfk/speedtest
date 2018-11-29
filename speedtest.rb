def speedTest(cmd)
	s = Time.now.to_f
	`#{cmd}`
	e = Time.now.to_f
	return e-s
end

def test(command)
	t = speedTest command + " " + NumPrimes
	print "#{command} \t #{t}\n"
end

NumPrimes = 50000.to_s

compile = "gcc -o c c.c"
clean = "rm ./c"

`#{compile}`

#test "mruby rb.rb"
test "ruby rb.rb"
test "python3 py.py"
test "pypy3 py.py"
test "node js.js"
test "./c" 
test "clisp cl.fas"
test "sbcl --script cl.cl"

`#{clean}`
