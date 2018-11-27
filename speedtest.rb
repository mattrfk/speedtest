def speedTest(cmd)
	s = Time.now.to_f
	`#{cmd}`
	e = Time.now.to_f
	return e-s
end

compile = "gcc -o c c.c"
run = "./c "
clean = "rm ./c"

`#{compile}`

NumPrimes = 50000.to_s
def test(command)
	t = speedTest command + " " + NumPrimes
	print "#{command} \t #{t}\n"
end

#test "mruby rb.rb"
test "ruby rb.rb"
test "python3 py.py"
#test "python py.py"
test "node js.js"
test "./c" 
test "clisp cl.fas"

`#{clean}`
