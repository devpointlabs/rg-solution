#13
def sum(a)
  a.inject(:+) 
end

#133
def rps
  o = %w(r p s)
  p "Enter choice(r, p, s)"
	m = {
    r: { r: :tie, p: :lose, s: :win},
		p: { r: :win, p: :tie, s: :lose},
		s: { r: :lose, p: :win, s: :tie }
	}
  m[gets.strip.to_sym][o.sample.to_sym].to_s
end

#54
def fizzbuzz n
  puts(n % 15 == 0 ? "FizzBuzz" : n % 5 == 0 ? "Buzz" : n % 3 == 0 ? "Fizz" : n.to_s)
end

#23
def mult(n,m)
  (n..m).step(n) { |i| p i }
end

#84
def cc(s,n)
  a = %(a b c d e f g h i j k l m n o p q r s t u v w x y z)
  s.split('').map { |l| a[a.index(l.downcase) - n] }.join('')
end

#27
def string_counter(s,x)
  puts s.scan(/(?=#{x})/).count
end

#55
def mixed(a)
  c = a.length
  x = a.flatten.shuffle
  m = []
  c.times { m << x.pop(2) }
  m
end

#107
def love_test(s,y)
  t = 0
  [s,y].each { |l| l.gsub!(' ','') }
  x = s.length + y.length
  s.split('').each { |c| y.split('').include?(c) && t += 1 }
  x / t
end

#54
def shopping_list(i)
  x = 1
  s = []
  i.split(" ").uniq.sort.each { |l| s << Hash[x += 1, l] }
  s
end

